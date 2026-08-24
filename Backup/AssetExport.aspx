<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AssetExport.aspx.vb" Inherits="AssetImporter.AssetExport" trace="False" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>AssetExport</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK id=stylesheet 
href='<% Response.Write(Session("Style")) %>' type=text/css rel=stylesheet>
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TABLE class="stdtable" id="Table1" cellSpacing="0" cellPadding="1" width="90%" border="0">
				<TR class="heading">
					<TD colSpan="3">Client Exporter</TD>
				</TR>
				<TR class="even">
					<TD class="title" noWrap>Client:</TD>
					<TD class="white"><asp:dropdownlist id="ddlClientSelect" runat="server"></asp:dropdownlist></TD>
					<TD class="white">
						<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="Please Select a Client"
							ControlToValidate="ddlClientSelect"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR class="even">
					<TD class="title" noWrap>File Type:</TD>
					<TD class="white"><asp:dropdownlist id="ddlFileType" runat="server">
							<asp:ListItem Value="1" Selected="True">.csv</asp:ListItem>
							<asp:ListItem Value="2">.xml</asp:ListItem>
						</asp:dropdownlist></TD>
					<TD class="white"></TD>
				</TR>
				<TR class="even">
					<TD class="title" colSpan="3"><asp:button id="DownloadXML" runat="server" Text="Download File"></asp:button></TD>
				</TR>
				<TR class="even">
					<TD class="white" colSpan="3"></TD>
				</TR>
				<TR class="even">
					<TD class="title" noWrap>Status Log :
					</TD>
					<TD class="white"><asp:label id="lblStatus" runat="server"></asp:label></TD>
					<TD class="white"></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
