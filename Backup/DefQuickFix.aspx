<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DefQuickFix.aspx.vb" Inherits="AssetImporter.DefQuickFix"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>DefQuickFix</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK id=stylesheet href='<% Response.Write(Session("Style")) %>' type=text/css rel=stylesheet>
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<table>
				<tr>
					<td>
						<P>
							<asp:Button id="btnGO" runat="server" Text="GO GO GO"></asp:Button></P>
						<P>
							<asp:Label id="lblOutput" runat="server"></asp:Label></P>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
