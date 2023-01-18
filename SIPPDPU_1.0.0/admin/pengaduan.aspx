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
                
              <asp:GridView id="tabel_pengaduan" runat ="server" AutoGenerateColumns ="false" CssClass ="table" DataKeyNames ="Id_pengaduan">
                  <Columns>
                      <asp:BoundField DataField ="Id_pengaduan" HeaderText ="No" />
                      <asp:BoundField DataField ="Nama_pengadu" HeaderText ="Nama" />
                      <asp:BoundField DataField ="Email_pengadu" HeaderText ="Email" />
                      <asp:BoundField DataField ="Subjek" HeaderText ="Subjek" />
                      <asp:BoundField DataField ="Status" HeaderText ="Status" />
                  </Columns>
              </asp:GridView>
            </div>
          </div>
        </div>
    </div>
    </main>
</asp:Content>
