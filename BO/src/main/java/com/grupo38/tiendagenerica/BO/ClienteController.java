package com.grupo38.tiendagenerica.BO;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo38.tiendagenerica.DAO.ClienteDAO;
import com.grupo38.tiendagenerica.DTO.ClienteVO;


@RestController
public class ClienteController {
	
	/*
	 * @GetMapping obtener o buscar
	 * @PostMapping insertar o agregar
	 * @PutMapping modificar o actualizar
	 * @DeleteMapping eliminar o borrar
	 * */

	@PostMapping("/registrarcliente")
	public void registrarCliente(ClienteVO client) {
		ClienteDAO Dao = new ClienteDAO();
		Dao.registrarCliente(client);
	}

	@GetMapping("/consultarcliente")
	public ArrayList<ClienteVO> consultarCliente(Integer client) {
		ClienteDAO Dao = new ClienteDAO();
		return Dao.consultarCliente(client);
	}

	@GetMapping("/listarclientes")
	public ArrayList<ClienteVO> listaDeCliente() {
		ClienteDAO Dao = new ClienteDAO();
		return Dao.listaDeClientes();
	}
	@DeleteMapping("/eliminarcliente")
	public void eliminarCliente(Integer cedula_cliente) {
		ClienteDAO Dao = new ClienteDAO();
		Dao.eliminarCliente(cedula_cliente);
	}
	
	@PutMapping("/actualizarcliente")
	public void actualizarCliente(ClienteVO client) {
		ClienteDAO Dao = new ClienteDAO();
		Dao.actualizarCliente(client);
	}
	

}
