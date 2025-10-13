<div>

  <!-- Hero Section -->
<section id="hero" class="hero-section">
  <div class="hero-content">
    <h1>Sistem Pakar</h1>
    <p>sistem pakar gangguan menstruasi adalah sebuah sistem yang di rancang berbasis komputer untuk meniru proses berpikir seorang pakar (Dokter atau Spesialis OBGYN) dalam mendiagnosis dan memberikan saran pengobatan untuk berbagai gangguan atau penyakit yang berhubungan dengan gangguan menstruasi</p>
    <a href="{{ route('diagnosis')}}" class="btn btn-primary">Mulai Konsul</a>
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
