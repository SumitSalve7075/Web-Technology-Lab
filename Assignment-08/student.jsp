<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>Light Blue Theme | Enhanced CSS</title>
    <style>
        /* ---------- GLOBAL RESET & LIGHT BLUE THEME VARIABLES ---------- */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-light: #eef5fc;
            --surface-light: #ffffff;
            --primary-light: #7ab3c8;
            --primary-soft: #9bc1d9;
            --accent-blue: #3b82f6;
            --text-dark: #1e2f3e;
            --text-soft: #2c4c6c;
            --shadow-sm: 0 8px 20px rgba(0, 20, 40, 0.08);
            --shadow-hover: 0 16px 32px rgba(0, 40, 60, 0.12);
            --border-radius: 1.25rem;
            --transition: all 0.25s ease-in-out;
        }

        body {
            background: linear-gradient(145deg, #e1f0fa 0%, #d0e6f2 100%);
            font-family: system-ui, 'Segoe UI', 'Inter', 'Roboto', sans-serif;
            color: var(--text-dark);
            line-height: 1.5;
            padding: 2rem 1.5rem;
            min-height: 100vh;
        }

        /* smooth container */
        .container {
            max-width: 1280px;
            margin: 0 auto;
        }

        /* ---------- TYPOGRAPHY & EXTRA STYLES ---------- */
        h1 {
            font-size: 2.5rem;
            font-weight: 600;
            background: linear-gradient(135deg, #1e4b6e, #2a6f9c);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            letter-spacing: -0.01em;
            margin-bottom: 0.5rem;
        }

        .subhead {
            font-size: 1.2rem;
            color: var(--text-soft);
            border-left: 4px solid var(--primary-light);
            padding-left: 1rem;
            margin-bottom: 2.5rem;
        }

        /* ---------- CARD GRID (more CSS: grid + responsive) ---------- */
        .card-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2rem;
            margin: 3rem 0;
        }

        /* modern glass card */
        .card {
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(2px);
            border-radius: var(--border-radius);
            padding: 1.8rem;
            box-shadow: var(--shadow-sm);
            transition: var(--transition);
            border: 1px solid rgba(255, 255, 255, 0.6);
        }

        .card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            background: rgba(255, 255, 255, 0.96);
            border-color: var(--primary-soft);
        }

        .card-icon {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            display: inline-block;
        }

        .card h3 {
            font-size: 1.6rem;
            font-weight: 600;
            margin-bottom: 0.75rem;
            color: #1e4a6e;
        }

        .card p {
            color: #2c3e4e;
            margin-bottom: 1.5rem;
        }

        /* ---------- BUTTONS (extra hover + focus) ---------- */
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            background: var(--primary-light);
            color: #1e3a5f;
            border: none;
            padding: 0.7rem 1.5rem;
            font-weight: 500;
            font-size: 0.95rem;
            border-radius: 3rem;
            cursor: pointer;
            transition: var(--transition);
            text-decoration: none;
            font-family: inherit;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.02);
        }

        .btn-primary {
            background: #2c7cb6;
            color: white;
            box-shadow: 0 2px 6px rgba(44, 124, 182, 0.2);
        }

        .btn-primary:hover {
            background: #1f5e8c;
            transform: scale(1.02);
            box-shadow: 0 8px 18px rgba(31, 94, 140, 0.2);
        }

        .btn-outline {
            background: transparent;
            border: 1.5px solid var(--primary-light);
            color: #1e4a6e;
        }

        .btn-outline:hover {
            background: var(--primary-light);
            border-color: var(--primary-soft);
            transform: translateY(-2px);
        }

        /* ---------- FEATURE SECTION (extra row) ---------- */
        .stats-bar {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 1.5rem;
            background: rgba(255, 255, 240, 0.7);
            backdrop-filter: blur(4px);
            border-radius: 3rem;
            padding: 1.5rem 2rem;
            margin: 2rem 0;
            border: 1px solid rgba(123, 179, 200, 0.4);
        }

        .stat-item {
            text-align: center;
            flex: 1;
        }

        .stat-number {
            font-size: 2rem;
            font-weight: 800;
            color: #1e6a9f;
            line-height: 1;
        }

        .stat-label {
            font-size: 0.85rem;
            text-transform: uppercase;
            letter-spacing: 1px;
            color: #2c5a7a;
        }

        /* ---------- FORM ELEMENTS (light blue theme extension) ---------- */
        .demo-form {
            background: white;
            border-radius: 2rem;
            padding: 2rem;
            margin: 2rem 0;
            box-shadow: var(--shadow-sm);
        }

        .form-group {
            margin-bottom: 1.2rem;
        }

        label {
            font-weight: 500;
            display: block;
            margin-bottom: 0.4rem;
            color: #1e4a6e;
        }

        input,
        textarea {
            width: 100%;
            padding: 0.8rem 1rem;
            border: 1px solid #cbdde9;
            border-radius: 1.5rem;
            font-size: 1rem;
            background: #fefefe;
            transition: 0.2s;
        }

        input:focus,
        textarea:focus {
            outline: none;
            border-color: var(--primary-light);
            box-shadow: 0 0 0 3px rgba(122, 179, 200, 0.3);
        }

        /* footer */
        footer {
            text-align: center;
            margin-top: 3rem;
            padding-top: 1.5rem;
            border-top: 1px solid rgba(100, 140, 170, 0.3);
            color: #2c5a7a;
            font-size: 0.9rem;
        }

        /* responsive touch */
        @media (max-width: 640px) {
            body {
                padding: 1rem;
            }

            h1 {
                font-size: 2rem;
            }

            .stats-bar {
                flex-direction: column;
                align-items: center;
                border-radius: 1.5rem;
            }

            .btn {
                width: 100%;
                justify-content: center;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <header>
            <h1>✨ Light Blue Harmony</h1>
            <div class="subhead">Fresh, calm & modern — enhanced with extra CSS and a soothing light blue theme.</div>
        </header>

        <!-- card grid (more CSS layout) -->
        <div class="card-grid">
            <div class="card">
                <div class="card-icon">🌀</div>
                <h3>Glassmorphism</h3>
                <p>Soft blur cards with smooth hover lift — fully responsive and accessible.</p>
                <button class="btn btn-outline">Explore →</button>
            </div>
            <div class="card">
                <div class="card-icon">🎨</div>
                <h3>Light Blue Accents</h3>
                <p>Custom variables, gradients, and micro-interactions create a consistent calm UI.</p>
                <button class="btn btn-primary">Get Started</button>
            </div>
            <div class="card">
                <div class="card-icon">⚡</div>
                <h3>Extra Polish</h3>
                <p>Focus rings, transition effects, and modern grid layout.</p>
                <button class="btn btn-outline">Learn more</button>
            </div>
        </div>

        <!-- statistics bar - more css elements -->
        <div class="stats-bar">
            <div class="stat-item">
                <div class="stat-number">100%</div>
                <div class="stat-label">Light blue mood</div>
            </div>
            <div class="stat-item">
                <div class="stat-number">24/7</div>
                <div class="stat-label">Smooth experience</div>
            </div>
            <div class="stat-item">
                <div class="stat-number">✨</div>
                <div class="stat-label">Extra CSS included</div>
            </div>
        </div>

        <!-- example form with light blue touches -->
        <div class="demo-form">
            <h3 style="margin-bottom: 1rem; color:#1e5a7a;">Stay in the loop</h3>
            <div class="form-group">
                <label>Your email</label>
                <input type="email" placeholder="hello@lightblue.com">
            </div>
            <div class="form-group">
                <label>Message</label>
                <textarea rows="2" placeholder="Tell us your thoughts..."></textarea>
            </div>
            <button class="btn btn-primary">Send message →</button>
        </div>

        <footer>
            🌊 Light Blue Theme • Enhanced with modern CSS, hover states & responsive grid
        </footer>
    </div>
</body>

</html>