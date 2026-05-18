<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CriptoProyecto - Bienvenido al Futuro</title>
    
    <style>
        :root {
            --bg-color: #0d1117; /* Fondo oscuro GitHub/TradingView */
            --text-main: #c9d1d9; /* Gris claro principal */
            --text-bright: #ffffff; /* Blanco puro para títulos */
            --accent-purple: #ab47bc; /* Morado neón para acentos */
            --accent-pink: #ec407a; /* Rosado neón para el efecto aurora */
            --accent-cyan: #26c6da; /* Cian neón */
            --button-bg: #ab47bc; /* Botón principal morado */
            --input-bg: rgba(48, 54, 61, 0.4); /* Fondo de input sutil */
            --input-border: #30363d;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: var(--bg-color);
            color: var(--text-main);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden; /* Evita scrolls raros */
            position: relative;
        }

        /* --- EFECTO AURORA DE FONDO (Similar a la imagen) --- */
        .aurora-container {
            position: absolute;
            top: 0; left: 0; width: 100%; height: 100%;
            z-index: -1; /* Detrás de todo */
            filter: blur(80px); /* Desenfoque clave */
        }
        .aurora {
            position: absolute;
            border-radius: 50%;
        }
        .aurora-1 {
            top: -10%; left: 30%; width: 40%; height: 60%;
            background: var(--accent-purple);
            opacity: 0.3;
        }
        .aurora-2 {
            top: -5%; left: 10%; width: 30%; height: 50%;
            background: var(--accent-pink);
            opacity: 0.2;
        }
        .aurora-3 {
            bottom: 10%; right: 20%; width: 35%; height: 55%;
            background: var(--accent-cyan);
            opacity: 0.2;
        }

        /* --- CONTENEDOR PRINCIPAL DEL FORMULARIO (Símil Astronauta) --- */
        .card {
            background-color: rgba(22, 27, 34, 0.7); /* Ligeramente transparente */
            padding: 60px;
            border-radius: 20px;
            border: 2px solid rgba(48, 54, 61, 0.8);
            box-shadow: 0 12px 40px rgba(0,0,0,0.7);
            text-align: center;
            width: 90%;
            max-width: 500px;
            backdrop-filter: blur(10px); /* Efecto vidrio esmerilado */
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 16px 50px rgba(171, 71, 188, 0.2); /* Sombra morada al hacer hover */
        }

        h1 {
            color: var(--text-bright);
            font-size: 3rem;
            margin-bottom: 10px;
            font-weight: 700;
        }

        h2 {
            color: var(--text-main);
            font-size: 1.2rem;
            margin-bottom: 40px;
            font-weight: 400;
        }

        /* --- ESTILOS DE LOS INPUTS DINAacute;MICOS --- */
        .input-group {
            margin-bottom: 25px;
            text-align: left;
        }
        
        label {
            display: block;
            margin-bottom: 8px;
            color: var(--text-main);
            font-weight: 600;
            font-size: 0.9rem;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 15px;
            background-color: var(--input-bg);
            border: 1px solid var(--input-border);
            border-radius: 8px;
            color: var(--text-bright);
            font-size: 1.1rem;
            transition: border-color 0.3s, background-color 0.3s;
            box-sizing: border-box; /* Importante para el padding */
        }

        input:focus {
            outline: none;
            border-color: var(--accent-purple);
            background-color: rgba(48, 54, 61, 0.6);
        }

        /* --- ESTILO DEL BOTÓN (Estilo TradingView 'Comience') --- */
        .btn-submit {
            background-color: var(--button-bg);
            color: white;
            border: none;
            padding: 18px 35px;
            border-radius: 12px;
            font-size: 1.2rem;
            font-weight: 700;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s, transform 0.1s;
            box-shadow: 0 4px 15px rgba(171, 71, 188, 0.3);
        }

        .btn-submit:hover {
            background-color: #9c27b0; /* Un morado más oscuro */
            box-shadow: 0 6px 20px rgba(171, 71, 188, 0.5);
        }
        
        .btn-submit:active {
            transform: scale(0.98);
        }

        /* Footer sutil similar a '$0 para siempre' */
        .footer-text {
            margin-top: 25px;
            font-size: 0.85rem;
            color: #6a737d;
        }

    </style>
</head>
<body>

    <div class="aurora-container">
        <div class="aurora aurora-1"></div>
        <div class="aurora aurora-2"></div>
        <div class="aurora aurora-3"></div>
    </div>

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
