[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$MainForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.TextBox]$txtMyText = $null
[System.Windows.Forms.Label]$lblMyLabel = $null
[System.Windows.Forms.Button]$button2 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$txtMyText = (New-Object -TypeName System.Windows.Forms.TextBox)
$lblMyLabel = (New-Object -TypeName System.Windows.Forms.Label)
$button2 = (New-Object -TypeName System.Windows.Forms.Button)
$MainForm.SuspendLayout()
#
#txtMyText
#
$txtMyText.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$txtMyText.Name = [System.String]'txtMyText'
$txtMyText.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]260,[System.Int32]20))
$txtMyText.TabIndex = [System.Int32]0
#
#lblMyLabel
#
$lblMyLabel.AutoSize = $true
$lblMyLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]45))
$lblMyLabel.Name = [System.String]'lblMyLabel'
$lblMyLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]85,[System.Int32]13))
$lblMyLabel.TabIndex = [System.Int32]1
$lblMyLabel.Text = [System.String]'This is some text'
#
#button2
#
$button2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]75,[System.Int32]70))
$button2.Name = [System.String]'button2'
$button2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]119,[System.Int32]23))
$button2.TabIndex = [System.Int32]2
$button2.Text = [System.String]'Set Label Text'
$button2.UseVisualStyleBackColor = $true
$button2.add_Click($button2_Click)
#
#MainForm
#
$MainForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]284,[System.Int32]101))
$MainForm.Controls.Add($button2)
$MainForm.Controls.Add($lblMyLabel)
$MainForm.Controls.Add($txtMyText)
$MainForm.Name = [System.String]'MainForm'
$MainForm.add_Load($MainForm_Load)
$MainForm.ResumeLayout($false)
$MainForm.PerformLayout()
Add-Member -InputObject $MainForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name txtMyText -Value $txtMyText -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name lblMyLabel -Value $lblMyLabel -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button2 -Value $button2 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
