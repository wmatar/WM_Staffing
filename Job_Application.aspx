<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Job_Application.aspx.vb" Inherits="Job_Application" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br />
    This is the Job_Application Page
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [APPLICANT]" DeleteCommand="DELETE FROM [APPLICANT] WHERE [Applicant_ID] = @Applicant_ID" InsertCommand="INSERT INTO [APPLICANT] ([F_Name], [L_Name], [Address], [City], [State], [Zip_Code], [Phone], [Email], [DOB]) VALUES (@F_Name, @L_Name, @Address, @City, @State, @Zip_Code, @Phone, @Email, @DOB)" UpdateCommand="UPDATE [APPLICANT] SET [F_Name] = @F_Name, [L_Name] = @L_Name, [Address] = @Address, [City] = @City, [State] = @State, [Zip_Code] = @Zip_Code, [Phone] = @Phone, [Email] = @Email, [DOB] = @DOB WHERE [Applicant_ID] = @Applicant_ID">
        <DeleteParameters>
            <asp:Parameter Name="Applicant_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="F_Name" Type="String" />
            <asp:Parameter Name="L_Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip_Code" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="DOB" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="F_Name" Type="String" />
            <asp:Parameter Name="L_Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip_Code" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="DOB" Type="String" />
            <asp:Parameter Name="Applicant_ID" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource><br />

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Applicant_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" CssClass="DV">
        <Fields>
            <asp:BoundField DataField="F_Name" HeaderText="First Name" SortExpression="F_Name" />
            <asp:BoundField DataField="L_Name" HeaderText="Last Name" SortExpression="L_Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Zip_Code" HeaderText="Zip Code" SortExpression="Zip_Code" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>









</asp:Content>

