package com.techouts.pojo;

public class CategoryPojo {
private String id;
private String name;
private String super_category;
private String description;
private String summary;
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getSuper_category() {
	return super_category;
}
public void setSuper_category(String super_category) {
	this.super_category = super_category;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getSummary() {
	return summary;
}
public void setSummary(String summary) {
	this.summary = summary;
}
@Override
public String toString() {
	return "CategoryPojo [id=" + id + ", name=" + name + ", super_category="
			+ super_category + ", description=" + description + ", summary="
			+ summary + "]";
}

}
