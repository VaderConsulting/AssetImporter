<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DefOrgImporter.aspx.vb" Inherits="AssetImporter.DefOrgImporter" trace="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>DefOrgImporter</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK id=stylesheet href='<% Response.Write(Session("Style")) %>' type=text/css rel=stylesheet>
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<P><asp:button id="btnImport" runat="server" Text="Import Org Units"></asp:button></P>
			<P><asp:label id="lblOutput" runat="server">Output</asp:label></P>
		</form>
	</body>
</HTML>
