<%

    If IsObject(objConn) = False Then
        Const adOpenDynamic = 2
        Const adLockOptimistic = 3
        Const strConn = "Provider=MSDASQL;Driver={MySQL ODBC 8.0 Unicode Driver}; Server=localhost; Database=steveyj; UID=root; PWD=mysql; Option=3;"

        Set objConn = Server.CreateObject("ADODB.Connection")
        objConn.ConnectionString = strConn
        ObjConn.Mode = 3
        objConn.Open

        Set objCmd = Server.CreateObject ("ADODB.Command")

        objCmd.ActiveConnection = objConn
        objCmd.CommandType = &H0001
    End If
%>