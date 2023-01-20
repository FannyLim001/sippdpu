<%@ Page Language="vb" MasterPageFile="~/admin/layout/layout.Master" AutoEventWireup="false" CodeBehind="kelola_admin.aspx.vb" Inherits="SIPPDPU_1._0._0.kelola_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
</asp:Content>  
<asp:Content ID="kelola" ContentPlaceHolderID="body" runat="server">
    <main id="main" class="main">
        <div class="row">
        <div class="col-12">
            <div class="card">
            <div class="card-body">
                <br />
                <div class ="row">
                    <div class ="col-10">
                        <h5 class="card-title">Kelola Admin</h5>
                    </div>
                    <div class ="col-2">
                        <a href ="tambah_admin.aspx" class="btn btn-primary"><i class="bi bi-plus-square"></i>&nbsp;&nbsp;Tambah Data</a>
                    </div>
                </div>
              <asp:Repeater ID="admin_table" runat="server">
                    <HeaderTemplate>          
                      <table class="table">
                        <tr>
                          <th>No</th>
                          <th>Nama</th>
                          <th>Email</th>
                          <th>Password</th>
                          <th>Aksi</th>
                        </tr>            
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                          <td><%#Eval("id_admin")%></td>
                          <td><%#Eval("username")%></td>
                          <td><%#Eval("email")%></td>
                          <td><%#Eval("password")%></td>
                          <td>
                              <asp:Button ID="edit_admin" OnCommand ="edit_admin_Command" CommandArgument='<%#Eval("id_admin")%>' runat="server" Text="Edit" CssClass="btn btn-info" />&nbsp;&nbsp;
                              <asp:Button ID="hapus_admin" OnCommand="hapus_admin_Command" CommandArgument='<%#Eval("id_admin")%>' runat="server" Text="Hapus" CssClass="btn btn-danger" />
                          </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                      </table>
                </FooterTemplate>
              </asp:Repeater>
                
            </div>
          </div>
        </div>
    </div>
    </main>
</asp:Content>
