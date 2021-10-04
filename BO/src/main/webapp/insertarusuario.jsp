<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>repl.it</title>
<link href="styleclientes.css" rel="stylesheet" type="text/css" />
<!--Llamando librerias y estilos Boostrap-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous">
	
</script>


<!-- font awesome-->
<script src="https://kit.fontawesome.com/8e9e769e03.js"
	crossorigin="anonymous">
	
</script>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<div id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index.html"> <i
							class="fas fa-house-user"></i> Inicio
					</a></li>
				</ul>
			</div>
		</div>
		<!-- <div class="col-4">
	    <a class="navbar-brand links" href="login.jsp"><i class="fas fa-sign-in-alt"></i> Iniciar sesión</a>
	    </div> -->
	</nav>
	<div id="carouselExampleControls" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">

			<div class="carousel-item active">

				<center>
					<h1 class="Titulo">Modulo de Usuarios</h1>
				</center>

				<img
					src="https://cdn.pixabay.com/photo/2017/03/19/03/40/avatar-2155431_1280.png"
					class="d-block w-100" alt="...">
				<div class="formulario">






					<form id="form1">
						<div class="col-12">
							<label class="visually-hidden" for="inlineFormInputGroupUsername">Cedula</label>
							<div class="input-group">
								<div class="input-group-text">
									<i class="fas fa-address-card fa-2x"></i>
								</div>
								<input type="text" class="form-control" required
									id="cedula_usuario" placeholder="Cedula">
							</div>
						</div>

						<div class="col-12">
							<label class="visually-hidden" for="inlineFormInputGroupUsername">Nombre
								Completo</label>
							<div class="input-group">
								<div class="input-group-text">
									<i class="fas fa-file-signature fa-2x"></i></i>
								</div>
								<input type="text" class="form-control" required
									id="nombre_usuario" placeholder="Nombre Completo">
							</div>
						</div>

						<div class="col-12">
							<label class="visually-hidden" for="inlineFormInputGroupUsername">Correo</label>
							<div class="input-group">
								<div class="input-group-text">
									<i class="fas fa-house-user fa-2x"></i></i>
								</div>
								<input type="text" class="form-control" required
									id="email_usuario" placeholder="Correo">
							</div>
						</div>

						<div class="col-12">
							<label class="visually-hidden" for="inlineFormInputGroupUsername">Usuario</label>
							<div class="input-group">
								<div class="input-group-text">
									<i class="fas fa-user-circle fa-2x"></i></i>
								</div>
								<input type="text" class="form-control" required id="user"
									placeholder="Usuario">
							</div>
						</div>

						<div class="col-12">
							<label class="visually-hidden" for="inlineFormInputGroupUsername">Contraseña</label>
							<div class="input-group">
								<div class="input-group-text">
									<i class="fas fa-key fa-2x"></i></i>
								</div>
								<input type="text" class="form-control" required id="password"
									placeholder="Contraseña">
							</div>
							<br>
							<center>
								<button type="button" class="btn btn-success" onclick="enviar()">
									<i class="fas fa-user-plus"></i> Agregar
								</button>
								<button type="button" class="btn btn-danger"
									onclick="window.location.href='/insertarproducto.jsp'">
									<i class="fas fa-times"></i> Eliminar
								</button>
								<button type="button" class="btn btn-secondary"
									onclick="window.location.href='/actualizarusuario.jsp'">Actualizar</button>
								<button type="button" class="btn btn-info"
									onclick="window.location.href='/buscarusuario.jsp'">Buscar</button>
								<br>
								<div id="error" class="alert alert-danger visually-hidden"
									role="alert">Error al crear el usuario, verifique que no
									exista un usuario con la cedula y usuario dados</div>

								<div id="correcto" class="alert alert-success visually-hidden"
									role="alert">Usuario creado con exito</div>
							</center>
						</div>
					</form>
				</div>

			</div>
			<div class="carousel-item">
				<!-- <br>
				<center>
					<h1 class="Titulo">Modulo de Proveedores</h1>
				</center> -->
				<img
					src="https://cdn.pixabay.com/photo/2021/04/09/22/03/strawberries-6165597_960_720.jpg"
					class="d-block w-100" alt="...">

				<div class="container p-4">
					<div class="row justify-content-end">
						<div class="col-10">
							<div class="formulario">
								<center>

									<i class="fas fa-users fa-4x titulo"></i>
									<h1 class="titulo">SU TIENDA GENÉRICA</h1>
									<h3 class="titulo">
										<i class="fas fa-hand-point-right"></i> MODULO CLIENTES <i
											class="fas fa-hand-point-left"></i>
									</h3>
								</center>

								<center>
									<button type="button" class="btn btn-danger"
										onclick="window.location.href='/buscarcliente.jsp'">
										<i class="far fa-check-circle"></i> Consultar
									</button>
									<button type="button" class="btn btn-dark"
										onclick="window.location.href='/actualizarcliente.jsp'">
										<i class="fas fa-retweet"></i> Actualizar
									</button>
									<button type="button" class="btn btn-danger"
										onclick="enviarcliente()">
										<i class="fas fa-file-medical"></i> Crear
									</button>
									<button type="button" class="btn btn-dark"
										onclick="window.location.href='/eliminarcliente.jsp'">
										<i class="fas fa-trash-alt"></i> Borrar
									</button>
									<br> <br>
								</center>

								<div class="input-group">
									<span class="input-group-text" id="basic-addon1"><i
										class="fas fa-id-card-alt fa-2x"></i></span> <input type="text"
										class="form-control" placeholder="Cédula"
										aria-label="Username" aria-describedby="basic-addon1" required
										id="nit_cliente">
								</div>

								<div class="input-group">
									<span class="input-group-text" id="basic-addon1"><i
										class="fas fa-map-marker-alt fa-2x"></i></span> <input type="text"
										class="form-control" placeholder="Dirección"
										aria-label="Username" aria-describedby="basic-addon1" required
										id="direccion_cliente">
								</div>

								<div class="input-group">
									<span class="input-group-text" id="basic-addon1"><i
										class="far fa-user-circle fa-2x"></i></span> <input type="text"
										class="form-control" placeholder="Nombre Completo"
										aria-label="Username" aria-describedby="basic-addon1" required
										id="nombre_proveedor">
								</div>



								<div class="input-group">
									<span class="input-group-text" id="basic-addon1"><i
										class="fas fa-phone fa-2x"></i></span> <input type="text"
										class="form-control" placeholder="Teléfono"
										aria-label="Username" aria-describedby="basic-addon1" required
										id="telefono_favorito">
								</div>

								<div class="input-group">
									<span class="input-group-text" id="basic-addon1"><i
										class="fas fa-globe-americas fa-2x"></i></span> <input type="text"
										class="form-control" placeholder="Ciudad"
										aria-label="Username" aria-describedby="basic-addon1" required
										id="ciudad">
								</div>
								<div id="errorclientes"
									class="alert alert-danger visually-hidden" role="alert">Error
									al crear el usuario, verifique que no exista un usuario con la
									cedula y usuario dados</div>

								<div id="correctoclientes"
									class="alert alert-success visually-hidden" role="alert">Usuario
									creado con exito</div>
							</div>
						</div>
					</div>
				</div>


			</div>
			<div class="carousel-item">
				<img
					src="https://cdn.pixabay.com/photo/2017/04/07/16/47/interview-2211354_1280.jpg"
					class="d-block w-100" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>

	</div>


	<script>
		/* Usuarios */

		function enviar() {
			var x = document.getElementById("user").value;
			var y = document.getElementById("cedula_usuario").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/listarusuarios', false);
			req.send(null);
			var usuarios = null;
			if (req.status == 200)
				usuarios = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < usuarios.length; i++) {
				console.log(usuarios[i].usuario);
				console.log(usuarios[i].cedula_usuario);
				if (usuarios[i].usuario === x) {
					console.log(usuarios[i].usuario + " " + x);
					coincidencia = true
					break;
				}

				if (usuarios[i].cedula_usuario === y) {
					console.log(usuarios[i].cedula_usuario + " " + y);
					coincidencia = true
					break;
				}
			}
			console.log(coincidencia);

			if (coincidencia == false) {
				var formData = new FormData();
				formData.append("cedula_usuario", document
						.getElementById("cedula_usuario").value);
				formData.append("email_usuario", document
						.getElementById("email_usuario").value);
				formData.append("nombre_usuario", document
						.getElementById("nombre_usuario").value);
				formData.append("password",
						document.getElementById("password").value);
				formData.append("usuario",
						document.getElementById("user").value);
				var xhr = new XMLHttpRequest();
				xhr.open("POST", "http://localhost:8080/registrarusuario");

				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");

				document.getElementById("cedula_usuario").value = "";
				document.getElementById("email_usuario").value = "";
				document.getElementById("nombre_usuario").value = "";
				document.getElementById("password").value = "";
				document.getElementById("user").value = "";
				xhr.send(formData);

			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				document.getElementById("cedula_usuario").value = "";
				document.getElementById("email_usuario").value = "";
				document.getElementById("nombre_usuario").value = "";
				document.getElementById("password").value = "";
				document.getElementById("user").value = "";
			}
		}

		/* Clientes */

		function enviarcliente() {
			var x = document.getElementById("nombre_proveedor").value;
			var y = document.getElementById("nit_cliente").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/listarclientes', false);
			req.send(null);
			var usuarios = null;
			if (req.status == 200)
				usuarios = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < usuarios.length; i++) {
				console.log(usuarios[i].usuario);
				console.log(usuarios[i].cedula_usuario);
				if (usuarios[i].usuario === x) {
					console.log(usuarios[i].usuario + " " + x);
					coincidencia = true
					break;
				}

				if (usuarios[i].cedula_usuario === y) {
					console.log(usuarios[i].cedula_usuario + " " + y);
					coincidencia = true
					break;
				}
			}
			console.log(coincidencia);

			if (coincidencia == false) {
				var formData = new FormData();
				formData.append("nit_cliente", document
						.getElementById("nit_cliente").value);
				formData.append("direccion_cliente", document
						.getElementById("direccion_cliente").value);
				formData.append("nombre_proveedor", document
						.getElementById("nombre_proveedor").value);
				formData.append("telefono_favorito", document
						.getElementById("telefono_favorito").value);
				formData.append("ciudad",
						document.getElementById("ciudad").value);
				var xhr = new XMLHttpRequest();
				xhr.open("POST", "http://localhost:8080/registrarcliente");

				var element = document.getElementById("errorclientes");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correctoclientes");
				element2.classList.remove("visually-hidden");

				document.getElementById("nit_cliente").value = "";
				document.getElementById("direccion_cliente").value = "";
				document.getElementById("nombre_proveedor").value = "";
				document.getElementById("telefono_favorito").value = "";
				document.getElementById("ciudad").value = "";
				xhr.send(formData);

			} else {
				var element = document.getElementById("errorclientes");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correctoclientes");
				element2.classList.add("visually-hidden");
				document.getElementById("nit_cliente").value = "";
				document.getElementById("direccion_cliente").value = "";
				document.getElementById("nombre_proveedor").value = "";
				document.getElementById("telefono_favorito").value = "";
				document.getElementById("ciudad").value = "";
			}
		}
	</script>
</body>
</html>