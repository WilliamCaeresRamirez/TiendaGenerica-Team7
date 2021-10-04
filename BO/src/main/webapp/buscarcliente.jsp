<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>Sofía Castañeda</title>

<!-- LLamando librerias y estilos de Bootstarp -->
<link href="style.css" rel="stylesheet" type="text/css" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link href="style.css" rel="stylesheet" type="text/css" />

<!-- font awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">


</head>


<body>

	<div class="container p-4">
		<div class="row justify-content-end">
			<div class="col-10">
				<div class="formulario">
					<center>

						<br> <i class="fas fa-user-circle titulo fa-4x"></i> <br>
						<br>
						<h1 class="titulo">SU TIENDA GENÉRICA</h1>
						<h4 class="titulo">Ingrese el cliente a buscar</h4>
						<br>
						<div class="input-group">
							<span class="input-group-text" id="basic-addon1"><i
								class="fas fa-id-card-alt"></i></span> <input type="text"
								class="form-control" placeholder="cedula" aria-label="Username"
								aria-describedby="basic-addon1" required id="usersearch">
						</div>

					</center>
					<br>
					<center>

						<br> <br>
					</center>

					<center>
						<div class="input-group">
							<span class="input-group-text" id="basic-addon1"><i
								class="fas fa-id-card-alt"></i></span> <input type="text"
								class="form-control" placeholder="Cédula" aria-label="Username"
								aria-describedby="basic-addon1" required id="nit_cliente"
								disabled="disabled">
						</div>

						<div class="input-group">
							<span class="input-group-text" id="basic-addon1"><i
								class="far fa-user-circle"></i></span> <input type="text"
								class="form-control" placeholder="Nombre Completo"
								aria-label="Username" aria-describedby="basic-addon1" required
								id="nombre_proveedor" disabled="disabled">
						</div>

						<div class="input-group">
							<span class="input-group-text" id="basic-addon1"><i
								class="fas fa-envelope"></i></i></span> <input type="text"
								class="form-control" placeholder="Email" aria-label="Username"
								aria-describedby="basic-addon1" required id="ciudad"
								disabled="disabled">
						</div>

						<div class="input-group">
							<span class="input-group-text" id="basic-addon1"><i
								class="fas fa-map-marker-alt"></i></span> <input type="text"
								class="form-control" placeholder="Dirección"
								aria-label="Username" aria-describedby="basic-addon1" required
								id="direccion_cliente" disabled="disabled">
						</div>

						<div class="input-group">
							<span class="input-group-text" id="basic-addon1"><i
								class="fas fa-mobile-alt"></i></span> <input type="password"
								class="form-control" placeholder="Contacto"
								aria-label="Username" aria-describedby="basic-addon1" required
								id="telefono_favorito" disabled="disabled">
						</div>
						<br>
						<div class="d-grid gap-2 col-4 mx-auto">
							<button type="button" class="btn btn-outline-warning"
								onclick="enviar()">
								<i class="fas fa-search"></i> BUSCAR
							</button>
							<br>

							<div id="error" class="alert alert-danger visually-hidden"
								role="alert">Error al buscar el cliente, el cliente no
								existe</div>

							<div id="correcto" class="alert alert-success visually-hidden"
								role="alert">cliente encontrado con exito</div>
					</center>
				</div>
			</div>
		</div>
	</div>
	</div>

	<script>
		function enviar() {

			var req = new XMLHttpRequest();
			var coincidencia = false;
			var user = document.getElementById("usersearch").value;
			req.open('GET',
					'http://localhost:8080/consultarcliente?nit_cliente='
							+ user, false);
			req.send(null);
			var usuario = null;
			if (req.status == 200)
				usuario = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			var element = document.getElementById("error");
			element.classList.add("visually-hidden");
			var element2 = document.getElementById("correcto");
			element2.classList.remove("visually-hidden");

			console.log(usuario.toString());

			if (usuario.toString() != "") {

				document.getElementById("nit_cliente").value = usuario[0].nit_cliente;
				document.getElementById("nombre_proveedor").value = usuario[0].nombre_proveedor;
				document.getElementById("ciudad").value = usuario[0].ciudad;
				document.getElementById("direccion_cliente").value = usuario[0].direccion_cliente;
				document.getElementById("telefono_favorito").value = usuario[0].telefono_favorito;

				document.getElementById("usersearch").value = "";

			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				document.getElementById("nit_cliente").value = "";
				document.getElementById("nombre_proveedor").value = "";
				document.getElementById("ciudad").value = "";
				document.getElementById("direccion_cliente").value = "";
				document.getElementById("telefono_favorito").value = "";
			}
		}
	</script>



</body>
</html>