Imports System
Imports System.IO
Public Class UploadFiles
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents MyFile As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents FileDetails As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents FileName As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents MyContentType As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents ContentLength As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents btnUpload As System.Web.UI.WebControls.ImageButton
    Protected WithEvents btnUp As System.Web.UI.WebControls.Button
    Dim mySqlDataReader As System.Data.SqlClient.SqlDataReader
    Dim MyConnection As System.Data.SqlClient.SqlConnection
    Dim mySelectQuery As String
    Dim myReader As System.Data.SqlClient.SqlDataReader
    Dim FileDestination As String
    Protected WithEvents TextBox2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents DropDownList1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents DropDownList2 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents DropDownList3 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents DropDownList4 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents TextBox3 As System.Web.UI.WebControls.TextBox
    Dim MyConnection2 As System.Data.SqlClient.SqlConnection = New System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings("DSN"))
    Dim myReader2 As System.Data.SqlClient.SqlDataReader
    Dim MyCommand As New System.Data.SqlClient.SqlCommand
    Dim MyCommand2 As New System.Data.SqlClient.SqlCommand
    Protected WithEvents ddlClientSelect As System.Web.UI.WebControls.DropDownList
    Protected WithEvents tbxRevision As System.Web.UI.WebControls.TextBox
    Protected WithEvents lblDateUploaded As System.Web.UI.WebControls.Label
    Protected WithEvents lblImportedBy As System.Web.UI.WebControls.Label
    Protected WithEvents ddlImportType As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ddlMoveType As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txbMoveDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents Back As System.Web.UI.WebControls.ImageButton
    Protected WithEvents calMoveDate As System.Web.UI.WebControls.Calendar
    Protected WithEvents DropDownList5 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ddlImportState As System.Web.UI.WebControls.DropDownList
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator

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
        If Not IsPostBack Then
            MyConnection = New System.Data.SqlClient.SqlConnection(Session("OperationalDB"))
            Call LoadClients()
            Call LoadStates()
            lblDateUploaded.Text = Now.ToString()
            lblImportedBy.Text = Session("UsersName")
        End If
    End Sub
    Sub LoadClients()
        Trace.Write("Load Clients")
        ddlClientSelect.Items.Add(New ListItem("Please Select a Client", "-1"))
    mySelectQuery = "SELECT ClientID, Clientname FROM Client WHERE (EndDate IS NULL)"
        MyCommand = New System.Data.SqlClient.SqlCommand(mySelectQuery, MyConnection)
        If MyConnection.State.ToString = "Closed" Then
            MyConnection.Open()
        End If
        myReader = MyCommand.ExecuteReader()
        If myReader.HasRows Then
            Do While myReader.Read()
                ddlClientSelect.Items.Add(New ListItem(myReader("Clientname"), myReader("ClientID")))
            Loop
        End If
        myReader.Close()
        Trace.Write("Clients Loaded")
    End Sub
    Sub LoadStates()
        Trace.Write("Load States")
        'ddlImportState.Items.Add(New ListItem("Please Select a State", "-1"))
        mySelectQuery = "SELECT * FROM State ORDER BY State"
        MyCommand = New System.Data.SqlClient.SqlCommand(mySelectQuery, MyConnection)
        If MyConnection.State.ToString = "Closed" Then
            MyConnection.Open()
        End If
        myReader = MyCommand.ExecuteReader()
        If myReader.HasRows Then
            Do While myReader.Read()
                ddlImportState.Items.Add(New ListItem(myReader("State"), myReader("UID")))
            Loop
        End If
        myReader.Close()
        Trace.Write("States Loaded")
    End Sub

    Sub RegisterUpload()
        'Inserts into ImportAssetRegister table details of the upload
        mySelectQuery = "INSERT INTO ImportAssetRegister (UploadFileName, uploadDate, UploadUser, UploadChecked, UploadFormat, ClientID, RevisionNumber, ImportedBy, ImportType, MoveType, MoveDate, ImportState) VALUES ('" + Path.GetFileName(MyFile.PostedFile.FileName) + "', '" + Now + "' ,'" + User.Identity.Name.ToString + "',1, '" + Right(Path.GetFileName(MyFile.PostedFile.FileName), 4) + "', " & ddlClientSelect.SelectedValue.ToString & ", '" & tbxRevision.Text & "', '" & lblImportedBy.Text & "', " & ddlImportType.SelectedValue & ", " & ddlMoveType.SelectedValue & ", '" & txbMoveDate.Text & "', " & ddlImportState.SelectedValue & ")"
        MyConnection = New System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings("OperationalDB"))
        Dim MyCommand As New System.Data.SqlClient.SqlCommand(mySelectQuery, MyConnection)
        Trace.Write(mySelectQuery)
        MyConnection.Open()
        MyCommand.ExecuteNonQuery()
        MyConnection.Close()
    End Sub

    Private Sub ddlMoveType_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ddlMoveType.SelectedIndexChanged
        'check if Move Type changed to 2
        If ddlMoveType.SelectedValue.ToString() = "2" Then
            txbMoveDate.Enabled = True
            calMoveDate.Enabled = True
        Else
            txbMoveDate.Enabled = False
            txbMoveDate.Text = ""
            calMoveDate.Enabled = False
        End If
    End Sub

    Private Sub Back_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles Back.Click
        Response.Redirect("default.aspx")
    End Sub

    Private Sub btnUpload_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnUpload.Click
        ' Save uploaded file to server
        'APPL_PHYSICAL_PATH
        'Request.ServerVariables.GetValues("APPL_PHYSICAL_PATH").GetValue(0)
        If Page.IsValid Then
      FileDestination = Request.ServerVariables.GetValues("APPL_PHYSICAL_PATH").GetValue(0) & "AssetImporter\AssetSheets\" & Path.GetFileName(MyFile.PostedFile.FileName)
            Trace.Write(FileDestination)
            MyFile.PostedFile.SaveAs(FileDestination)

            Call RegisterUpload()
            ' Display information about posted file
            FileName.InnerHtml = MyFile.PostedFile.FileName
            MyContentType.InnerHtml = MyFile.PostedFile.ContentType
            ContentLength.InnerHtml = CStr(MyFile.PostedFile.ContentLength)
        End If

    End Sub


    Private Sub calMoveDate_SelectionChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles calMoveDate.SelectionChanged
        txbMoveDate.Text = calMoveDate.SelectedDate.ToShortDateString.ToString '.Date.ToString
    End Sub

    Private Sub ddlImportType_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ddlImportType.SelectedIndexChanged
        If ddlImportType.SelectedValue.ToString() = "4" Then
            ddlMoveType.Enabled = False
            txbMoveDate.Enabled = False
            txbMoveDate.Text = ""
            calMoveDate.Enabled = False
        Else
            ddlMoveType.Enabled = True

        End If
    End Sub
End Class
