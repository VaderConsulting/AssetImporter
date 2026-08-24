<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DefLineValidator.aspx.vb" Inherits="AssetImporter.DefLineValidator" Trace="True"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>DefLineValidator</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK id=stylesheet 
href='<% Response.Write(Session("Style")) %>' type=text/css rel=stylesheet>
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<table class="stdTable" borderColor="#000000" cellSpacing="0" cellPadding="2" width="580"
				border="0">
				<tr class="heading">
					<td colSpan="2">Single Line Validation - Def Importer</td>
				</tr>
				<tr class="even">
					<td class="white" colSpan="2">
						<h2>Instructions:</h2>
						<OL>
							<LI>
							Cut and Paste ONE(1) line from the CSV Log file to the below text box.
							<LI>
							Click on the "Validate Line" button to validate the pasted line.
							<LI>
							View the "Validation Log" window below to see what was incorrect within the 
							pasted line.
							<LI>
							Update the line in the CSV Log file.
							<LI>
							When finished click the "Clear" button to reset the page.
							<LI>
								To validate the next line return to step 1.
							</LI>
						</OL>
					</td>
				</tr>
				<tr class="even">
					<td class="white" style="HEIGHT: 76px" colSpan="2"><asp:textbox id="tbxLine" tabIndex="1" runat="server" Width="700px" Height="210px" TextMode="MultiLine"
							Rows="3"></asp:textbox></td>
				</tr>
				<tr class='even'>
					<td class='title' align='center' width="50%"><asp:Button id="btnValidate" runat="server" Text="Validate Line" tabIndex="2"></asp:Button></td>
					<td class='title' align='center' width="50%">
						<asp:Button id="btnClear" runat="server" Text="Clear" tabIndex="3"></asp:Button></td>
				</tr>
				<tr class='even'>
					<td class='white' colspan='2'>
						<br>
						<h2>Validation Log:</h2>
						<asp:Label id="lblOutput" runat="server">Label</asp:Label></td>
				</tr>
				<tr class='even'>
					<td class='white' colspan='2'></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
