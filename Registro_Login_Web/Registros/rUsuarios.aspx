<%@ Page Title="Registro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="Registro_Login_Web.rUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-group row">
        <label class="control-label col-lg-8" for="usarioid">Usuario ID:</label>
        <div class="col-sm-1 col-lg-8 col-xs6">
            <asp:TextBox type="Number" class="form-control" ID="usuarioidTextBox" Text="0" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="UsuarioIdRequiredFieldValidator" runat="server" ErrorMessage="Ingrese solo numero!" ControlToValidate="usuarioidTextBox" Display="Dynamic" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ErrorMessage="Ingrese solo numeros!" ControlToValidate="usuarioidTextBox" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
        </div>
    </div>

      <div class="form-group row">
                <label class="control-label col-lg-8" for="FechaTextBox">Fecha:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox ID="FechaTextBox" class="form-control input-group" TextMode="Date" runat="server" />
                </div>
            </div>

    <div class="form-group">

        <label class="col-lg-8 control-label">Nombres</label>

        <div class="col-lg-8">

            <input type="text" class="form-control" name="nombre" />

        </div>

    </div>


    <div class="form-group">

        <label class="col-lg-8 control-label">Apellidos</label>

        <div class="col-lg-8">

            <input type="text" class="form-control" name="apellido" />

        </div>

    </div>

    <div class="form-group">

        <label class="col-lg-8 control-label">Correo Electrónico</label>

        <div class="col-lg-8">

            <input type="text" class="form-control" name="email" />

        </div>

    </div>



    <div class="form-group">

        <label class="col-lg-8 control-label">Contraseña</label>

        <div class="col-lg-8">

            <input type="password" class="form-control" name="password" />

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

        <div class="col-lg-8 col-lg-offset-1">

            <button type="submit" class="btn btn-primary">Nuevo</button>

        </div>

        <div class="col-lg-8 col-lg-offset-2">

            <button type="submit" class="btn btn-success left">Guardar</button>

        </div>

        <div class="col-lg-8 col-lg-offset-3">

            <button type="submit" class="btn btn-danger">Eliminar</button>
        </div>
    </div>
    <div>
    </div>



</asp:Content>
