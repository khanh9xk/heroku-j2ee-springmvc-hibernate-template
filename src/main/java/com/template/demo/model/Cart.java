package com.template.demo.model;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;


/**
 * Entity to map the User object
 * 
 * @author nicolatassini
 *
 */
@Entity
public class Cart extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 5344160974873744816L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    	private Integer id;

	@Column
	private Integer productTypeId;

	@Column
	private Integer userId;

	@Column
   	private Integer quantity;
	
	@Transient
	private String brand;
	
	@Transient
	private String category;
	
	@Transient
	private String image;
	
	@Transient
	private BigDecimal price;
	
	@Transient
	private String type;
	
	@Transient
	private Integer stock;
	
	@Transient
	private String productName;

	
	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getProductTypeId() {
		return productTypeId;
	}

	public void setProductTypeId(Integer productTypeId) {
		this.productTypeId = productTypeId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
}
