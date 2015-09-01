package cn.edu.cup.graphi.business;

import java.util.HashMap;


import java.util.Map;

import cn.edu.cup.tools.CoordinateConversion;

public class Point {

	Integer id ;
	String nodeName ;
	Integer type ;
	String typeName ;
	Double x_location ;
	Double y_location ;
	Double x_location_geo ;
	Double y_location_geo;
	
	/**
	 * 经度
	 */
	double longitude;
	/**
	 * 纬度
	 */
	double latitude;
	int basicid;
	public Point(Integer id, String nodeName, Integer type, String typeName,
			Double x_location, Double y_location, Double x_location_geo,
			Double y_location_geo, double longitude, double latitude,int basicid) {
		super();
		this.id = id;
		this.nodeName = nodeName;
		this.type = type;
		this.typeName = typeName;
		this.x_location = x_location;
		this.y_location = y_location;
		this.x_location_geo = x_location_geo;
		this.y_location_geo = y_location_geo;
		this.longitude = longitude;
		this.latitude = latitude;
		this.basicid=basicid;
	}
	public int getBasicid() {
		return basicid;
	}
	public void setBasicid(int basicid) {
		this.basicid = basicid;
	}
	public void getLatLonFromGeo(){
		double a[]=CoordinateConversion.GaussProjInvCal(this.x_location_geo,this.y_location_geo);
		this.latitude=a[0];
		this.longitude=a[1];
	}
	public void getGeoFromLatLon(){
		double temp[] = CoordinateConversion.GaussProjCal(this.latitude, this.longitude);
		this.x_location_geo=temp[0];
		this.y_location_geo=temp[1];
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNodeName() {
		return nodeName;
	}
	public void setNodeName(String nodeName) {
		this.nodeName = nodeName;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public Double getX_location() {
		return x_location;
	}
	public void setX_location(Double x_location) {
		this.x_location = x_location;
	}
	public Double getY_location() {
		return y_location;
	}
	public void setY_location(Double y_location) {
		this.y_location = y_location;
	}
	public Double getX_location_geo() {
		return x_location_geo;
	}
	public void setX_location_geo(Double x_location_geo) {
		this.x_location_geo = x_location_geo;
	}
	public Double getY_location_geo() {
		return y_location_geo;
	}
	public void setY_location_geo(Double y_location_geo) {
		this.y_location_geo = y_location_geo;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
}
