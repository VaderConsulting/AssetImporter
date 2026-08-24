Public Class MobileFunctions
    Shared Function ValidateMobile(ByRef MobileNumber As String) As Boolean
        Dim tempmobile As String
        Dim intCounter As Integer
        tempmobile = ""
        ' Strip away everything except numerals
        For intCounter = 1 To Len(MobileNumber)
            If IsNumeric(Mid(MobileNumber, intCounter, 1)) Then
                tempmobile = tempmobile & Mid(MobileNumber, intCounter, 1)
            End If
        Next

        MobileNumber = tempmobile

        If tempmobile.Length <> 10 Then
            ValidateMobile = False
        Else
            ValidateMobile = True
        End If
    End Function
End Class

