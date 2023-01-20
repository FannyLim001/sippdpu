<%@ Page Language="vb" MasterPageFile="~/admin/layout/layout.Master" AutoEventWireup="false" CodeBehind="dashboard.aspx.vb" Inherits="SIPPDPU_1._0._0.dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
</asp:Content>  
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">  
     <main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="/">Beranda</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-8">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">

                <div class="card-body">
                  <h5 class="card-title">Pengaduan <span>| Total</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                        <asp:Label ID="total_pengaduan" runat ="server" CssClass ="h6" Text ="10"/>
                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">

                <div class="card-body">
                  <h5 class="card-title">Perbaikan Jalan <span>| Total</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <asp:Label ID="total_jalan_diperbaiki" runat ="server" CssClass ="h6" Text ="10" />

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->

            <!-- Customers Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card customers-card">

                <div class="card-body">
                  <h5 class="card-title">Admin <span>| Total</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <asp:Label ID="total_admin" runat ="server" CssClass ="h6" Text ="10" />

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->

            <!-- Reports -->
            <div class="col-12">
              <div class="card">

                <div class="card-body">
                  <h5 class="card-title">Pengaduan</h5>

                    <div>
                <canvas id="pengaduan"></canvas>
             </div>

                    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

                    <script>
                        const total_pengaduan = document.getElementById('pengaduan');
                        var jan = <%= Me.jan%>
                        var feb = <%= Me.feb%>
                        var mar = <%= Me.mar%>
                        var apr = <%= Me.apr%>
                        var mei = <%= Me.mei%>
                        var jun = <%= Me.jun%>
                        var jul = <%= Me.jul%>
                        var agu = <%= Me.agu%>
                        var sept = <%= Me.sept%>
                        var okt = <%= Me.okt%>
                        var nov = <%= Me.nov%>
                        var dec = <%= Me.dec%>

                        new Chart(total_pengaduan, {
                            type: 'line',
                            data: {
                                labels: ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'],
                                datasets: [{
                                    label: 'Total Pengaduan di 2023',
                                    data: [jan,feb,mar,apr,mei,jun,jul,agu,sept,okt,nov,dec],
                                    borderWidth: 1,
                                    borderColor: 'rgb(75, 192, 192)'
                                }]
                            },
                            options: {
                                scales: {
                                    y: {
                                        beginAtZero: true
                                    }
                                }
                            }
                        });
                    </script>
                </div>

              </div>
            </div><!-- End Reports -->

          </div>
        </div><!-- End Left side columns -->

        <!-- Right side columns -->
        <div class="col-lg-4">

          <!-- Website Traffic -->
          <div class="card">

            <div class="card-body pb-0">
              <h5 class="card-title">Perbaikan Jalan</h5>
                <div>
                      <canvas id="perbaikan_jalan"></canvas>
                    </div>

                    <script>
                        const ctx = document.getElementById('perbaikan_jalan');
                        var jalanRusak = <%= Me.total_jalan_rusak %>
                        var jalanDiperbaiki = <%= Me.jalan_diperbaiki %>

                        new Chart(ctx, {
                            type: 'bar',
                            data: {
                                labels: ['Rusak', 'Sedang diperbaiki'],
                                datasets: [{
                                    label: 'Perbaikan Jalan',
                                    data: [jalanRusak, jalanDiperbaiki],
                                    borderWidth: 1
                                }]
                            },
                            options: {
                                scales: {
                                    y: {
                                        beginAtZero: true
                                    }
                                }
                            }
                        });
                    </script>
            </div>
          </div><!-- End Website Traffic -->

        </div><!-- End Right side columns -->

      </div>
    </section>

  </main><!-- End #main -->  
</asp:Content>

