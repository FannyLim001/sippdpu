<%@ Page Language="vb" MasterPageFile="~/admin/layout/layout.Master" AutoEventWireup="false" CodeBehind="perbaikan_jalan.aspx.vb" Inherits="SIPPDPU_1._0._0.perbaikan_jalan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
</asp:Content>  
<asp:Content ID="perbaikan" ContentPlaceHolderID="body" runat="server">
    <main id="main" class="main">
        <div class="row">
        <div class="col-12">
            <div class="card">
            <div class="card-body">
                <br />
                <div class ="row">
                    <div class ="col-10">
                        <h5 class="card-title">Perbaikan Jalan</h5>
                    </div>
                    <div class ="col-2">
                        <a href ="tambah_jalan.aspx" class="btn btn-primary"><i class="bi bi-plus-square"></i>&nbsp;&nbsp;Tambah Data</a>
                    </div>
                </div>
                
                <asp:Repeater ID="jalan_Table" runat="server">
                    <HeaderTemplate>          
                      <table class="table">
                        <tr>
                          <th>No</th>
                          <th>Nama Jalan</th>
                          <th>Lokasi</th>
                          <th>Status</th>
                          <th>Aksi</th>
                        </tr>            
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                          <td><%#Eval("id_jalan")%></td>
                          <td><%#Eval("nama_jalan")%></td>
                          <td><%#Eval("lokasi")%></td>
                          <td><%#Eval("status")%></td>
                          <td>
                              <asp:Button ID="edit_jalan" OnCommand="edit_jalan_Command" CommandArgument='<%#Eval("id_jalan")%>' runat="server" Text="Edit" CssClass="btn btn-info" />&nbsp;&nbsp;
                              <asp:Button ID="hapus_jalan" OnCommand="hapus_jalan_Command" CommandArgument='<%#Eval("id_jalan")%>' runat="server" Text="Hapus" CssClass="btn btn-danger" />
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
