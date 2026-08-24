Public Class AssetCommon

    Shared Function FormatCard(ByVal CardNumber As String) As String
        If Len(CardNumber) = 15 Then
            FormatCard = Mid(CardNumber, 1, 4) + " " + Mid(CardNumber, 5, 6) + " " + Mid(CardNumber, 11, 5)
        ElseIf Len(CardNumber) = 16 Then
            FormatCard = Mid(CardNumber, 1, 4) + " " + Mid(CardNumber, 5, 4) + " " + Mid(CardNumber, 9, 4) + " " + Mid(CardNumber, 13, 4)
        ElseIf Len(CardNumber) = 17 Then
            FormatCard = Mid(CardNumber, 1, 4) + " " + Mid(CardNumber, 5, 4) + " " + Mid(CardNumber, 9, 4) + " " + Mid(CardNumber, 13, 4) + " " + Mid(CardNumber, 17, 1)
        Else
            FormatCard = CardNumber
        End If
    End Function

    Shared Function FormatMobile(ByVal PhoneNumber As String) As String
        If Len(PhoneNumber) = 10 Then
            FormatMobile = Mid(PhoneNumber, 1, 4) + " " + Mid(PhoneNumber, 5, 3) + " " + Mid(PhoneNumber, 8, 3)
        Else
            FormatMobile = PhoneNumber
        End If
    End Function

    Shared Function FormatService(ByVal ServiceString As String, ByVal FormatType As Integer) As String
        Select Case FormatType
            Case 0
                FormatService = ServiceString
            Case 1
                FormatService = FormatCard(ServiceString)
            Case 2
                FormatService = FormatMobile(ServiceString)
        End Select
    End Function

    Shared Function GetOrgUnitString(ByVal clientID As Integer, ByVal OrgUnitID As Integer)
        Dim MyConnection As System.Data.SqlClient.SqlConnection
        Dim MyDataReader As System.Data.SqlClient.SqlDataReader
        Dim MyCommand As System.Data.SqlClient.SqlDataAdapter
        MyConnection = New System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings("DSN"))
        MyConnection.Open()
        Dim MyDataCommand As New System.Data.SqlClient.SqlCommand("select * from CurrentClientOrganisationUnitView where COrgUnitID = " + OrgUnitID.ToString, MyConnection)
        MyDataReader = MyDataCommand.ExecuteReader()
        If MyDataReader.Read() Then

        End If

    End Function

End Class