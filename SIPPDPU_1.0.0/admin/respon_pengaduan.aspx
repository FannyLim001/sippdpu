<%@ Page Language="vb" MasterPageFile="~/admin/layout/layout.Master" AutoEventWireup="false" CodeBehind="respon_pengaduan.aspx.vb" Inherits="SIPPDPU_1._0._0.tambah_pengaduan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
</asp:Content>  
<asp:Content ID="pengaduan" ContentPlaceHolderID="body" runat="server">
    <main id="main" class="main">
        <div class="card">
            <div class="card-body">
              <h5 class="card-title">Respon Pengaduan</h5>

              <!-- General Form Elements -->
              <form>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Nama</label>
                  <div class="col-sm-10">
                      <asp:Label ID ="nama_pengadu" runat ="server" CssClass ="col-sm-12 col-form-label" />
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
                  <div class="col-sm-10">
                    <asp:Label ID ="email_pengadu" runat ="server" CssClass ="col-sm-12 col-form-label" />
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Subjek</label>
                  <div class="col-sm-10">
                    <asp:Label ID ="subjek_pengadu" runat ="server" CssClass ="col-sm-12 col-form-label" />
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Pesan</label>
                  <div class="col-sm-10">
                    <asp:Label ID ="pesan_pengadu" runat ="server" CssClass ="col-sm-12 col-form-label" />
                  </div>
                </div>
                 <div class="row mb-3">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Respon</label>
                  <div class="col-sm-10">
                    <asp:TextBox ID ="respon" TextMode ="MultiLine" Rows ="10" runat ="server" CssClass ="form-control" />
                  </div>
                </div>
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <asp:Button ID ="btn_kirim_respon" runat ="server" CssClass ="btn btn-primary" Text ="Kirim" />
                  </div>
                </div>

              </form><!-- End General Form Elements -->

            </div>
          </div>
    </main>
</asp:Content>
