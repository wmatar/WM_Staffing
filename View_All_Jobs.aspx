<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="View_All_Jobs.aspx.vb" Inherits="View_All_Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [JOB]"></asp:SqlDataSource><br />


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Job_ID" DataSourceID="SqlDataSource1" CssClass="GV">
        <Columns>
            <asp:BoundField DataField="Job_ID" HeaderText="Job_ID" InsertVisible="False" ReadOnly="True" SortExpression="Job_ID" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Contacct" HeaderText="Contacct" SortExpression="Contacct" />
            <asp:BoundField DataField="Requirements" HeaderText="Requirements" SortExpression="Requirements" />
            <asp:BoundField DataField="Posting_Date" HeaderText="Posting_Date" SortExpression="Posting_Date" />
            <asp:BoundField DataField="Closing_Date" HeaderText="Closing_Date" SortExpression="Closing_Date" />
            <asp:HyperLinkField DataNavigateUrlFields="Job_ID" DataNavigateUrlFormatString="Job_Details.aspx?Job_ID={0}" HeaderText="View Details" Text="View" />
        </Columns>
    </asp:GridView>
    <br />

    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Search_Jobs.aspx">Back to Search</asp:HyperLink>
    <br /><br /><br /><br /><br /><br />
</asp:Content>

