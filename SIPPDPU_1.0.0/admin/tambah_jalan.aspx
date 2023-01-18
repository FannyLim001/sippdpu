<%@ Page Language="vb" MasterPageFile="~/admin/layout/layout.Master" AutoEventWireup="false" CodeBehind="tambah_jalan.aspx.vb" Inherits="SIPPDPU_1._0._0.tambah_jalan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
</asp:Content>  
<asp:Content ID="pengaduan" ContentPlaceHolderID="body" runat="server">
    <main id="main" class="main">
        <div class="card">
            <div class="card-body">
              <h5 class="card-title">Tambah Jalan</h5>

              <!-- General Form Elements -->
              <form>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Nama Jalan</label>
                  <div class="col-sm-10">
                    <asp:TextBox ID ="nama_jalan" runat ="server" CssClass ="form-control" />
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Lokasi</label>
                  <div class="col-sm-10">
                    <asp:TextBox ID ="lokasi_jalan" runat ="server" CssClass ="form-control" />
                  </div>
                </div>
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">Status</label>
                  <div class="col-sm-10">
                    <asp:DropDownList ID="status_jalan" runat ="server" CssClass ="form-control">
                        <asp:ListItem>Belum ditinjau</asp:ListItem>
                        <asp:ListItem>Ditinjau</asp:ListItem>
                        <asp:ListItem>Proses</asp:ListItem>
                        <asp:ListItem>Selesai</asp:ListItem>
                    </asp:DropDownList>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputNumber" class="col-sm-2 col-form-label">Foto Jalan</label>
                  <div class="col-sm-10">
                    <asp:FileUpload ID ="foto_jalan" runat ="server" CssClass ="form-control" />
                  </div>
                </div>
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <asp:Button ID ="btn_tambah_jalan" runat ="server" CssClass ="btn btn-primary" Text ="Tambah" />
                  </div>
                </div>

              </form><!-- End General Form Elements -->

            </div>
          </div>
    </main>
</asp:Content>
