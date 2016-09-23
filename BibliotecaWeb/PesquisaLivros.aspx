<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PesquisaLivros.aspx.cs" Inherits="BibliotecaWeb.PesquisaLivros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Bom dia!<br />Como deseja fazer a sua busca?</h2>


    <div>
        <asp:Label ID="autorLabel" runat="server" Text="Autor:"></asp:Label>

        <div>
            <asp:TextBox ID="autorTextBox" runat="server"></asp:TextBox>


        </div>

    </div><br />

    <div>
        <asp:Label ID="tituloLabel" runat="server" Text="Título:"></asp:Label>

        <div>
            <asp:TextBox ID="tituloTextBox" runat="server"></asp:TextBox>


        </div>

    </div><br />


    <div>
        <asp:Label ID="nomeEditoraLabel" runat="server" Text="Editora:"></asp:Label>

        <div>
            <asp:TextBox ID="editoraTextBox" runat="server"></asp:TextBox>


        </div>

    </div><br />


    <div>
        <asp:Label ID="assuntoLabel" runat="server" Text="Assunto:"></asp:Label>

        <div>
            <asp:TextBox ID="assuntoTextBox" runat="server"></asp:TextBox>


        </div>

    </div><br />


    <div>


        <asp:Button ID="pesquisarButton" runat="server" Text="Pesquisar" OnClick="pesquisarButton_Click" />
    </div><br />


    <div>
        <asp:Label ID="mensagemLabel" runat="server" Text=""></asp:Label>

    </div><br /><br />

    <asp:GridView ID="livrosGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="530px" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="idLivro" HeaderText="ID_Livro" />
            <asp:BoundField DataField="Autor" HeaderText="Autor" />
            <asp:BoundField DataField="Titulo" HeaderText="Título" />
            <asp:BoundField DataField="nomeEditora" HeaderText="Editora" />
            <asp:BoundField DataField="Assunto" HeaderText="Assunto" />
            <asp:HyperLinkField Text="detalhes..." DataNavigateUrlFields="idLivro" DataNavigateUrlFormatString="DetalhesLivro.aspx?idLivro={0}" NavigateUrl="~/DetalhesLivro.aspx" />
            <asp:HyperLinkField NavigateUrl="~/EditarLivro.aspx" Text="Editar"  DataNavigateUrlFormatString="EditarLivro.aspx?idLivro={0}" DataNavigateUrlFields="idLivro" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>


</asp:Content>
