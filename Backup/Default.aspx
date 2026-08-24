<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Default.aspx.vb" Inherits="AssetImporter._Default5" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Default</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK id="stylesheet" href='<% Response.Write(Session("Style")) %>' type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<table class='stdTable' width='90%' border='0' bordercolor='#000000' cellspacing='0' cellpadding='2'
				style="BORDER-COLLAPSE: collapse">
				<tr class='heading'>
					<td colspan='2' align='center'>ASSET IMPORTER</td>
				</tr>
				<tr class='even'>
					<td class='white' colspan='2' height='5'></td>
				</tr>
				<tr class='even'>
					<td class='white' align='center'><a href='UploadFiles.aspx'>Upload Files</a></td>
					<td class='white' align='center'><a href='SelectFile.aspx'>Verify Data</a></td>
				</tr>
				<tr class='even'>
					<td class='white' colspan='2' height='5'></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
