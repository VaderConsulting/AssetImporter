Imports System.IO
Public Class temp
  Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

  'This call is required by the Web Form Designer.
  <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

  End Sub
  Protected WithEvents Label1 As System.Web.UI.WebControls.Label

  'NOTE: The following placeholder declaration is required by the Web Form Designer.
  'Do not delete or move it.
  Private designerPlaceholderDeclaration As System.Object

  Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
    'CODEGEN: This method call is required by the Web Form Designer
    'Do not modify it using the code editor.
    InitializeComponent()
  End Sub

#End Region

  Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
    'Put user code to initialize the page here
    Dim FileLocation As String
    Dim folderLen As Integer
    Dim FileName As String
    Dim FileDestination As String
    FileLocation = Server.MapPath("DefSheets") & "\"
    FileDestination = Server.MapPath("DefSheetsImported") & "\"
    Label1.Text = FileLocation & "<br>"
    folderLen = FileLocation.Length
    For Each dir As String In Directory.GetFiles(FileLocation)
      FileName = ""
      FileName = Right(dir, (dir.Length - folderLen))
      Label1.Text = Label1.Text & FileName & "<br>"
      File.Move(dir, FileDestination & FileName)
    Next

  End Sub
End Class
