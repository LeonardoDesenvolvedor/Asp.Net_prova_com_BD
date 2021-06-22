<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="inserir.aspx.cs" Inherits="Funcionario.inserir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="text-center text-primary">
        <h2>Cadastro de Usuários</h2>
    </div>

    <div class="row" style="margin-top: 15px">
        <div class="col-md-12">
            <label>Nome:</label>

            <asp:RequiredFieldValidator ID="rfvNome" ControlToValidate="txtNome" ErrorMessage="*"
                ForeColor="Red" runat="server"></asp:RequiredFieldValidator>

            <asp:TextBox ID="txtNome" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row" style="margin-top: 15px">
        <div class="col-md-7">
            <label>Sexo:</label>
            <asp:RequiredFieldValidator ID="rfvSexo" ControlToValidate="ddlSexo" ErrorMessage="*"
                ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
            <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control">
                <asp:ListItem Selected="True" Value=""></asp:ListItem>
                <asp:ListItem Value="F">Feminino</asp:ListItem>
                <asp:ListItem Value="M">Masculino</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="col-md-2">
            <label>Data de Nascimento</label>

            <asp:RequiredFieldValidator ID="rfvSenha" ControlToValidate="txtDataN" ErrorMessage="*"
                ForeColor="Red" runat="server"></asp:RequiredFieldValidator>

            <asp:TextBox ID="txtDataN" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
        </div>


        <div class="col-md-3">
            <label>Nº Carteira Abilitação</label>

            <asp:RequiredFieldValidator ID="rvfCarteira" ControlToValidate="txtCarteira" ErrorMessage="*"
                ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtCarteira" runat="server" MaxLength="12" CssClass="form-control"></asp:TextBox>
        </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-md-6">
                <label>Telefone Fixo:</label>

                <asp:RequiredFieldValidator ID="rfvTLfixo" ControlToValidate="txtTelf" ErrorMessage="*"
                    ForeColor="Red" runat="server"></asp:RequiredFieldValidator>

                <asp:TextBox ID="txtTelf" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="col-md-6">
                <label>Celular:</label>

                <asp:RequiredFieldValidator ID="rfvCel" ControlToValidate="txtCel" ErrorMessage="*"
                    ForeColor="Red" runat="server"></asp:RequiredFieldValidator>

                <asp:TextBox ID="txtCel" runat="server" MaxLength="12" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-md-6">
                <label>Email:</label>

                <asp:RequiredFieldValidator ID="rfvEmail" ControlToValidate="txtEmail" ErrorMessage="*"
                    ForeColor="Red" runat="server"></asp:RequiredFieldValidator>

                <asp:TextBox ID="txtEmail" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="col-md-6">
                <label>Endereco:</label>

                <asp:RequiredFieldValidator ID="rfvEndereco" ControlToValidate="txtEndereco" ErrorMessage="*"
                    ForeColor="Red" runat="server"></asp:RequiredFieldValidator>

                <asp:TextBox ID="txtEndereco" runat="server" MaxLength="100" CssClass="form-control"></asp:TextBox>
            </div>

        </div>


    <div class="row" style="margin-top: 20px">
        <div class="col-md-12 text-right">

            <asp:Button ID="btnSalvar" CssClass="btn btn-primary" runat="server" Text="Salvar" />
        </div>
    </div>

    <div class="row" style="margin-top: 20px">
        <div class="col-md-12 text-right">
            <asp:Label ID="lblResultado" CssClass="text-danger" runat="server"></asp:Label>
        </div>
    </div>


</asp:Content>
