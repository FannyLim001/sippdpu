<%@ Page Language="vb" MasterPageFile="~/admin/layout/layout.Master" AutoEventWireup="false" CodeBehind="edit_jalan.aspx.vb" Inherits="SIPPDPU_1._0._0.edit_jalan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
</asp:Content>  
<asp:Content ID="pengaduan" ContentPlaceHolderID="body" runat="server">
    <main id="main" class="main">
        <div class="card">
            <div class="card-body">
              <h5 class="card-title">Edit Jalan</h5>

              <!-- General Form Elements -->
              <form>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Nama Jalan</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Lokasi</label>
                  <div class="col-sm-10">
                    <input type="email" class="form-control">
                  </div>
                </div>
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">Status</label>
                  <div class="col-sm-10">
                    <select class="form-select" aria-label="Default select example">
                      <option selected>Pilih Status Jalan</option>
                      <option value="Belum ditinjau">Belum ditinjau</option>
                      <option value="Ditinjau">Ditinjau</option>
                      <option value="Proses">Proses</option>
                      <option value="Selesai">Selesai</option>
                    </select>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputNumber" class="col-sm-2 col-form-label">Foto Jalan</label>
                  <div class="col-sm-10">
                    <input class="form-control" type="file" id="formFile">
                  </div>
                </div>
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Edit</button>
                  </div>
                </div>

              </form><!-- End General Form Elements -->

            </div>
          </div>
    </main>
</asp:Content>
