<div>

  <!-- Hero Section -->
<section id="hero" class="hero-section">
  <div class="hero-content">
    <h1>Kesehatan Menstruasi Wanita</h1>
    <p>Temukan wawasan ahli dan solusi untuk masalah kesehatan menstruasi dengan sistem pakar kami yang canggih.</p>
    <a href="#disorders" class="btn btn-primary">Jelajahi Sekarang</a>
  </div>
</section>

  <!-- Disorders Section -->
<section id="disorders" class="parallax-section disorders-section">
  <div class="container">
    <h2>Gangguan Menstruasi yang Umum</h2>
    <div class="row g-3">


                @foreach ($penyakit as $item)

      <div class="col-md-4 d-flex">
        <div class="disorder-card w-100 h-100">
          <h3>{{ $item->nama}}</h3>
          <p>{{ $item->deskripsi}}</p>
        </div>
      </div>

                @endforeach


    </div>
  </div>
</section>

  <!-- Contact Section (optional) -->
  <!-- <section id="contact" class="py-5 text-center bg-light"> -->
  <!--   <div class="container"> -->
  <!--     <h2 class="fw-bold mb-3">Contact Us</h2> -->
  <!--     <p class="text-muted">For consultations and expert support, reach out to our team.</p> -->
  <!--     <a href="mailto:info@menstrualhealth.com" class="btn btn-primary">Email Us</a> -->
  <!--   </div> -->
  <!-- </section> -->
</div>
