<%@ Page Title="Cadastro de Editora" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroEditora.aspx.cs" Inherits="BibliotecaWeb.CadastroEditora" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h2><%:Page.Title %></h2>
    

    <div>
    <asp:Label ID="nomeLabel" runat="server" Text="Nome:"></asp:Label>
    <div>

        <asp:TextBox ID="nomeTextBox" runat="server"></asp:TextBox>
    </div>

</div><br />
    <div>
    <asp:Label ID="enderecoLabel" runat="server" Text="Endereço:"></asp:Label>
    <div>

        <asp:TextBox ID="enderecoTextBox" runat="server"></asp:TextBox>
    </div>

</div><br />
    <div>
    <asp:Label ID="bairroLabel" runat="server" Text="Bairro:"></asp:Label>
    <div>

        <asp:TextBox ID="bairroTextBox" runat="server"></asp:TextBox>
    </div>

</div><br />
    <div>
    <asp:Label ID="cidadeLabel" runat="server" Text="Cidade:"></asp:Label>
    <div>

        <asp:TextBox ID="cidadeTextBox" runat="server"></asp:TextBox>
    </div>

</div><br />
    <div>
    <asp:Label ID="UFLabel" runat="server" Text="UF:"></asp:Label>
    <div>

        <div>

        <asp:DropDownList ID="ufDropDownList" runat="server">
            <asp:ListItem>N/S</asp:ListItem>
            <asp:ListItem>AC</asp:ListItem>
            <asp:ListItem>AL</asp:ListItem>
            <asp:ListItem>AM</asp:ListItem>
            <asp:ListItem>AP</asp:ListItem>
            <asp:ListItem>BA</asp:ListItem>
            <asp:ListItem>CE</asp:ListItem>
            <asp:ListItem>DF</asp:ListItem>
            <asp:ListItem>ES</asp:ListItem>
            <asp:ListItem>GO</asp:ListItem>
            <asp:ListItem>MA</asp:ListItem>
            <asp:ListItem>MG</asp:ListItem>
            <asp:ListItem>MS</asp:ListItem>
            <asp:ListItem>MT</asp:ListItem>
            <asp:ListItem>PA</asp:ListItem>
            <asp:ListItem>PE</asp:ListItem>
            <asp:ListItem>PB</asp:ListItem>
            <asp:ListItem>PI</asp:ListItem>
            <asp:ListItem>PR</asp:ListItem>
            <asp:ListItem>RJ</asp:ListItem>
            <asp:ListItem>RN</asp:ListItem>
            <asp:ListItem>RO</asp:ListItem>
            <asp:ListItem>RR</asp:ListItem>
            <asp:ListItem>RS</asp:ListItem>
            <asp:ListItem>SC</asp:ListItem>
            <asp:ListItem>SE</asp:ListItem>
            <asp:ListItem>SP</asp:ListItem>
            <asp:ListItem>TO</asp:ListItem>
        </asp:DropDownList>
    </div>
    </div>

</div><br />
    <div>
    <asp:Label ID="telefoneLabel" runat="server" Text="Telefone:"></asp:Label>
    <div>

        <asp:TextBox ID="telefoneTextBox" runat="server"></asp:TextBox>
    </div>

</div><br />
     <div>
    <asp:Label ID="cepLabel" runat="server" Text="CEP:"></asp:Label>
    <div>

        <asp:TextBox ID="cepTextBox" runat="server"></asp:TextBox>
    </div>

</div><br />
     <div>
    <asp:Label ID="cnpjLabel" runat="server" Text="CNPJ:"></asp:Label>
    <div>

        <asp:TextBox ID="cnpjTextBox" runat="server"></asp:TextBox>
    </div>

</div><br />

    <div>

        <asp:Button ID="cadastrarButton" runat="server" Text="Cadastrar" OnClick="cadastrarButton_Click" />
    </div><br />

    <div>
        
        <asp:Label ID="mensagemLabel" runat="server" Text=""></asp:Label>
    </div>




</asp:Content>
