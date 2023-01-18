<%@ Page Language="vb" MasterPageFile="~/admin/layout/layout.Master" AutoEventWireup="false" CodeBehind="edit_admin.aspx.vb" Inherits="SIPPDPU_1._0._0.edit_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
</asp:Content>  
<asp:Content ID="pengaduan" ContentPlaceHolderID="body" runat="server">
    <main id="main" class="main">
        <div class="card">
            <div class="card-body">
              <h5 class="card-title">Edit Admin</h5>

              <!-- General Form Elements -->
              <form>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Username</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
                  <div class="col-sm-10">
                    <input type="email" class="form-control">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Password</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control">
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
