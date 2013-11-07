<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Search_Jobs.aspx.vb" Inherits="Search_Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h3>This is the Search Jobs Page</h3><br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [STATE]"></asp:SqlDataSource>
    <br />

    <table id="Search_Jobs_tbl">
        <tr>
            <td>Enter a Keyword:</td>
            <td>
    <asp:TextBox ID="tb_job_description" runat="server" BorderStyle="Ridge"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Select Location:</td>
            <td>
    <asp:DropDownList ID="State_DropDownList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" 
        DataTextField="State_Name" AppendDataBoundItems="True" >

        <asp:ListItem Text="--Select One--" Value="" /> 

    </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>or</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl="~/View_All_Jobs.aspx">View All Jobs</asp:HyperLink></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
    <asp:Button ID="btn_reset" runat="server" Text="Reset" BorderStyle="Ridge" />
            </td>
        </tr>
    </table>
    <br />
    <br />

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [JOB] WHERE (([Title] = @Title) AND ([State] = @State))">
        <SelectParameters>
            <asp:ControlParameter ControlID="tb_job_description" Name="Title" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="State_DropDownList" Name="State" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>



    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Job_ID" DataSourceID="SqlDataSource2" AllowPaging="True" CssClass="GV">
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Requirements" HeaderText="Requirements" SortExpression="Requirements" />
            <asp:BoundField DataField="Posting_Date" HeaderText="Posting Date" SortExpression="Posting_Date" />
            <asp:BoundField DataField="Closing_Date" HeaderText="Closing Date" SortExpression="Closing_Date" />
            <asp:HyperLinkField DataNavigateUrlFields="Job_ID" DataNavigateUrlFormatString="Job_Details.aspx?Job_id={0}" HeaderText="View Details" Text="View" />
        </Columns>
    </asp:GridView>



</asp:Content>

