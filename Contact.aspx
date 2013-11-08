<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
    <br />
        <br />
        <table class="cont_tbl">
            <tr>
                <td>First Name:</td>
                <td>
                    <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td>
                    <asp:TextBox ID="lname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Your Email:</td>
                <td>
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Subject:</td>
                <td>
                    <asp:TextBox ID="subject" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Message:</td>
                <td>
                    <asp:TextBox ID="message" runat="server" Height="120px" Width="241px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Send" />
&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
            </tr>
        </table>
        <br />
    
    </div>




</asp:Content>

