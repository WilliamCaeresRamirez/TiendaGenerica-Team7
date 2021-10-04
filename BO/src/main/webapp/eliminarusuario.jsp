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

	<!-- Barra de Navegación -->
	<!--nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<div id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link active" aria-current="page" href="index.html"> <i class="fas fa-home fa 5x"></i> Inicio</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav-->



	<div class="container p-4">
		<div class="row justify-content-end">
			<div class="col-10">
				<div class="formulario">
					<center>


						<i class="fas fa-user-circle titulo fa-4x"></i> <br> <br>
						<h1 class="titulo">SU TIENDA GENÉRICA</h1>
						<h4 class="titulo">Digite la cédula del usuario a eliminar</h4>
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
						<br>
						<div class="d-grid gap-2 col-2 mx-auto">
							<button class="btn btn-danger" type="button" onclick="eliminar()">
								<i class="fas fa-user-plus"></i> ELIMINAR
							</button>
							<br>
						</div>

						<div id="error" class="alert alert-danger visually-hidden"
							role="alert">Error al eliminar el usuario, verifique que
							exista un usuario con la cedula y usuario dados</div>

						<div id="correcto" class="alert alert-success visually-hidden"
							role="alert">Usuario eliminado con exito</div>
						<center>
				</div>
			</div>
		</div>
	</div>


	<script>
		function eliminar() {
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

				console.log(usuarios[i].cedula_usuario);
				if (usuarios[i].cedula_usuario == y) {
					console.log(usuarios[i].cedula_usuario + " " + y);
					coincidencia = true
					break;
				}
			}
			console.log(coincidencia);

			if (coincidencia != false) {
				var cedula = document.getElementById("cedula_usuario").value;

				var xhr = new XMLHttpRequest();
				xhr.open("DELETE",
						"http://localhost:8080/eliminarusuario?cedula_usuario="
								+ cedula);

				var element = document.getElementById("error");
				element.classList.add("visually-hidden");

				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");

				document.getElementById("cedula_usuario").value = "";
				xhr.send();

			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");

				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");

				document.getElementById("cedula_usuario").value = "";
				;
			}
		}
	</script>



</body>
</html>