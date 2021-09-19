Public Class BllMedicamento
    Dim MiDalMedicamento As New DAL.DALMedicamento

    Public Function agregarMedicamento(MiMedicamento As LayerEntity.medicamento) As Boolean
        Return MiDalMedicamento.agregarMedicamento(MiMedicamento)
    End Function
End Class
