<%@ Page Title="Cadastro de Funcionários" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroFuncionario.aspx.cs" Inherits="BibliotecaWeb.CadastroFuncionario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%:Page.Title %></h2>


    <div>

    <asp:Label ID="nomeLabel" runat="server" Text="Nome:"></asp:Label>
    <div>

        <asp:TextBox ID="nomeTextBox" runat="server"></asp:TextBox>
    </div>

</div><br />
    <div>

    <asp:Label ID="profissaoLabel" runat="server" Text="Profissão:"></asp:Label>
    <div>

        <asp:TextBox ID="profissaoTextBox" runat="server"></asp:TextBox>
    </div>

</div><br />
    <div>

    <asp:Label ID="idPerfilLabel" runat="server" Text="idPerfil:"></asp:Label>
    <div>

        <asp:TextBox ID="idPerfilTextBox" runat="server"></asp:TextBox>
    </div>

</div><br />


    <div>

    <asp:Label ID="situacaoLabel" runat="server" Text="Situação(Ativo?):"></asp:Label>
    <div>

        <asp:DropDownList ID="situacaoDropDownList" runat="server"></asp:DropDownList>
    </div>

</div><br />


    <div>
        <asp:Button ID="cadastrarButton" runat="server" Text="Cadastrar" OnClick="cadastrarButton_Click" />



    </div><br />

    <asp:Label ID="mensagemLabel" runat="server" Text=""></asp:Label>

</asp:Content>


