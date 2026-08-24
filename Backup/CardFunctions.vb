Public Class CardFunctions

    Shared Function ValidateCard(ByRef CardNumber As String) As Boolean
        Dim intCounter As Integer
        Dim strCCNumber As String
        Dim blnIsEven As Boolean = False
        Dim strDigits As String = ""
        Dim intCheckSum As Integer = 0

        ' Strip away everything except numerals
        For intCounter = 1 To Len(CardNumber)
            If IsNumeric(Mid(CardNumber, intCounter, 1)) Then
                strCCNumber = strCCNumber & Mid(CardNumber, intCounter, 1)
            End If
        Next

        CardNumber = strCCNumber
        '        For intCounter = 1 To Len(strCCNumber)
        '       CardNumber = CardNumber & Mid(strCCNumber, intCounter, 1)

        '       If (intCounter Mod 4) = 0 Then
        '       CardNumber = CardNumber + " "
        '       End If
        '       Next

        ' If nothing left, then fail
        If Len(strCCNumber) = 0 Then
            ValidateCard = False
        Else

            ' Double every other digit
            For intCounter = Len(strCCNumber) To 1 Step -1
                If blnIsEven Then
                    strDigits = strDigits & CInt(Mid(strCCNumber, intCounter, 1)) * 2
                Else
                    strDigits = strDigits & CInt(Mid(strCCNumber, intCounter, 1))
                End If
                blnIsEven = (Not blnIsEven)
            Next

            ' Calculate CheckSum
            For intCounter = 1 To Len(strDigits)
                intCheckSum = intCheckSum + CInt(Mid(strDigits, intCounter, 1))
            Next

            ' Assign results
            ValidateCard = ((intCheckSum Mod 10) = 0)

        End If


    End Function

    Shared Function ValidateDate(ByRef ExpiryDate As String) As Boolean
        Dim intCounter As Integer
        Dim strExpiryDate As String
        Dim blnIsEven As Boolean = False
        Dim strDigits As String = ""
        Dim intCheckSum As Integer = 0
        strExpiryDate = ""
        If (ExpiryDate.IndexOf("/") > 0) And (ExpiryDate.Length >= 3) Then
            strExpiryDate = Mid(ExpiryDate, 1, ExpiryDate.IndexOf("/")).PadLeft(2, "0")
            strExpiryDate = strExpiryDate + Mid(ExpiryDate, ExpiryDate.IndexOf("/") + 2).PadLeft(2, "0")
            ExpiryDate = strExpiryDate
        End If
        ' Strip away everything except numerals
        strExpiryDate = ""
        For intCounter = 1 To Len(ExpiryDate)
            If IsNumeric(Mid(ExpiryDate, intCounter, 1)) Then
                strExpiryDate = strExpiryDate & Mid(ExpiryDate, intCounter, 1)
            End If
        Next

        ExpiryDate = ""
        ExpiryDate = Mid(strExpiryDate, 1, 2) + "/" + Mid(strExpiryDate, 3, 2)

        ValidateDate = False
        If strExpiryDate.Length = 4 Then
            If (Val(Mid(strExpiryDate, 1, 2)) <= 12) And (Val(Mid(strExpiryDate, 1, 2)) >= 1) And (Val(Mid(strExpiryDate, 3, 2)) <= 99) And (Val(Mid(strExpiryDate, 3, 2)) >= 0) Then
                ValidateDate = True
            End If
        End If


    End Function
End Class

