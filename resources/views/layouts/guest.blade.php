<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Teman Siklus</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    :root {
      --primary-color: #c36b84;
      --secondary-color: #f8f1f4;
      --text-color: #333333;
    }

    body {
      font-family: 'Poppins', sans-serif;
      color: var(--text-color);
      background-color: #ffffff;
      line-height: 1.6;
    }

    /* Navbar */
    .navbar {
      background-color: rgba(195, 107, 132, 0.9);
      backdrop-filter: blur(8px);
    }
    .navbar .nav-link {
      color: #fff !important;
      font-weight: 500;
      transition: color 0.3s ease;
    }
    .navbar .nav-link:hover {
      color: #f8f1f4 !important;
    }

    /* Hero Section with Parallax */
    .hero-section {
      height: 100vh;
      background: linear-gradient(rgba(195, 107, 132, 0.5), rgba(0, 0, 0, 0.6)),
                  url('{{ asset('img/hero.webp')}}') center/cover no-repeat fixed;
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
      color: #ffffff;
      position: relative;
    }

    .hero-content h1 {
      font-size: 3.5rem;
      font-weight: 700;
      margin-bottom: 1rem;
    }

    .hero-content p {
      font-size: 1.25rem;
      max-width: 600px;
      margin: 0 auto 2rem;
    }

    .btn-primary {
      background-color: var(--primary-color);
      border-color: var(--primary-color);
      padding: 0.75rem 2rem;
      font-size: 1.1rem;
      transition: all 0.3s ease;
    }

    .btn-primary:hover {
      background-color: #a84a67;
      border-color: #a84a67;
      transform: translateY(-2px);
    }

    /* Parallax Effect for Sections */
    .parallax-section {
      background-attachment: fixed;
      background-position: center;
      background-size: cover;
      padding: 5rem 0;
    }

    .disorders-section {
      background: var(--secondary-color);
    }

    .disorders-section h2 {
      font-size: 2.5rem;
      font-weight: 600;
      color: var(--primary-color);
      margin-bottom: 2rem;
      text-align: center;
    }

    .disorder-card {
      background: #ffffff;
      border: none;
      border-radius: 10px;
      padding: 1.5rem;
      margin-bottom: 1.5rem;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s ease;

    }


    .disorder-card {
      min-height: 220px; /* sesuaikan sesuai konten */
      display: flex;
      flex-direction: column;
    }

    .disorder-card:hover {
      transform: translateY(-5px);
    }

    .disorder-card h3 {
      font-size: 1.5rem;
      color: var(--primary-color);
      margin-bottom: 1rem;
    }

    /* Responsive */
    @media (max-width: 768px) {
      .hero-content h1 {
        font-size: 2.5rem;
      }

      .hero-content p {
        font-size: 1rem;
      }

      .disorders-section h2 {
        font-size: 2rem;
      }
    }

    #login-section {
      background: linear-gradient(rgba(195, 107, 132, 0.5), rgba(0, 0, 0, 0.6)),
              url('{{ asset('img/hero.webp')}}') center/cover no-repeat fixed;
    }

  </style>
</head>
<body>
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
    <div class="container">
      <a class="navbar-brand fw-bold" href="#">Teman Siklus</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item"><a class="nav-link" href="{{route('landing')}}#hero">Home</a></li>
          <li class="nav-item"><a class="nav-link" href="{{route('landing')}}#disorders">Penyakit</a></li>
          <li class="nav-item"><a class="nav-link" href="{{ route('diagnosis')}}">Diagnosis</a></li>
                  @auth
                      <li class="nav-item"><a class="nav-link" href="{{ route('dashboard')}}">Dashboard</a></li>

                  @else
                      <li class="nav-item"><a class="nav-link" href="{{ route('login')}}">Login</a></li>

                  @endauth
        </ul>
      </div>
    </div>
  </nav>

        <div id="login-section">
            {{ $slot}}
        </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <script>
    // Smooth scroll for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
      anchor.addEventListener('click', function(e) {
        e.preventDefault();
        document.querySelector(this.getAttribute('href')).scrollIntoView({
          behavior: 'smooth'
        });
      });
    });
  </script>
</body>
</html>
