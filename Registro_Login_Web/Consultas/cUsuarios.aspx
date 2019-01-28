<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cUsuarios.aspx.cs" Inherits="Registro_Login_Web.cUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Consulta de Usuarios</h2>
    <<div class="form-row justify-content-center">
        <div class="form-group col-md-2">
            <asp:Label Text="Filtro" ForeColor="#0000FF" runat="server" />
            <asp:DropDownList ID="FiltroDropDownList" CssClass="form-control" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>UsuarioId</asp:ListItem>
                <asp:ListItem>Nombre</asp:ListItem>
                <asp:ListItem>Tipo</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-group col-md-3">
            <asp:Label ID="Label1" runat="server" ForeColor="#0000FF">Criterio:</asp:Label>
            <asp:TextBox ID="CriterioTextBox" AutoCompleteType="Disabled" class="form-control input-group" runat="server"></asp:TextBox>
        </div>

        <div class="form-row justify-content-center">
            <div class="form-group col-md-2">
                <asp:Label Text="Desde" ForeColor="#0000FF" runat="server" />
                <asp:TextBox ID="DesdeTextBox" class="form-control input-group" TextMode="Date" runat="server" />
            </div>
            <div class="form-group col-md-2">
                <asp:Label Text="Hasta" ForeColor="#0000FF" runat="server" />
                <asp:TextBox ID="HastaTextBox" class="form-control input-group" TextMode="Date" runat="server" />
            </div>
        </div>
        <hr>
        <div class="col-lg-9">
                <br>
                <asp:Button ID="BtnBuscar" class="form-control btn btn-primary btn-sm" runat="server" Text="Buscar" />
            </div>
        </div>

      <div class="form-row justify-content-center">
            <asp:GridView ID="UsuarioGridView" runat="server" class="table table-condensed table-bordered table-responsive" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" BorderColor="#00FFCC" BorderStyle="Double">
                <AlternatingRowStyle BackColor="Black" />
                <Columns>
                    <asp:BoundField DataField="UsuarioId" HeaderText="Usuario Id" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="NombreUser" HeaderText="Usuario" />
                    <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" />
                    <asp:BoundField DataField="vContraseña" HeaderText="Verificación" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Cedula" HeaderText="Cedula" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" />
                    <asp:BoundField DataField="Nivel de Acceso" HeaderText="Nivel de Acceso" />
                </Columns>
                <HeaderStyle BackColor="LightCyan" Font-Bold="True" />
            </asp:GridView>
        </div>
        <hr>
</asp:Content>
