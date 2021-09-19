Public Class usuario
#Region "CAMPOS"
    Private _id As Integer
    Private _nombre As String
    Private _usuario As String
    Private _contrasena As String
    Private _rol As String
#End Region

#Region "PROPIEDADES"
    Public Property id As Integer
        Get
            Return _id
        End Get
        Set(value As Integer)
            _id = value
        End Set
    End Property

    Public Property nombre As String
        Get
            Return _nombre
        End Get
        Set(value As String)
            _nombre = value
        End Set
    End Property

    Public Property usuario As String
        Get
            Return _usuario
        End Get
        Set(value As String)
            _usuario = value
        End Set
    End Property

    Public Property contrasena As String
        Get
            Return _contrasena
        End Get
        Set(value As String)
            _contrasena = value
        End Set
    End Property

    Public Property rol As String
        Get
            Return _rol
        End Get
        Set(value As String)
            _rol = value
        End Set
    End Property
#End Region

    Public Sub New()

    End Sub
    Public Sub New(ByVal id As Integer, ByVal nombre As String, ByVal usuario As String, ByVal contrasena As String, ByVal rol As String)
        _id = id
        _nombre = nombre
        _usuario = usuario
        _contrasena = contrasena
        _rol = rol
    End Sub
End Class
