<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CriptoProyecto - Bienvenido al Futuro</title>
    
    <style>
        :root {
            --bg-color: #0d1117;
            --text-main: #c9d1d9;
            --text-bright: #ffffff;
            --button-bg: #ab47bc;
            --input-bg: rgba(48, 54, 61, 0.4);
            --input-border: #30363d;
        }

        body {
            margin: 0; padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
            position: relative;
        }

        /* --- CONFIGURACIÓN DEL VIDEO --- */
        #video-fondo {
            position: fixed;
            top: 0; left: 0;
            width: 100%; height: 100%;
            object-fit: cover;
            z-index: -2; /* Detrás de todo */
        }

        /* Capa oscura sobre el video para que el texto resalte */
        .overlay {
            position: fixed;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background: rgba(0, 0, 0, 0.6);
            z-index: -1;
        }

        /* --- TU CONTENEDOR (CARD) --- */
        .card {
            background-color: rgba(22, 27, 34, 0.7);
            padding: 60px;
            border-radius: 20px;
            border: 2px solid rgba(48, 54, 61, 0.8);
            box-shadow: 0 12px 40px rgba(0,0,0,0.7);
            text-align: center;
            width: 90%;
            max-width: 500px;
            backdrop-filter: blur(10px);
        }

        h1 { color: var(--text-bright); font-size: 3rem; margin-bottom: 10px; }
        h2 { color: var(--text-main); font-size: 1.2rem; margin-bottom: 40px; }
        
        .input-group { margin-bottom: 25px; text-align: left; }
        label { display: block; margin-bottom: 8px; color: var(--text-main); font-weight: 600; font-size: 0.9rem; text-transform: uppercase; }
        input[type="text"], input[type="number"] {
            width: 100%; padding: 15px; background-color: var(--input-bg);
            border: 1px solid var(--input-border); border-radius: 8px;
            color: var(--text-bright); box-sizing: border-box;
        }

        .btn-submit {
            background-color: var(--button-bg); color: white; border: none;
            padding: 18px 35px; border-radius: 12px; font-weight: 700;
            cursor: pointer; width: 100%;
        }

        .footer-text { margin-top: 25px; font-size: 0.85rem; color: #6a737d; }
    </style>
</head>
<body>

    <video autoplay muted loop id="video-fondo">
        <source src="fondo1.mp4" type="video/mp4">
    </video>
    <div class="overlay"></div>

    <div class="card">
        <h1>CriptoProyecto</h1>
        <h2>Primer paso. Luego opera.</h2>

        <form action="RegistroServlet" method="POST">
            <div class="input-group">
                <label for="nombre">Tu Nombre de Operador</label>
                <input type="text" id="nombre" name="nombre" placeholder="Ej: Satoshi" required>
            </div>
            <div class="input-group">
                <label for="edad">Tu Edad Actual</label>
                <input type="number" id="edad" name="edad" placeholder="Ej: 21" min="18" max="120" required>
            </div>
            <button type="submit" class="btn-submit">Empezar a Invertir gratis</button>
            <p class="footer-text">$0 comisión para siempre, no se requiere tarjeta.</p>
        </form>
    </div>

</body>
</html>