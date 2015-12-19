package com.team5.liuwei.bean;

public class Product {
    private int pro_id;
    private String pro_name;
    private String pro_brand;
    private String pro_version;
    private double pro_price;
    private String pro_image;
    private String pro_introduce;
    
	public Product() {
		super();
	}

	public Product(int proId, String proName, String proBrand,
			String proVersion, double proPrice, String proImage,
			String proIntroduce) {
		super();
		pro_id = proId;
		pro_name = proName;
		pro_brand = proBrand;
		pro_version = proVersion;
		pro_price = proPrice;
		pro_image = proImage;
		pro_introduce = proIntroduce;
	}

	public int getPro_id() {
		return pro_id;
	}

	public void setPro_id(int proId) {
		pro_id = proId;
	}

	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String proName) {
		pro_name = proName;
	}

	public String getPro_brand() {
		return pro_brand;
	}

	public void setPro_brand(String proBrand) {
		pro_brand = proBrand;
	}

	public String getPro_version() {
		return pro_version;
	}

	public void setPro_version(String proVersion) {
		pro_version = proVersion;
	}

	public double getPro_price() {
		return pro_price;
	}

	public void setPro_price(double proPrice) {
		pro_price = proPrice;
	}

	public String getPro_image() {
		return pro_image;
	}

	public void setPro_image(String proImage) {
		pro_image = proImage;
	}

	public String getPro_introduce() {
		return pro_introduce;
	}

	public void setPro_introduce(String proIntroduce) {
		pro_introduce = proIntroduce;
	}
    
	
    
}
