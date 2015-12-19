package com.team5.zhaochao.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.team5.util.PageUtil;
import com.team5.zhaochao.bean.Product;
import com.team5.zhaochao.service.impl.ProServiceImpl;

public class ProServlet extends HttpServlet {

	ProServiceImpl psi = new ProServiceImpl();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getParameter("method");
		if (method.equals("Add")) {
			doProAdd(request, response);
		} else if (method.equals("Show")) {
			doProShow(request, response);
		} else if (method.equals("remove")) {
			doProDelete(request, response);
		} else if (method.equals("update")) {
			doProUpdate(request, response);
		} else if (method.equals("updateForm")) {
			doProUpdateForm(request, response);
		} else if (method.equals("showPage")) {
			doProShowPage(request, response);
		} else if (method.equals("AddWithFile")) {
			doProAddWithFile(request, response);
		}

	}

	// 商品添加
	public void doProAdd(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		// 从jsp中取出值
		int pro_id = Integer.parseInt(request.getParameter("serialNumber"));
		String pro_name = request.getParameter("name");
		String pro_brand = request.getParameter("brand");
		String pro_version = request.getParameter("model");
		Long pro_price = Long.parseLong(request.getParameter("price"));
		String pro_image = request.getParameter("picture");
		String pro_introduce = request.getParameter("description");

		// 设置product实体的属性值
		Product pro = new Product();
		pro.setPro_id(pro_id);
		pro.setPro_name(pro_name);
		pro.setPro_brand(pro_brand);
		pro.setPro_version(pro_version);
		pro.setPro_price(pro_price);
		pro.setPro_image(pro_image);
		pro.setPro_introduce(pro_introduce);
		boolean flag = psi.proAdd(pro);
		if (flag == true) {
			request.getRequestDispatcher("admin/manageProduct.jsp").forward(
					request, response);
		} else {
			out.print("添加商品失败");
		}

		out.close();
	}

	// 修改商品
	public void doProUpdate(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		// DiskFileItemFactory FileItem 对象的工厂,可以设定缓冲区大小和存放临时文件目录
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// 设置内存缓冲区的大小为11k
		factory.setSizeThreshold(11 * 1024);
		// 指定保存上传文件的临时文件夹,自己定义
		File f = new File("F://tempDirectory");
		// setRepository方法用于设置当上传文件尺寸大于setSizeThreshold方法设置的临界值时，将文件以临时文件形式保存在磁盘上的存放目录。
		factory.setRepository(f);
		// 创建ServletFileUpload的实例
		ServletFileUpload sfu = new ServletFileUpload(factory);
		sfu.setHeaderEncoding("UTF-8");
		// 设置单个上传文件的最大值为6M,该数据以字节为单位
		sfu.setFileSizeMax(6000 * 1024);
		int old_pro_id = Integer.parseInt(request.getParameter("old_pro_id"));
		try {
			// 得到所有的输入项(每个控件)的集合
			List<FileItem> items = sfu.parseRequest(request);
			// 创建一个product对象
			Product pro = new Product();
			for (FileItem fileItem : items) {
				// isFormField()为true表示当前控件是普通控件，为false表示它是上传控件
				if (fileItem.isFormField()) {
					// 获取控件的名称，即每个请求参数的名称
					String name = fileItem.getFieldName();
					// 获取控件的值，加UTF-8防止中文乱码
					String value = fileItem.getString("UTF-8");
					// 对控件名即请求参数进行判断，依次封装到一个Product对象的属性中
					if (name.equals("serialNumber")) {
						pro.setPro_id(Integer.parseInt(value));
					} else if (name.equals("name")) {
						pro.setPro_name(value);
					} else if (name.equals("brand")) {
						pro.setPro_brand(value);
					} else if (name.equals("model")) {
						pro.setPro_version(value);
					} else if (name.equals("price")) {
						pro.setPro_price(Long.parseLong(value));
					} else if (name.equals("description")) {
						pro.setPro_introduce(value);
					}
				} else {
					// 分析上传文件的数据
					// 获取上传文件的名称
					String fileName = fileItem.getName();
					// 获取上传文件的文件类型
					String contentType = fileItem.getContentType();
					// 获取上传文件的大小
					long size = fileItem.getSize();
					// 获取当前web应用根目录的绝对路径(Tomcat服务器部署工程的绝对路径)
					String path = this.getServletContext().getRealPath("/");
					// 获取保存上传文件的全路径
					String filePath = path + "images/" + fileName;
					// 获取封装了上传文件数据的输入流
					InputStream is = fileItem.getInputStream();
					// 输出流
					OutputStream os = new FileOutputStream(filePath);
					// 输出文件
					int len = 0;
					byte[] b = new byte[1024];
					while ((len = is.read(b)) != -1) {
						os.write(b, 0, len);
					}
					// 关闭流
					os.close();
					is.close();
					// 上传成功后,删除临时文件
					fileItem.delete();
					// 设置图片保存的相对路径,这是要存到数据库中的
					pro.setPro_image("images/" + fileName);
				}
			}
			//调用业务类中添加商品的方法
			boolean flag = psi.proUpdate(pro, old_pro_id);
			if (flag == true) {
				request.getRequestDispatcher("zcProServlet?method=showPage&pageNo=1").forward(
						request, response);
			} else {
				out.print("商品修改失败");
			}
			out.close();
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
	

	// 商品展示
	public void doProShow(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		List<Product> list = psi.proShow();
		request.setAttribute("proList", list);
		request.getRequestDispatcher("admin/manageProduct.jsp").forward(
				request, response);
		out.close();
	}

	// 商品删除
	public void doProDelete(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int pro_id = Integer.parseInt(request.getParameter("pro_id"));
		boolean flag = psi.proDelete(pro_id);
		if (flag == true) {
			request.getRequestDispatcher("zcProServlet?method=showPage&pageNo=1").forward(
					request, response);
		} else {
			out.print("删除失败!");
		}
		out.close();
	}

	// 修改商品前传值到表单中
	public void doProUpdateForm(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 返回的是修改前的编号
		int pro_id = Integer.parseInt(request.getParameter("pro_id"));
		// 返回修改前的信息到表单中
		Product pro = psi.proUpdateForm(pro_id);
		request.setAttribute("pro", pro);
		request.getRequestDispatcher("admin/updateProduct.jsp").forward(
				request, response);

	}

	// 根据分页来显示数据
	public void doProShowPage(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		int pageNo = pageNo = Integer.parseInt(request.getParameter("pageNo"));
		// 设置每页显示八条数据
		PageUtil page = psi.getPage(pageNo, 5);
		page.setPageNo(pageNo);
		request.setAttribute("page", page);
		request.getRequestDispatcher("admin/manageProduct.jsp").forward(
				request, response);
		;
	}

	// 使用commons.fileupload和commons.io来实现上传图片的添加商品方法，使用时要在form处添加属性enctype="multipart/form-data"
	public void doProAddWithFile(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		// DiskFileItemFactory FileItem 对象的工厂,可以设定缓冲区大小和存放临时文件目录
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// 设置内存缓冲区的大小为11k
		factory.setSizeThreshold(11 * 1024);
		// 指定保存上传文件的临时文件夹,自己定义
		File f = new File("F://tempDirectory");
		// setRepository方法用于设置当上传文件尺寸大于setSizeThreshold方法设置的临界值时，将文件以临时文件形式保存在磁盘上的存放目录。
		factory.setRepository(f);
		// 创建ServletFileUpload的实例
		ServletFileUpload sfu = new ServletFileUpload(factory);
		sfu.setHeaderEncoding("UTF-8");
		// 设置单个上传文件的最大值为6M,该数据以字节为单位
		sfu.setFileSizeMax(6000 * 1024);
		try {
			// 得到所有的输入项(每个控件)的集合
			List<FileItem> items = sfu.parseRequest(request);
			// 创建一个product对象
			Product pro = new Product();
			for (FileItem fileItem : items) {
				// isFormField()为true表示当前控件是普通控件，为false表示它是上传控件
				if (fileItem.isFormField()) {
					// 获取控件的名称，即每个请求参数的名称
					String name = fileItem.getFieldName();
					// 获取控件的值，加UTF-8防止中文乱码
					String value = fileItem.getString("UTF-8");
					// 对控件名即请求参数进行判断，依次封装到一个Product对象的属性中
					if (name.equals("serialNumber")) {
						pro.setPro_id(Integer.parseInt(value));
					} else if (name.equals("name")) {
						pro.setPro_name(value);
					} else if (name.equals("brand")) {
						pro.setPro_brand(value);
					} else if (name.equals("model")) {
						pro.setPro_version(value);
					} else if (name.equals("price")) {
						pro.setPro_price(Long.parseLong(value));
					} else if (name.equals("description")) {
						pro.setPro_introduce(value);
					}
				} else {
					// 分析上传文件的数据
					// 获取上传文件的名称
					String fileName = fileItem.getName();
					// 获取上传文件的文件类型
					String contentType = fileItem.getContentType();
					// 获取上传文件的大小
					long size = fileItem.getSize();
					// 获取当前web应用根目录的绝对路径(Tomcat服务器部署工程的绝对路径)
					String path = this.getServletContext().getRealPath("/");
					// 获取保存上传文件的全路径
					String filePath = path + "images/" + fileName;
					// 获取封装了上传文件数据的输入流
					InputStream is = fileItem.getInputStream();
					// 输出流
					OutputStream os = new FileOutputStream(filePath);
					// 输出文件
					int len = 0;
					byte[] b = new byte[1024];
					while ((len = is.read(b)) != -1) {
						os.write(b, 0, len);
					}
					// 关闭流
					os.close();
					is.close();
					// 上传成功后,删除临时文件
					fileItem.delete();
					// 设置图片保存的相对路径,这是要存到数据库中的
					pro.setPro_image("images/" + fileName);
				}
			}
			//调用业务类中添加商品的方法
			boolean flag = psi.proAddWithFile(pro);
			if (flag == true) {
				request.getRequestDispatcher("zcProServlet?method=showPage&pageNo=1").forward(
						request, response);
			} else {
				out.print("添加商品失败");
			}

			out.close();
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}
