<%@ Page Title="Registro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="Registro_Login_Web.rUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="form-group row">
            <label class="control-label col-lg-8 col-sm-1" for="usarioid">Usuario ID:</label>
            <div class="col-sm-1 col-lg-8 col-xs6">
                <asp:TextBox type="Number" class="form-control" ID="usuarioidTextBox" Text="0" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="UsuarioIdRequiredFieldValidator" runat="server" ErrorMessage="Ingrese solo numero!" ControlToValidate="usuarioidTextBox" Display="Dynamic" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ErrorMessage="Ingrese solo numeros!" ControlToValidate="usuarioidTextBox" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="form-group row">
            <label class="control-label col-lg-8 col-sm-1" for="FechaTextBox">Fecha:</label>
            <div class="col-sm-1 col-lg-8 col-xs6">
                <asp:TextBox ID="FechaTextBox" class="form-control input-group" TextMode="Date" runat="server" />
            </div>
        </div>

        <div class="form-group">
            <label class="col-lg-8 control-label col-sm-1">Nombres</label>
            <div class="col-sm-1 col-lg-8 col-xs6">
                <asp:TextBox type="text" class="form-control" ID="nombresTextBox" placeholder="Ingresar Nombres" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="NombreRequiredFieldValidator" runat="server" ErrorMessage="Ingrese algun nombre!" ControlToValidate="nombresTextBox" Display="Dynamic" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="NombreRegularExpressionValidator" runat="server" ErrorMessage="Ingrese algun nombre!" ControlToValidate="nombresTextBox" ValidationExpression="^[a-z & A-Z]*$"></asp:RegularExpressionValidator>
            </div>
        </div>


        <div class="form-group">
            <label class="col-lg-8 control-label col-sm-1">Apellidos</label>
            <div class="col-sm-1 col-lg-8 col-xs6">
                <input type="text" class="form-control" name="apellido" />
            </div>
        </div>

        <div class="form-group row">
            <label class="control-label col-lg-8 control-label" for="nomUser">Usuario</label>
            <div class="col-lg-8 col-xs6 col-sm-1">
                <asp:TextBox type="text" class="form-control" ID="nomUserTextBox" placeholder="Ingresar Usuario" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="UserRequiredFieldValidator1" runat="server" ErrorMessage="Ingrese algun nombre!" ControlToValidate="nomUserTextBox" Display="Dynamic" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="UserRegularExpressionValidator1" runat="server" ErrorMessage="Ingrese algun nombre!" ControlToValidate="nomUserTextBox" ValidationExpression="^[a-z & A-Z]*$"></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="form-group">

            <label class="col-lg-8 control-label">Correo Electrónico</label>

            <div class="col-lg-8">
                    <asp:TextBox type="email" class="form-control" ID="EmailTextBox" runat="server" placeholder="Ingresar Correo"></asp:TextBox>
                </div>
        </div>



        <div class="form-group">

            <label class="col-lg-8 control-label col-sm-1">Contraseña</label>

            <div class="col-lg-8 col-sm-1 ">
                 <asp:TextBox type="text" class="form-control" ID="contraseñaTextBox" placeholder="Ingresar Contraseña" runat="server"></asp:TextBox>
            </div>

        </div>
    </div>



        <div class="form-group">

            <label class="col-lg-8 control-label">Confirmar Contraseña</label>

            <div class="col-lg-8">

                <input type="password" class="form-control" name="confirmpassword" />

            </div>

        </div>




        <div class="form-group">

            <label class="col-lg-8 control-label">Fecha de Nacimiento</label>

            <div class="col-lg-8">

                <input type="text" class="form-control" name="datetimepicker" id="datetimepicker" data-date-format="YYYY-MM-DD" />

            </div>

        </div>


        <div class="form-group">

            <label class="col-lg-8 control-label">Cedula</label>

            <div class="col-lg-8">

                <input type="text" class="form-control" name="cedula" />

            </div>

        </div>

        <div class="form-group">

            <label class="col-lg-8 control-label">Teléfono</label>

            <div class="col-lg-8">

                <input type="text" class="form-control" name="telefono" />

            </div>

        </div>



        <div class="form-group">

            <label class="col-lg-8 control-label">Direccion</label>

            <div class="col-lg-8">

                <input type="text" class="form-control" name="telefono_cel" />

            </div>

        </div>


        <div class="form-group">
            <div class="col-sm-1 col-md-5">
                <div class="panel">
                    <div class="text-center">
                        <div class="form-group">
                            <asp:Button ID="BtnNuevo" runat="server" Text="Nuevo" class="btn btn-primary btn-sm" />
                            <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" />
                            <asp:Button ID="BtnEliminar" runat="server" Text="Eliminar" class="btn btn-danger btn-sm" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
</asp:Content>

