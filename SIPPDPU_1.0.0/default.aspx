<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="SIPPDPU_1._0._0.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat ="server">
    <meta charset="utf-8"/>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

    <title>SIPPDPU - Sistem Informasi Pelayanan Publik Pada Dinas Pekerjaan Umum</title>
    <meta content="" name="description"/>
    <meta content="" name="keywords"/>

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon"/>
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"/>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet"/>

    <!-- Vendor CSS Files -->
    <link href="assets/template/assets/vendor/aos/aos.css" rel="stylesheet"/>
    <link href="assets/template/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="assets/template/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"/>
    <link href="assets/template/assets/vendor/boxicons/css/boxicons.css" rel="stylesheet"/>
    <link href="assets/template/assets/vendor/glightbox/css/glightbox.css" rel="stylesheet"/>
    <link href="assets/template/assets/vendor/remixicon/remixicon.css" rel="stylesheet"/>
    <link href="assets/template/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet"/>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>

    <!-- Template Main CSS File -->
    <link href="assets/template/assets/css/style.css" rel="stylesheet"/>

    <!-- =======================================================
    * Template Name: Arsha - v4.10.0
    * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
</head>
<body>
    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top ">
        <div class="container d-flex align-items-center">

            <h1 class="logo me-auto"><a href="/">SIPPDPU</a></h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto active" href="#hero">Beranda</a></li>
                    <li><a class="nav-link scrollto" href="#about">Tentang Kami</a></li>
                    <li><a class="nav-link scrollto" href="#services">Layanan</a></li>
                    <li><a class="nav-link scrollto" href="#contact">Pengaduan</a></li>
                    <li><a class="getstarted scrollto" href="/admin/login.aspx" runat="server">Login</a></li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->

        </div>
    </header><!-- End Header -->
    <!-- ======= Hero Section ======= -->
<section id="hero" class="d-flex align-items-center">

    <div class="container">
        <div class="row">
            <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
                <h1>Sistem Informasi Pelayanan Publik Pada Dinas Pekerjaan Umum</h1>
                <h2>Sistem Informasi Pelayanan Berbasis Website untuk Masyarakat Umum</h2>
                <div class="d-flex justify-content-center justify-content-lg-start">
                    <a href="#about" class="btn-get-started scrollto">Mulai</a>
                    <a href="https://www.youtube.com/watch?v=bHCGidn-1Q8&ab_channel=LAWmotion" class="glightbox btn-watch-video"><i class="bi bi-play-circle"></i><span>Watch Video</span></a>
                </div>
            </div>
            <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">
                <img src="assets/template/assets/img/hero-img.png" class="img-fluid animated" alt="">
            </div>
        </div>
    </div>

</section><!-- End Hero -->

