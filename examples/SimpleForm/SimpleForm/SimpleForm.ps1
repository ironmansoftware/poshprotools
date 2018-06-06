$button2_Click = { 
	$MainForm.lblMyLabel.Text = $MainForm.txtMyText.Text
	$MainForm.txtMyText.Clear()
}

. (Join-Path $PSScriptRoot 'SimpleForm.designer.ps1')

$MainForm.ShowDialog()