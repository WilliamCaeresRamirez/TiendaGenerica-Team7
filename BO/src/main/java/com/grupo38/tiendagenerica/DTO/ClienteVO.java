package com.grupo38.tiendagenerica.DTO;

import java.io.Serializable;

public class ClienteVO implements Serializable {
	
//	Identificar unico de las clases entidades
	private static final long serialVersionUID = 1L;
	
	private Integer nit_cliente;
	public String direccion_cliente;
	public String nombre_proveedor;
	public Integer telefono_favorito;
	public String ciudad;
	
	
	public Integer getNit_cliente() {
		return nit_cliente;
	}
	public void setNit_cliente(Integer nit_cliente) {
		this.nit_cliente = nit_cliente;
	}
	public String getDireccion_cliente() {
		return direccion_cliente;
	}
	public void setDireccion_cliente(String direccion_cliente) {
		this.direccion_cliente = direccion_cliente;
	}
	public String getNombre_proveedor() {
		return nombre_proveedor;
	}
	public void setNombre_proveedor(String nombre_proveedor) {
		this.nombre_proveedor = nombre_proveedor;
	}
	public Integer getTelefono_favorito() {
		return telefono_favorito;
	}
	public void setTelefono_favorito(Integer telefono_favorito) {
		this.telefono_favorito = telefono_favorito;
	}
	public String getCiudad() {
		return ciudad;
	}
	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}
	
	
}