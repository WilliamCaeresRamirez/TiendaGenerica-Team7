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


						<i class="fas fa-user-circle titulo fa-4x"></i> <br> <br>
						<h1 class="titulo">SU TIENDA GENÉRICA</h1>
						<h4 class="titulo">Registre los datos del nuevo usuario</h4>
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
								aria-describedby="basic-addon1" required id="cedula_usuario">
						</div>

						<div class="input-group">
							<span class="input-group-text" id="basic-addon1"><i
								class="far fa-user-circle"></i></span> <input type="text"
								class="form-control" placeholder="Nombre Completo"
								aria-label="Username" aria-describedby="basic-addon1" required
								id="nombre_usuario">
						</div>

						<div class="input-group">
							<span class="input-group-text" id="basic-addon1"><i
								class="fas fa-envelope"></i></i></span> <input type="text"
								class="form-control" placeholder="Email" aria-label="Username"
								aria-describedby="basic-addon1" required id="email_usuario">
						</div>

						<div class="input-group">
							<span class="input-group-text" id="basic-addon1"><i
								class="far fa-user"></i></i></span> <input type="text" class="form-control"
								placeholder="Username" aria-label="Username"
								aria-describedby="basic-addon1" required id="usuario">
						</div>

						<div class="input-group">
							<span class="input-group-text" id="basic-addon1"><i
								class="fas fa-unlock"></i></span> <input type="password"
								class="form-control" placeholder="Password"
								aria-label="Username" aria-describedby="basic-addon1" required
								id="password">
						</div>
						<br>
						<div class="d-grid gap-2 col-4 mx-auto">
							<button class="btn btn-warning" type="button"
								onclick="actualizar()">
								</i> <i class="fas fa-sync"></i> ACTUALIZAR
							</button>
							<br>
							<div id="error" class="alert alert-danger visually-hidden"
								role="alert">Error al actualizar el usuario, verifique que
								la cedula y usuario dados sean validos</div>

							<div id="correcto" class="alert alert-success visually-hidden"
								role="alert">Usuario actualizado con exito</div>
					</center>
				</div>
			</div>
		</div>
	</div>
	</div>


	<script>
		function actualizar() {
			var x = document.getElementById("usuario").value;
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

				if (usuarios[i].cedula_usuario == y) {
					console.log(usuarios[i].cedula_usuario + " " + y);
					coincidencia = true
					break;
				}
			}
			console.log(coincidencia);

			if (coincidencia != false) {
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
						document.getElementById("usuario").value);
				var xhr = new XMLHttpRequest();
				xhr.open("PUT", "http://localhost:8080/actualizarusuarios");

				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");

				document.getElementById("cedula_usuario").value = "";
				document.getElementById("email_usuario").value = "";
				document.getElementById("nombre_usuario").value = "";
				document.getElementById("password").value = "";
				document.getElementById("usuario").value = "";
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
				document.getElementById("usuario").value = "";
			}
		}
	</script>


</body>
</html>