<main id="main">

    <!-- ======= Clients Section ======= -->
    <section id="clients" class="clients section-bg">
        <div class="container">

            <div class="row" data-aos="zoom-in">

                <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
                    <img src="assets/image/INDONESIA_logo.png" class="img-fluid" alt=""/>
                </div>

                <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
                    <img src="assets/image/LOGO RESMI PCR.png" class="img-fluid" alt=""/>
                </div>

                <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
                    <img src="assets/image/logo_dinas_pendidikan.png" class="img-fluid" alt=""/>
                </div>

                <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
                    <img src="assets/image/Logo_PU.jpg" class="img-fluid" alt=""/>
                </div>

                <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
                    <img src="assets/image/logo_pekanbaru.png" class="img-fluid" alt=""/>
                </div>

            </div>

        </div>
    </section><!-- End Cliens Section -->
    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>Tentang Kami</h2>
            </div>

            <div class="row content">
                <div class="col-lg-6">
                    <p>
                        Pelayanan publik adalah “Sebagai segala bentuk kegiatan pelayanan
                        umum yang dilaksanakan oleh Instansi Pemerintahan di Pusat dan
                        Daerah, dan di lingkungan BUMN/BUMD dalam bentuk barang dan
                        /atau jasa, baik dalam pemenuhan kebutuhan masyarakat Lembaga
                        Administrasi Negara. Terdapat 3 unsur penting dalam pelayanan publik, yaitu
                    </p>
                    <ul>
                        <li>
                            <i class="ri-check-double-line"></i> Organisasi penyelenggara pelayanan publik
                        </li>
                        <li>
                            <i class="ri-check-double-line"></i> Penerima layanan (pelanggan) yaitu
                            orang atau masyarakat atau organisasi yang berkepentingan
                        </li>
                        <li>
                            <i class="ri-check-double-line"></i> kepuasan yang diberikan dan/atau diterima oleh
                            penerima layanan (pelanggan)
                        </li>
                    </ul>
                </div>
                <div class="col-lg-6 pt-4 pt-lg-0">
                    <p>
                        Undang-Undang Nomor 25 Tahun 2009 Tentang Pelayanan Publik,
                        dijelaskan bahwa pelayanan publik adalah kegiatan atau
                        rangkaian kegiatan dalam rangka pemenuhan kebutuhan
                        pelayanan sesuai dengan peraturan perundang- undangan
                        bagi setiap warga negara dan penduduk atas barang, jasa,
                        dan/atau pelayanan administratif yang disediakan oleh
                        penyelenggara pelayanan publik.
                    </p>
                </div>
            </div>

        </div>
    </section><!-- End About Us Section -->
    <!-- ======= Services Section ======= -->
    <section id="services" class="services section-bg">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>Layanan</h2>
                <p>Layanan Pelayanan Publik Pada Dinas Pekerjaan Umum yang tersedia</p>
            </div>

            <div class="row">
                <div class="col-xl-3 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
                    <div class="icon-box">
                        <div class="icon"><i class="bx bxl-gmail"></i></div>
                        <h4><a href="#">Kontak</a></h4>
                        <p>Mengontak staff pengurus website untuk memperoleh informasi</p>
                    </div>
                </div>

                <div class="col-xl-3 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in" data-aos-delay="200">
                    <div class="icon-box">
                        <div class="icon"><i class="bx bx-file"></i></div>
                        <h4><a href="#">Pengaduan</a></h4>
                        <p>Melakukan pengaduan pada form yang sudah disediakan</p>
                    </div>
                </div>

                <div class="col-xl-3 col-md-6 d-flex align-items-stretch mt-4 mt-xl-0" data-aos="zoom-in" data-aos-delay="300">
                    <div class="icon-box">
                        <div class="icon"><i class="bx bx-bell"></i></div>
                        <h4><a href="#">Notifikasi</a></h4>
                        <p>Mendapatkan pemberitahuan dari laporan yang sudah diberikan</p>
                    </div>
                </div>

                <div class="col-xl-3 col-md-6 d-flex align-items-stretch mt-4 mt-xl-0" data-aos="zoom-in" data-aos-delay="400">
                    <div class="icon-box">
                        <div class="icon"><i class="bx bx-check-circle"></i></div>
                        <h4><a href="#">Pemeriksaan</a></h4>
                        <p>Melakukan pemeriksaan penuh terhadap laporan yang diberikan</p>
                    </div>
                </div>

            </div>

        </div>
    </section><!-- End Services Section -->
    <!-- ======= Frequently Asked Questions Section ======= -->
    <section id="faq" class="faq section-bg">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>Frequently Asked Questions (FAQ)</h2>
                <p>Berbagai pertanyaan yang sering ditanyakan oleh masyarakat umum</p>
            </div>

            <div class="faq-list">
                <ul>
                    <li data-aos="fade-up" data-aos-delay="100">
                        <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" class="collapse" data-bs-target="#faq-list-1">Bagaimana menghubungi staff website layanan ini? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                        <div id="faq-list-1" class="collapse show" data-bs-parent=".faq-list">
                            <p>
                                Anda dapat menghubungi staff kami melalui email ataupun menelpon langsung pada nomor yang sudah tertera
                            </p>
                        </div>
                    </li>

                    <li data-aos="fade-up" data-aos-delay="200">
                        <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" data-bs-target="#faq-list-2" class="collapsed">Bagaimana caranya melakukan pengaduan? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                        <div id="faq-list-2" class="collapse" data-bs-parent=".faq-list">
                            <p>
                                Untuk melakukan pengaduan, silahkan menuju ke halaman pengaduan atau menggunakan navigasi. Lalu isi data diri dan pengaduan yang ingin dilakukan
                            </p>
                        </div>
                    </li>

                    <li data-aos="fade-up" data-aos-delay="300">
                        <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" data-bs-target="#faq-list-3" class="collapsed">Apakah bisa melihat respon dari pengaduan yang dilakukan? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                        <div id="faq-list-3" class="collapse" data-bs-parent=".faq-list">
                            <p>
                                Fitur tersebut sudah dibuat dan tersedia dibawah form pengaduan, silahkan diperiksa
                            </p>
                        </div>
                    </li>

                </ul>
            </div>

        </div>
    </section><!-- End Frequently Asked Questions Section -->
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>Pengaduan</h2>
            </div>

            <div class="row">

                <div class="col-lg-5 d-flex align-items-stretch">
                    <div class="info">
                        <div class="address">
                            <i class="bi bi-geo-alt"></i>
                            <h4>Lokasi:</h4>
                            <p>Jl. Soekarno - Hatta, Labuh Baru Bar., Kec. Payung Sekaki, Kota Pekanbaru, Riau 28292</p>
                        </div>

                        <div class="email">
                            <i class="bi bi-envelope"></i>
                            <h4>Email:</h4>
                            <p>sippdpu@gmail.com</p>
                        </div>

                        <div class="phone">
                            <i class="bi bi-phone"></i>
                            <h4>No Telepon:</h4>
                            <p>+62810455632</p>
                        </div>

                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.660891938932!2d101.4172764145379!3d0.5089838996286628!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31d5a95bb3be8e5d%3A0x653e1c6ff28b47b1!2sJl.%20Soekarno%20-%20Hatta%2C%20Labuh%20Baru%20Bar.%2C%20Kec.%20Payung%20Sekaki%2C%20Kota%20Pekanbaru%2C%20Riau%2028292!5e0!3m2!1sid!2sid!4v1673942981120!5m2!1sid!2sid" frameborder="0" style="border:0; width: 100%; height: 290px;" allowfullscreen></iframe>
                    </div>

                </div>

                <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
                    <form runat ="server" class="php-email-form">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="name">Nama</label>
                                <asp:TextBox ID ="nama_pengadu" runat ="server" CssClass ="form-control" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="name">Email</label>
                                <asp:TextBox ID ="email_pengadu" runat ="server" CssClass ="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name">Subjek</label>
                            <asp:TextBox ID ="subjek_pengadu" runat ="server" CssClass ="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="name">Pesan</label>
                            <asp:TextBox ID ="pesan_pengadu" TextMode ="MultiLine" Rows ="10" runat ="server" CssClass ="form-control" />
                        </div>
                        <div class="text-center">
                            <asp:Button ID ="btn_kirim_pengaduan" runat ="server" CssClass ="btn btn-primary" Text ="Kirim" OnClick ="btn_kirim_pengaduan_Click"
                                CausesValidation="false" UseSubmitBehavior="False" />
                        </div>
                    </form>
                </div>

            </div>

        </div>
    </section><!-- End Contact Section -->
    <!-- ======= Table Pengaduan Section ======= -->
    <section id="respon" class="contact">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>Respon Pengaduan</h2>
            </div>

            <div class="row">

                <div class="col-lg-12 d-flex align-items-stretch">
                    <div class="info">
                        <div class="table-responsive-md">
                            <asp:PlaceHolder ID = "respon_table" runat="server" />
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </section><!-- End Table Pengaduan Section -->

