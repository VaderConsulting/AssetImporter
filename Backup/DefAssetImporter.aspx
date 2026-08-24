<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DefAssetImporter.aspx.vb" Inherits="AssetImporter.DefAssetImporter" Trace="False" buffer="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>DefAssetImporter</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK id=stylesheet href='<% Response.Write(Session("Style")) %>' type=text/css rel=stylesheet>
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<table class="stdtable">
				<tr class="heading">
					<td></td>
				</tr>
				<tr class='even'>
					<td class='white'>
						<P>
							<asp:Button id="btnImport" runat="server" Text="Import File"></asp:Button></P>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
