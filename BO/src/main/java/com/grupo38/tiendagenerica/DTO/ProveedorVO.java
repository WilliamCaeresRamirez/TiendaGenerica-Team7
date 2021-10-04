package com.grupo38.tiendagenerica.DTO;

import java.io.Serializable;

public class ProveedorVO implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private Integer codigo_proveedor;
	private Double iva_compra;
	private Integer nit_proveedor;
	private String nombre_producto;
	private Double precio_compra;
	private Double precio_venta;
	
	public Integer getCodigo_proveedor() {
		return codigo_proveedor;
	}
	public void setCodigo_proveedor(Integer codigo_proveedor) {
		this.codigo_proveedor = codigo_proveedor;
	}
	public Double getIva_compra() {
		return iva_compra;
	}
	public void setIva_compra(Double iva_compra) {
		this.iva_compra = iva_compra;
	}
	public Integer getNit_proveedor() {
		return nit_proveedor;
	}
	public void setNit_proveedor(Integer nit_proveedor) {
		this.nit_proveedor = nit_proveedor;
	}
	public String getNombre_producto() {
		return nombre_producto;
	}
	public void setNombre_producto(String nombre_producto) {
		this.nombre_producto = nombre_producto;
	}
	public Double getPrecio_compra() {
		return precio_compra;
	}
	public void setPrecio_compra(Double precio_compra) {
		this.precio_compra = precio_compra;
	}
	public Double getPrecio_venta() {
		return precio_venta;
	}
	public void setPrecio_venta(Double precio_venta) {
		this.precio_venta = precio_venta;
	}
	
	

}