</main><!-- End #main -->
    <footer id="footer">

        <div class="footer-top">
            <div class="container">
                <div class="row">

                    <div class="col-lg-3 col-md-6 footer-contact">
                        <h3>SIPPDPU</h3>
                        <p>
                    Jl. Soekarno - Hatta, Labuh Baru Bar.,<br /> Kec. Payung Sekaki, Kota Pekanbaru, Riau 28292<br />
                            <strong>Phone : </strong> +62810455632<br>
                            <strong>Email : </strong> sippdpu@gmail.com<br>
                        </p>
                    </div>

                    <div class="col-lg-3 col-md-6 footer-links">
                        <h4>Link Navigasi</h4>
                        <ul>
                            <li><i class="bx bx-chevron-right"></i> <a href="#hero">Beranda</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#about">Tentang Kami</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#services">Layanan</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#contact">Pengaduan</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-md-6 footer-links">
                        <h4>Layanan</h4>
                        <ul>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Kontak</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Pengaduan</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Notifikasi</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Pemeriksaaan</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-md-6 footer-links">
                        <h4>Sosial Media</h4>
                        <div class="social-links mt-3">
                            <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                            <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                            <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                            <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                            <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="container footer-bottom clearfix">
            <div class="copyright">
                &copy; Copyright <strong><span>SIPPDPU</span></strong>. All Rights Reserved
            </div>
            <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/ -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
        </div>
    </footer><!-- End Footer -->

    <div id="preloader"></div>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="assets/template/assets/vendor/aos/aos.js"></script>
    <script src="assets/template/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/template/assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/template/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/template/assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/template/assets/vendor/waypoints/noframework.waypoints.js"></script>
    <script src="assets/template/assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/template/assets/js/main.js"></script>
</body>
</html>
