<%@ Page Language="vb" MasterPageFile="~/admin/layout/layout.Master" AutoEventWireup="false" CodeBehind="pengaduan.aspx.vb" Inherits="SIPPDPU_1._0._0.pengaduan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
</asp:Content>  
<asp:Content ID="pengaduan" ContentPlaceHolderID="body" runat="server">
    <main id="main" class="main">
        <div class="row">
        <div class="col-12">
            <div class="card">
            <div class="card-body">
                <h5 class="card-title">Pengaduan</h5>

                <asp:Repeater ID="tabel_pengaduan" runat="server">
                    <HeaderTemplate>          
                      <table class="table">
                        <tr>
                          <th>No</th>
                          <th>Nama</th>
                          <th>Email</th>
                          <th>Subjek</th>
                          <th>Status</th>
                          <th>Aksi</th>
                        </tr>            
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                          <td><%#Eval("id_pengaduan")%></td>
                          <td><%#Eval("nama_pengadu")%></td>
                          <td><%#Eval("email_pengadu")%></td>
                          <td><%#Eval("subjek")%></td>
                          <td><%#Eval("status")%></td>
                          <td><asp:Button ID="respon_pengaduan" OnCommand="respon_pengaduan_Command" CommandArgument='<%#Eval("id_pengaduan")%>' runat="server" Text="Respon" CssClass="btn btn-primary" /></td>
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
