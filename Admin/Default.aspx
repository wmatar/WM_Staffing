<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" 
    Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>






<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br />
    <asp:Button ID="btn_State" runat="server" Text="View States" />
    <asp:Button ID="btn_Job" runat="server" Text="View Jobs" />
    <asp:Button ID="btn_Applicant" runat="server" Text="View Applicants" />
    <br />

    <asp:MultiView ID="Admin_MultiView" runat="server">
        



        <asp:View ID="State_View" runat="server">

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [STATE] WHERE [State_ID] = @State_ID" 
                InsertCommand="INSERT INTO [STATE] ([State_Name]) VALUES (@State_Name)" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT * FROM [STATE]" 
                UpdateCommand="UPDATE [STATE] SET [State_Name] = @State_Name WHERE [State_ID] = @State_ID">
                <DeleteParameters>
                    <asp:Parameter Name="State_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="State_Name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="State_Name" Type="String" />
                    <asp:Parameter Name="State_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br /><div class="admin_h3"><h3 >Update States</h3></div>
            
            Edit/Delete State:<br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
                DataKeyNames="State_ID" DataSourceID="SqlDataSource1" CssClass="GV">
                <Columns>
                    <asp:BoundField DataField="State_ID" HeaderText="State ID" InsertVisible="False" ReadOnly="True" 
                        SortExpression="State_ID" />
                    <asp:BoundField DataField="State_Name" HeaderText="State Name" SortExpression="State_Name" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Control" />
                </Columns>
            </asp:GridView>
            <br />
            Add New State:<br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="State_ID" 
                DataSourceID="SqlDataSource1" Height="50px" Width="125px" DefaultMode="Insert" CssClass="DV">
                <Fields>
                    <asp:BoundField DataField="State_ID" HeaderText="State ID" InsertVisible="False" ReadOnly="True" 
                        SortExpression="State_ID" />
                    <asp:BoundField DataField="State_Name" HeaderText="State Name" SortExpression="State_Name" />
                    <asp:CommandField ShowInsertButton="True" ButtonType="Button" NewText="Add New" />
                </Fields>
            </asp:DetailsView>

        </asp:View>



        <asp:View ID="Job_View" runat="server">


            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [JOB] WHERE [Job_ID] = @Job_ID" InsertCommand="INSERT INTO [JOB] ([Title], [Description], [Location], [State], [Type], [Contacct], [Requirements], [Posting_Date], [Closing_Date]) VALUES (@Title, @Description, @Location, @State, @Type, @Contacct, @Requirements, @Posting_Date, @Closing_Date)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [JOB]" UpdateCommand="UPDATE [JOB] SET [Title] = @Title, [Description] = @Description, [Location] = @Location, [State] = @State, [Type] = @Type, [Contacct] = @Contacct, [Requirements] = @Requirements, [Posting_Date] = @Posting_Date, [Closing_Date] = @Closing_Date WHERE [Job_ID] = @Job_ID">
                <DeleteParameters>
                    <asp:Parameter Name="Job_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Location" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="Type" Type="String" />
                    <asp:Parameter Name="Contacct" Type="String" />
                    <asp:Parameter Name="Requirements" Type="String" />
                    <asp:Parameter Name="Posting_Date" Type="String" />
                    <asp:Parameter Name="Closing_Date" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Location" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="Type" Type="String" />
                    <asp:Parameter Name="Contacct" Type="String" />
                    <asp:Parameter Name="Requirements" Type="String" />
                    <asp:Parameter Name="Posting_Date" Type="String" />
                    <asp:Parameter Name="Closing_Date" Type="String" />
                    <asp:Parameter Name="Job_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <div class="admin_h3"><h3 >Update Jobs</h3></div>
            <br />
            Edit/Delete Jobs:<br />
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Job_ID" DataSourceID="SqlDataSource2" CssClass="GV">
                <Columns>
                    <asp:BoundField DataField="Job_ID" HeaderText="Job ID" InsertVisible="False" ReadOnly="True" SortExpression="Job_ID" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="Contacct" HeaderText="Contacct" SortExpression="Contacct" />
                    <asp:BoundField DataField="Requirements" HeaderText="Requirements" SortExpression="Requirements" />
                    <asp:BoundField DataField="Posting_Date" HeaderText="Posting Date" SortExpression="Posting_Date" />
                    <asp:BoundField DataField="Closing_Date" HeaderText="Closing Date" SortExpression="Closing_Date" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Control" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            Add New Job:<br />
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="Job_ID" DataSourceID="SqlDataSource2" Height="50px" Width="125px" DefaultMode="Insert" CssClass="DV">
                <Fields>
                    <asp:BoundField DataField="Job_ID" HeaderText="Job ID" InsertVisible="False" ReadOnly="True" SortExpression="Job_ID" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="Contacct" HeaderText="Contacct" SortExpression="Contacct" />
                    <asp:BoundField DataField="Requirements" HeaderText="Requirements" SortExpression="Requirements" />
                    <asp:BoundField DataField="Posting_Date" HeaderText="Posting Date" SortExpression="Posting_Date" />
                    <asp:BoundField DataField="Closing_Date" HeaderText="Closing Date" SortExpression="Closing_Date" />
                    <asp:CommandField ShowInsertButton="True" ButtonType="Button" NewText="Add New" />
                </Fields>
            </asp:DetailsView>
            <br />


        </asp:View>




        <asp:View ID="Applicant_View" runat="server">

            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [APPLICANT] WHERE [Applicant_ID] = @Applicant_ID" InsertCommand="INSERT INTO [APPLICANT] ([F_Name], [L_Name], [Address], [City], [State], [Zip_Code], [Phone], [Email], [DOB]) VALUES (@F_Name, @L_Name, @Address, @City, @State, @Zip_Code, @Phone, @Email, @DOB)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [APPLICANT]" UpdateCommand="UPDATE [APPLICANT] SET [F_Name] = @F_Name, [L_Name] = @L_Name, [Address] = @Address, [City] = @City, [State] = @State, [Zip_Code] = @Zip_Code, [Phone] = @Phone, [Email] = @Email, [DOB] = @DOB WHERE [Applicant_ID] = @Applicant_ID">
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
            </asp:SqlDataSource><div class="admin_h3"><h3 >Update Applicants</h3></div>
            <br />
            <br />
            Edit/Delete Applicants:<br />
            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Applicant_ID" DataSourceID="SqlDataSource3" CssClass="GV">
                <Columns>
                    <asp:BoundField DataField="Applicant_ID" HeaderText="Applicant ID" InsertVisible="False" ReadOnly="True" SortExpression="Applicant_ID" />
                    <asp:BoundField DataField="F_Name" HeaderText="First Name" SortExpression="F_Name" />
                    <asp:BoundField DataField="L_Name" HeaderText="Last Name" SortExpression="L_Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="Zip_Code" HeaderText="Zip" SortExpression="Zip_Code" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Control" />
                </Columns>
            </asp:GridView>
            <br />
            Add New Application:<br />
            <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataKeyNames="Applicant_ID" DataSourceID="SqlDataSource3" Height="50px" Width="125px" DefaultMode="Insert" CssClass="DV">
                <Fields>
                    <asp:BoundField DataField="Applicant_ID" HeaderText="Applicant ID" InsertVisible="False" ReadOnly="True" SortExpression="Applicant_ID" />
                    <asp:BoundField DataField="F_Name" HeaderText="First Name" SortExpression="F_Name" />
                    <asp:BoundField DataField="L_Name" HeaderText="Last Name" SortExpression="L_Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="Zip_Code" HeaderText="Zip" SortExpression="Zip_Code" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:CommandField ShowInsertButton="True" ButtonType="Button" NewText="Add New" />
                </Fields>
            </asp:DetailsView>

        </asp:View>










    </asp:MultiView>


























</asp:Content>

