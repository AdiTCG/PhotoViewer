Imports Microsoft.Win32

Class MainWindow
	' Create a ScaleTransform object
	Private myScale as New ScaleTransform
	
	Public Sub New()
		Me.InitializeComponent()
		' Set the ContentControl's RenderTransform property.
		ImgContentCtrl.RenderTransform = myScale
	End Sub

    Private Sub Img_DragDelta(ByVal sender As Object, ByVal e As System.Windows.Controls.Primitives.DragDeltaEventArgs)
        'TODO: Add event handler implementation here.

        Dim left As Double = Canvas.GetLeft(ImgContentCtrl)
        Dim top As Double = Canvas.GetTop(ImgContentCtrl)

        Canvas.SetLeft(ImgContentCtrl, (left + e.HorizontalChange))
        Canvas.SetTop(ImgContentCtrl, (top + e.VerticalChange))
    End Sub

    Private Sub Img_MouseWheel(ByVal sender As Object, ByVal e As System.Windows.Input.MouseWheelEventArgs)
        'TODO: Add event handler implementation here.

        ' Variable for holding the mouse's delta value.
        Dim deltaValue As Integer

        deltaValue = e.Delta

        ' Set the center point of the ScaleTransform object
        ' to the cursor location.
        myScale.CenterX = e.GetPosition(ImgContentCtrl).X
        myScale.CenterY = e.GetPosition(ImgContentCtrl).Y

        ' Zoom in when the user scrolls the mouse wheel up
        ' and vice versa.
        If deltaValue > 0 Then
            ' Limit zoom-in to 500%
            If myScale.ScaleX < 5 Then
                ' Zoom-in in 10% increments
                myScale.ScaleX += 0.1
                myScale.ScaleY += 0.1
            End If
            ' When mouse wheel is scrolled down...
        Else
            ' Limit zoom-out to 80%
            If myScale.ScaleX > 0.8 Then
                ' Zoom-out by 10%
                myScale.ScaleX -= 0.1
                myScale.ScaleY -= 0.1
            End If
        End If
    End Sub

    Private Sub OpenButton_Click(ByVal sender as Object, ByVal e as System.Windows.RoutedEventArgs)
		'TODO: Add event handler implementation here.
		Dim OpenDialog as New OpenFileDialog
		
		With OpenDialog
			.Filter = "Image Files (*.jpeg)|*.jpg|All Files (*.*)|*.*"
            .Title = "Please Open Image File"
        End With
	
		OpenDialog.ShowDialog()
	
		If OpenDialog.FileName <> String.Empty Then
			Dim newImage As New BitmapImage()
            newImage.BeginInit()
            newImage.UriSource = New Uri(OpenDialog.FileName, UriKind.RelativeOrAbsolute)
            newImage.EndInit()
            ' Load image file into Image Control
            ImgObject.Source = newImage
		End If
		' Set the view of the ContentControl to a
		' suitable scale and centered.
		BestFit()
	End Sub

	Private Sub BestFitButton_Click(ByVal sender as Object, ByVal e as System.Windows.RoutedEventArgs)
		'TODO: Add event handler implementation here.
		BestFit()
	End Sub	

	Private Sub BestFit()
		' Set the scale of the ContentControl
		' to 100%.
		myScale.ScaleX = 1
        myScale.ScaleY = 1		
		
		' Set the position of the ContentControl 
		' so that the image is centered.
		Canvas.SetLeft(ImgContentCtrl, 0)
        Canvas.SetTop(ImgContentCtrl, 0)
	End Sub
End Class