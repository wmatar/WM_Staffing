<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Job_Details.aspx.vb" 
    Inherits="Job_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [JOB] WHERE ([Job_ID] = @Job_ID)">

        <SelectParameters>
            <asp:QueryStringParameter Name="Job_ID" QueryStringField="Job_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource><br />

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" 
        AutoGenerateRows="False" DataKeyNames="Job_ID" DataSourceID="SqlDataSource1">

        <Fields>
            <asp:BoundField DataField="Job_ID" HeaderText="Job ID" InsertVisible="False" ReadOnly="True" 
                                               SortExpression="Job_ID" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Contacct" HeaderText="Contacct" SortExpression="Contacct" />
            <asp:BoundField DataField="Requirements" HeaderText="Requirements" SortExpression="Requirements" />
            <asp:BoundField DataField="Posting_Date" HeaderText="Posting Date" SortExpression="Posting_Date" />
            <asp:BoundField DataField="Closing_Date" HeaderText="Closing Date" SortExpression="Closing_Date" />
        </Fields>
    </asp:DetailsView>


<br />
<asp:Button ID="btn_Fill_Out_Ap" runat="server" Text="Fill Out Application" />


</asp:Content>

