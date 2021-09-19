Public Class medicamento
#Region "CAMPOS"
    Private _id As String
    Private _nombre As String
    Private _proveedor As String
    Private _descripcion As String
    Private _preciocompra As Double
    Private _precioventa As Double
    Private _fvencimiento As String
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

    Public Property proveedor As String
        Get
            Return _proveedor
        End Get
        Set(value As String)
            _proveedor = value
        End Set
    End Property

    Public Property descripcion As String
        Get
            Return _descripcion
        End Get
        Set(value As String)
            _descripcion = value
        End Set
    End Property

    Public Property preciocompra As Double
        Get
            Return _preciocompra
        End Get
        Set(value As Double)
            _preciocompra = value
        End Set
    End Property

    Public Property precioventa As Double
        Get
            Return _precioventa
        End Get
        Set(value As Double)
            _precioventa = value
        End Set
    End Property

    Public Property fvencimiento As String
        Get
            Return _fvencimiento
        End Get
        Set(value As String)
            _fvencimiento = value
        End Set
    End Property
#End Region

    Public Sub New()

    End Sub
    Public Sub New(ByVal id As String, ByVal nombre As String, ByVal proveedor As String, ByVal descripcion As String, ByVal preciocompra As Double, ByVal precioventa As Double, ByVal fvencimiento As String)
        _id = id
        _nombre = nombre
        _proveedor = proveedor
        _descripcion = descripcion
        _preciocompra = preciocompra
        _precioventa = precioventa
        _fvencimiento = fvencimiento
    End Sub
End Class
