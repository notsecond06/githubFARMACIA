Public Class BllProveedor
    Dim MiDalProveedor As New DAL.DALProveedor

    Public Function agregarProveedor(MiProveedor As LayerEntity.proveedor) As Boolean
        Return MiDalProveedor.agregarProveedor(MiProveedor)
    End Function
End Class
