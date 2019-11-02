# Script name: removeUninstallable.ps1
# Created on: 11/02/2019
# Author: Josee9988
# Link: https://github.com/Josee9988/Remove-Not-Uninstallable-W10
# Purpose Script that lets you remove all these useless and not uninstallable programs in Windows 10

#Get-AppxPackage *Microsoft.YourPhone* -AllUsers | Remove-AppxPackage
#Get-AppxPackage *Microsoft.XboxGameBar* -AllUsers | Remove-AppxPackage
#Get-AppxPackage Microsoft.XboxApp | Remove-AppxPackage
#Get-AppxPackage *Microsoft.XboxApp* | -AllUsers | Remove-AppxPackage
#Get-AppxPackage *Microsoft.XboxApp* -AllUsers | Remove-AppxPackage
#Get-AppxPackage *xbox* -AllUsers | Remove-AppxPackage
#Get-AppxPackage *Microsoft.GetHelp* -AllUsers | Remove-AppxPackage
#Get-AppxPackage *messaging* -AllUsers | Remove-AppxPackage
#Get-AppxPackage *people* -AllUsers | Remove-AppxPackage
#Get-AppxPackage *maps* -AllUsers | Remove-AppxPackage


    # Require administrator
    if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }


function GenerateForm {

    [reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
    [reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
    
    $form1 = New-Object System.Windows.Forms.Form
    $button1 = New-Object System.Windows.Forms.Button
    $listBox1 = New-Object System.Windows.Forms.ListBox
    $checkBox3 = New-Object System.Windows.Forms.CheckBox
    $checkBox2 = New-Object System.Windows.Forms.CheckBox
    $checkBox1 = New-Object System.Windows.Forms.CheckBox
    $InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
    
    #----------------------------------------------
    #Generated Event Script Blocks
    #----------------------------------------------
    
    $handler_button1_Click= 
    {
        $listBox1.Items.Clear();    
    
        if ($checkBox1.Checked){
            $listBox1.Items.Add("Removing 'Your Phone'")
            Get-AppxPackage *Microsoft.YourPhone* -AllUsers | Remove-AppxPackage
        }
    
        if ($checkBox2.Checked){  $listBox1.Items.Add( "Removing Xbox App")
        Get-AppxPackage *Microsoft.XboxApp* -AllUsers | Remove-AppxPackage
        }
    
        if ($checkBox3.Checked){$listBox1.Items.Add("Removing Xbox Game Bar") 
        Get-AppxPackage *Microsoft.XboxGameBar* -AllUsers | Remove-AppxPackage
        }
    
        if ( !$checkBox1.Checked -and !$checkBox2.Checked -and !$checkBox3.Checked ) {   $listBox1.Items.Add("No options selected")} 
    }
    
    $OnLoadForm_StateCorrection=
    {#Correct the initial state of the form to prevent the .Net maximized form issue
        $form1.WindowState = $InitialFormWindowState
    }
    
    #----------------------------------------------
    #region Generated Form Code
    $form1.Text = "Remove uninstallable programs"
    $form1.DataBindings.DefaultDataSourceUpdateMode = 0
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 500
    $System_Drawing_Size.Height = 250
    $form1.ClientSize = $System_Drawing_Size
    
    $button1.TabIndex = 4
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 75
    $System_Drawing_Size.Height = 23
    $button1.Size = $System_Drawing_Size
    $button1.UseVisualStyleBackColor = $True
    
    $button1.Text = "Uninstall"
    
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 156
    $button1.Location = $System_Drawing_Point
    $button1.DataBindings.DefaultDataSourceUpdateMode = 0
    $button1.add_Click($handler_button1_Click)
    
    $form1.Controls.Add($button1)
    
    $listBox1.FormattingEnabled = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 301
    $System_Drawing_Size.Height = 212
    $listBox1.Size = $System_Drawing_Size
    $listBox1.DataBindings.DefaultDataSourceUpdateMode = 0
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 137
    $System_Drawing_Point.Y = 13
    $listBox1.Location = $System_Drawing_Point
    $listBox1.TabIndex = 3
    
    $form1.Controls.Add($listBox1)
    
    
    $checkBox3.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox3.Size = $System_Drawing_Size
    $checkBox3.TabIndex = 2
    $checkBox3.Text = "Xbox Game Bar"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 75
    $checkBox3.Location = $System_Drawing_Point
    $checkBox3.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox3.Checked = $True

    $form1.Controls.Add($checkBox3)
    
    
    $checkBox2.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox2.Size = $System_Drawing_Size
    $checkBox2.TabIndex = 1
    $checkBox2.Text = "Xbox App"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 44
    $checkBox2.Location = $System_Drawing_Point
    $checkBox2.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox2.Checked = $True

    $form1.Controls.Add($checkBox2)
    
    
    
        $checkBox1.UseVisualStyleBackColor = $True
        $System_Drawing_Size = New-Object System.Drawing.Size
        $System_Drawing_Size.Width = 104
        $System_Drawing_Size.Height = 24
        $checkBox1.Size = $System_Drawing_Size
        $checkBox1.TabIndex = 0
        $checkBox1.Text = "Your Phone"
        $System_Drawing_Point = New-Object System.Drawing.Point
        $System_Drawing_Point.X = 27
        $System_Drawing_Point.Y = 13
        $checkBox1.Location = $System_Drawing_Point
        $checkBox1.DataBindings.DefaultDataSourceUpdateMode = 0
        $checkbox1.Checked = $True
    
    $form1.Controls.Add($checkBox1)
    
    
    #Save the initial state of the form
    $InitialFormWindowState = $form1.WindowState
    #Init the OnLoad event to correct the initial state of the form
    $form1.add_Load($OnLoadForm_StateCorrection)
    #Show the Form
    $form1.ShowDialog()| Out-Null
    
    } #End Function
    


    #Call the Function
    GenerateForm
