package com.template.demo.model;

import javax.persistence.*;
import java.io.Serializable;


/**
 * Entity to map the User object
 * 
 * @author nicolatassini
 *
 */
@Entity
public class Image extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 5344160974873744816L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    	private Integer id;

	@Column
    	private Integer productId;

	@Column
	private Integer productTypeId;

	@Column(length = 20000)
	private String link;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public Integer getProductTypeId() {
		return productTypeId;
	}

	public void setProductTypeId(Integer productTypeId) {
		this.productTypeId = productTypeId;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}
}
