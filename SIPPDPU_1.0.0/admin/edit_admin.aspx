<%@ Page Language="vb" MasterPageFile="~/admin/layout/layout.Master" AutoEventWireup="false" CodeBehind="edit_admin.aspx.vb" Inherits="SIPPDPU_1._0._0.edit_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
</asp:Content>  
<asp:Content ID="pengaduan" ContentPlaceHolderID="body" runat="server">
    <main id="main" class="main">
        <div class="card">
            <div class="card-body">
              <h5 class="card-title">Edit Admin</h5>

              <!-- General Form Elements -->
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Username</label>
                  <div class="col-sm-10">
                    <asp:TextBox ID ="txt_username" runat ="server" CssClass ="form-control" />
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
                  <div class="col-sm-10">
                    <asp:TextBox ID ="txt_email" runat ="server" CssClass ="form-control" />
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Password</label>
                  <div class="col-sm-10">
                    <asp:TextBox ID ="txt_password" runat ="server" CssClass ="form-control" />
                  </div>
                </div>
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <asp:Button ID ="btn_edit_admin" runat ="server" CssClass ="btn btn-primary" Text ="Edit" />
                  </div>
                </div>

            </div>
          </div>
    </main>
</asp:Content>
