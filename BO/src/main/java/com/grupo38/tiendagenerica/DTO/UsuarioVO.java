package com.grupo38.tiendagenerica.DTO;

import java.io.Serializable;

public class UsuarioVO implements Serializable {
	
//	Identificar unico de las clases entidades
	private static final long serialVersionUID = 1L;
	
	private Integer cedula_usuario;
	public String email_usuario;
	public String nombre_usuario;
	public String password;
	public String usuario;
	
	public Integer getCedula_usuario() {
		return cedula_usuario;
	}
	public void setCedula_usuario(Integer cedula_usuario) {
		this.cedula_usuario = cedula_usuario;
	}
	public String getEmail_usuario() {
		return email_usuario;
	}
	public void setEmail_usuario(String email_usuario) {
		this.email_usuario = email_usuario;
	}
	public String getNombre_usuario() {
		return nombre_usuario;
	}
	public void setNombre_usuario(String nombre_usuario) {
		this.nombre_usuario = nombre_usuario;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	
	
	

}
