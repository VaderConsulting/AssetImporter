<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DefTempFix.aspx.vb" Inherits="AssetImporter.DefTempFix" Trace='true'%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>DefTempFix</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK id=stylesheet 
href='<% Response.Write(Session("Style")) %>' type=text/css rel=stylesheet>
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<table class="stdtable">
				<tr class="heading">
					<td><asp:label id="Label1" runat="server"></asp:label></td>
				</tr>
				<tr class='even'>
					<td class='white'>
						<P>
							<asp:Button id="btnImport" runat="server" Text="Import File"></asp:Button></P>
						<P><asp:HyperLink id="hlLogFile" runat="server">Download Log File</asp:HyperLink></P>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
