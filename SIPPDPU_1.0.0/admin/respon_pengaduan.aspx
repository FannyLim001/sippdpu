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
                    <label for="inputText" class="col-sm-12 col-form-label">User</label>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
                  <div class="col-sm-10">
                    <label for="inputText" class="col-sm-12 col-form-label">user@gmail.com</label>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Subjek</label>
                  <div class="col-sm-10">
                    <label for="inputText" class="col-sm-12 col-form-label">Apa aja</label>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Pesan</label>
                  <div class="col-sm-10">
                    <label for="inputPassword" class="col-sm-12 col-form-label">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</label>
                  </div>
                </div>
                 <div class="row mb-3">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Respon</label>
                  <div class="col-sm-10">
                    <textarea class="form-control" style="height: 100px"></textarea>
                  </div>
                </div>
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Kirim</button>
                  </div>
                </div>

              </form><!-- End General Form Elements -->

            </div>
          </div>
    </main>
</asp:Content>
