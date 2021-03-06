﻿<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Registro_Login_Web.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!------ Include the above in your HEAD tag ---------->

    <div class="container">
        <div class="row">
            <div class="span12">

                <fieldset>
                    <div id="legend">
                        <h2>Iniciar Sesión</h2>
                    </div>
                    <div class="control-group">
                        <!-- Username -->
                        <asp:Label ID="NombreLabel" runat="server" Text="Usuario"></asp:Label>
                        <div class="controls">
                            <asp:TextBox ID="Username" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="control-group">
                        <!-- Password-->
                        <asp:Label ID="Label1" runat="server" Text="Contraseña"></asp:Label>
                        <div class="controls">
                            <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>

                    <div class="control-group">
                        <!-- Button -->
                        <div class="controls">
                            <button class="btn btn-success">Login</button>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
</asp:Content>
