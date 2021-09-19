Public Class BllUsuario
    Dim MiDalUsuario As New DAL.DALUsuario

    Public Function agregarUsuario(MiUsuario As LayerEntity.usuario) As Boolean
        Return MiDalUsuario.AgregarUsuario(MiUsuario)
    End Function

End Class
