Public Class proveedor
#Region "CAMPOS"
    Private _id As String
    Private _nombre As String
    Private _contacto As String
    Private _licencia As String
    Private _fecha_venc As String
    Private _direccion As String
#End Region

#Region "PROPIEDADES"
    Public Property id As String
        Get
            Return _id
        End Get
        Set(value As String)
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

    Public Property contacto As String
        Get
            Return _contacto
        End Get
        Set(value As String)
            _contacto = value
        End Set
    End Property

    Public Property licencia As String
        Get
            Return _licencia
        End Get
        Set(value As String)
            _licencia = value
        End Set
    End Property

    Public Property fecha_venc As String
        Get
            Return _fecha_venc
        End Get
        Set(value As String)
            _fecha_venc = value
        End Set
    End Property

    Public Property direccion As String
        Get
            Return _direccion
        End Get
        Set(value As String)
            _direccion = value
        End Set
    End Property
#End Region
    Public Sub New()

    End Sub
    Public Sub New(ByVal id As String, ByVal nombre As String, ByVal contacto As String, ByVal licencia As String, ByVal fecha_venc As String, ByVal direccion As String)
        _id = id
        _nombre = nombre
        _contacto = contacto
        _licencia = licencia
        _fecha_venc = fecha_venc
        _direccion = direccion

    End Sub
End Class
