<div>

  <!-- Hero Section -->
<section id="hero" class="hero-section">
  <div class="hero-content">
    <h1>Gangguan Menstruasi Wanita</h1>
    <p>Temukan wawasan ahli dan solusi untuk gangguan menstruasi dengan sistem pakar kami yang canggih.</p>
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

</div>
