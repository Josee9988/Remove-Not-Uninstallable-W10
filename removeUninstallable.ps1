<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    removeUninstallable.ps1
.SYNOPSIS
  <Script that lets you remove all these useless and not uninstallable programs in Windows 10>
.DESCRIPTION
  <Script with multiple checkboxes, each one referencing one Windows 10 program, then you will select
  the ones you want to uninstall, press the uninstall button and they will be gone>
.INPUTS
  <None>
.OUTPUTS
  <None>
.NOTES
  Version:        2.0.0
  Author:         <@Josee9988>
  Creation Date:  <11/02/2019>
  Purpose/Change: Remove people due to mistake and rework work UI.
  Github Repo:    https://github.com/Josee9988/Remove-Not-Uninstallable-W10
#>

# Require administrator
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

function GenerateForm {
#---------------------------------------------------------[Initialisations]--------------------------------------------------------
    [reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
    [reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
    $form1 = New-Object System.Windows.Forms.Form
    $button1 = New-Object System.Windows.Forms.Button
    $listBox1 = New-Object System.Windows.Forms.ListBox
    $checkBox24 = New-Object System.Windows.Forms.CheckBox
    $checkBox23 = New-Object System.Windows.Forms.CheckBox
    $checkBox22 = New-Object System.Windows.Forms.CheckBox
    $checkBox21 = New-Object System.Windows.Forms.CheckBox
    $checkBox20 = New-Object System.Windows.Forms.CheckBox
    $checkBox19 = New-Object System.Windows.Forms.CheckBox
    $checkBox18 = New-Object System.Windows.Forms.CheckBox
    $checkBox17 = New-Object System.Windows.Forms.CheckBox
    $checkBox16 = New-Object System.Windows.Forms.CheckBox
    $checkBox15 = New-Object System.Windows.Forms.CheckBox
    $checkBox14 = New-Object System.Windows.Forms.CheckBox
    $checkBox13 = New-Object System.Windows.Forms.CheckBox
    $checkBox12 = New-Object System.Windows.Forms.CheckBox
    $checkBox11 = New-Object System.Windows.Forms.CheckBox
    $checkBox10 = New-Object System.Windows.Forms.CheckBox
    $checkBox9 = New-Object System.Windows.Forms.CheckBox
    $checkBox7 = New-Object System.Windows.Forms.CheckBox
    $checkBox6 = New-Object System.Windows.Forms.CheckBox
    $checkBox5 = New-Object System.Windows.Forms.CheckBox
    $checkBox4 = New-Object System.Windows.Forms.CheckBox
    $checkBox3 = New-Object System.Windows.Forms.CheckBox
    $checkBox2 = New-Object System.Windows.Forms.CheckBox
    $checkBox1 = New-Object System.Windows.Forms.CheckBox
    $InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
    
    #----------------------------------------------
    #Generated Event Script Blocks
    #----------------------------------------------
    
    $handler_button1_Click={
        $listBox1.Items.Clear();
        $a = new-object -comobject wscript.shell
        $intAnswer = $a.popup("Do you really want to uninstall these programs?",0,"Delete software",4)
        If ($intAnswer -eq 6) {
            if ($checkBox1.Checked){$listBox1.Items.Add("Removing 'Your Phone'")
                Get-AppxPackage *Microsoft.YourPhone* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox2.Checked){$listBox1.Items.Add( "Removing Xbox App")
                Get-AppxPackage *Microsoft.XboxApp* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox3.Checked){$listBox1.Items.Add("Removing Xbox Game Bar") 
                Get-AppxPackage *Microsoft.XboxGameBar* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox4.Checked){$listBox1.Items.Add("Removing Get Help") 
                Get-AppxPackage *Microsoft.GetHelp* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox5.Checked){$listBox1.Items.Add("Removing Messaging") 
                Get-AppxPackage *messaging* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox6.Checked){$listBox1.Items.Add("Removing Maps") 
                Get-AppxPackage *maps* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox7.Checked){$listBox1.Items.Add("Removing 3D Builder") 
                Get-AppxPackage *3dbuilder* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox8.Checked){$listBox1.Items.Add("Removing Get Office") 
                Get-AppxPackage *officehub* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox9.Checked){$listBox1.Items.Add("Removing Skype") 
                Get-AppxPackage *skypeapp* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox10.Checked){$listBox1.Items.Add("Removing Get Started") 
                Get-AppxPackage *getstarted* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox11.Checked){$listBox1.Items.Add("Removing Microsoft Solitaire Collection") 
                Get-AppxPackage *solitaire* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox12.Checked){$listBox1.Items.Add("Removing Onenote") 
                Get-AppxPackage *onenote* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox13.Checked){$listBox1.Items.Add("Removing Sports") 
                Get-AppxPackage *bingsports* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox14.Checked){$listBox1.Items.Add("Removing Money") 
                Get-AppxPackage *bingfinance* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox15.Checked){$listBox1.Items.Add("Removing News") 
                Get-AppxPackage *bingnews* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox16.Checked){$listBox1.Items.Add("Removing Calendar and Mail") 
                Get-AppxPackage *communicationsapps* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox17.Checked){$listBox1.Items.Add("Removing Weather") 
            Get-AppxPackage *bingweather* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox18.Checked){$listBox1.Items.Add("Removing Groove Music") 
            Get-AppxPackage *zunemusic* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox19.Checked){$listBox1.Items.Add("Removing Camera") 
            Get-AppxPackage *camera* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox20.Checked){$listBox1.Items.Add("Removing Alarms and Clock") 
            Get-AppxPackage *alarms* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox21.Checked){$listBox1.Items.Add("Removing Films and TV") 
            Get-AppxPackage *zunevideo* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox22.Checked){$listBox1.Items.Add("Removing Calculator") 
            Get-AppxPackage *calculator* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox23.Checked){$listBox1.Items.Add("Removing Voice recorder") 
            Get-AppxPackage *soundrecorder* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox24.Checked){$listBox1.Items.Add("Removing Photos") 
            Get-AppxPackage *photos* -AllUsers | Remove-AppxPackage
            }
            $a.popup("Software successfully removed, enjoy your new space",0,"Successful")
        } else {
          $a.popup("Operation aborted",0,"Aborted")
        }
    }
    
    #Correct the initial state of the form to prevent the .Net maximized form issue
    $OnLoadForm_StateCorrection={
        $form1.WindowState = $InitialFormWindowState
    }

    #----------------------------------------------
    #region Generated Form Code
    $icon = [system.drawing.icon]::ExtractAssociatedIcon($PSHOME + "\powershell.exe")
    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.Application]::EnableVisualStyles()
    
    $form1                           = New-Object system.Windows.Forms.Form
    $form1.ClientSize                = '445,450'
    $form1.text                      = "Remove uninstallable software"
    $form1.BackColor                 = "#1c1c1c"
    $form1.TopMost                   = $false
    $form1.Icon                      = $Icon
    
    $checkBox1                       = New-Object system.Windows.Forms.CheckBox
    $checkBox1.text                  = "Your Phone"
    $checkBox1.AutoSize              = $false
    $checkBox1.width                 = 100
    $checkBox1.height                = 20
    $checkBox1.location              = New-Object System.Drawing.Point(25,25)
    $checkBox1.Font                  = 'Microsoft Sans Serif,10'
    $checkBox1.ForeColor             = "#ffffff"
    $checkbox1.Checked               = $True
    
    $checkBox2                       = New-Object system.Windows.Forms.CheckBox
    $checkBox2.text                  = "Xbox App"
    $checkBox2.AutoSize              = $false
    $checkBox2.width                 = 95
    $checkBox2.height                = 20
    $checkBox2.location              = New-Object System.Drawing.Point(125,25)
    $checkBox2.Font                  = 'Microsoft Sans Serif,10'
    $checkBox2.ForeColor             = "#ffffff"
    $checkbox2.Checked               = $True
    
    $checkBox3                       = New-Object system.Windows.Forms.CheckBox
    $checkBox3.text                  = "Xbox Bar"
    $checkBox3.AutoSize              = $false
    $checkBox3.width                 = 95
    $checkBox3.height                = 20
    $checkBox3.location              = New-Object System.Drawing.Point(225,25)
    $checkBox3.Font                  = 'Microsoft Sans Serif,10'
    $checkBox3.ForeColor             = "#ffffff"
    $checkbox3.Checked               = $True
    
    $checkBox4                       = New-Object system.Windows.Forms.CheckBox
    $checkBox4.text                  = "Get help"
    $checkBox4.AutoSize              = $false
    $checkBox4.width                 = 95
    $checkBox4.height                = 20
    $checkBox4.location              = New-Object System.Drawing.Point(325,25)
    $checkBox4.Font                  = 'Microsoft Sans Serif,10'
    $checkBox4.ForeColor             = "#ffffff"
    $checkbox4.Checked               = $True
    
    $checkBox5                       = New-Object system.Windows.Forms.CheckBox
    $checkBox5.text                  = "Messaging"
    $checkBox5.AutoSize              = $false
    $checkBox5.width                 = 95
    $checkBox5.height                = 20
    $checkBox5.location              = New-Object System.Drawing.Point(25,65)
    $checkBox5.Font                  = 'Microsoft Sans Serif,10'
    $checkBox5.ForeColor             = "#ffffff"
    $checkbox5.Checked               = $True

    $checkBox6                       = New-Object system.Windows.Forms.CheckBox
    $checkBox6.text                  = "Maps"
    $checkBox6.AutoSize              = $false
    $checkBox6.width                 = 95
    $checkBox6.height                = 20
    $checkBox6.location              = New-Object System.Drawing.Point(125,65)
    $checkBox6.Font                  = 'Microsoft Sans Serif,10'
    $checkBox6.ForeColor             = "#ffffff"
    $checkbox6.Checked               = $True
    
    $checkBox7                       = New-Object system.Windows.Forms.CheckBox
    $checkBox7.text                  = "3D Builder"
    $checkBox7.AutoSize              = $false
    $checkBox7.width                 = 95
    $checkBox7.height                = 20
    $checkBox7.location              = New-Object System.Drawing.Point(225,65)
    $checkBox7.Font                  = 'Microsoft Sans Serif,10'
    $checkBox7.ForeColor             = "#ffffff"
    $checkbox7.Checked               = $True

    $checkBox8                       = New-Object system.Windows.Forms.CheckBox
    $checkBox8.text                  = "Get Office"
    $checkBox8.AutoSize              = $false
    $checkBox8.width                 = 95
    $checkBox8.height                = 20
    $checkBox8.location              = New-Object System.Drawing.Point(325,65)
    $checkBox8.Font                  = 'Microsoft Sans Serif,10'
    $checkBox8.ForeColor             = "#ffffff"
    $checkbox8.Checked               = $True
    
    $checkBox9                       = New-Object system.Windows.Forms.CheckBox
    $checkBox9.text                  = "Skype"
    $checkBox9.AutoSize              = $false
    $checkBox9.width                 = 95
    $checkBox9.height                = 20
    $checkBox9.location              = New-Object System.Drawing.Point(25,105)
    $checkBox9.Font                  = 'Microsoft Sans Serif,10'
    $checkBox9.ForeColor             = "#ffffff"
    $checkbox9.Checked               = $True
    
    $checkBox10                      = New-Object system.Windows.Forms.CheckBox
    $checkBox10.text                 = "Get started"
    $checkBox10.AutoSize             = $false
    $checkBox10.width                = 95
    $checkBox10.height               = 20
    $checkBox10.location             = New-Object System.Drawing.Point(125,105)
    $checkBox10.Font                 = 'Microsoft Sans Serif,10'
    $checkBox10.ForeColor            = "#ffffff"
    $checkbox10.Checked              = $True
    
    $checkBox11                      = New-Object system.Windows.Forms.CheckBox
    $checkBox11.text                 = "Solitaire"
    $checkBox11.AutoSize             = $false
    $checkBox11.width                = 95
    $checkBox11.height               = 20
    $checkBox11.location             = New-Object System.Drawing.Point(225,104)
    $checkBox11.Font                 = 'Microsoft Sans Serif,10'
    $checkBox11.ForeColor            = "#ffffff"
    $checkbox11.Checked              = $True
    
    $checkBox12                      = New-Object system.Windows.Forms.CheckBox
    $checkBox12.text                 = "Onenote"
    $checkBox12.AutoSize             = $false
    $checkBox12.width                = 95
    $checkBox12.height               = 20
    $checkBox12.location             = New-Object System.Drawing.Point(326,105)
    $checkBox12.Font                 = 'Microsoft Sans Serif,10'
    $checkBox12.ForeColor            = "#ffffff"
    $checkbox12.Checked              = $True
    
    $checkBox13                      = New-Object system.Windows.Forms.CheckBox
    $checkBox13.text                 = "Sports"
    $checkBox13.AutoSize             = $false
    $checkBox13.width                = 95
    $checkBox13.height               = 20
    $checkBox13.location             = New-Object System.Drawing.Point(25,145)
    $checkBox13.Font                 = 'Microsoft Sans Serif,10'
    $checkBox13.ForeColor            = "#ffffff"
    $checkbox13.Checked              = $True
    
    $checkBox14                      = New-Object system.Windows.Forms.CheckBox
    $checkBox14.text                 = "Money"
    $checkBox14.AutoSize             = $false
    $checkBox14.width                = 95
    $checkBox14.height               = 20
    $checkBox14.location             = New-Object System.Drawing.Point(125,145)
    $checkBox14.Font                 = 'Microsoft Sans Serif,10'
    $checkBox14.ForeColor            = "#ffffff"
    $checkbox14.Checked              = $True
    
    $checkBox15                      = New-Object system.Windows.Forms.CheckBox
    $checkBox15.text                 = "News"
    $checkBox15.AutoSize             = $false
    $checkBox15.width                = 95
    $checkBox15.height               = 20
    $checkBox15.location             = New-Object System.Drawing.Point(225,145)
    $checkBox15.Font                 = 'Microsoft Sans Serif,10'
    $checkBox15.ForeColor            = "#ffffff"
    $checkbox15.Checked              = $True
    
    $checkBox16                      = New-Object system.Windows.Forms.CheckBox
    $checkBox16.text                 = "Calendar and Mail"
    $checkBox16.AutoSize             = $false
    $checkBox16.width                = 150
    $checkBox16.height               = 20
    $checkBox16.location             = New-Object System.Drawing.Point(325,145)
    $checkBox16.Font                 = 'Microsoft Sans Serif,10'
    $checkBox16.ForeColor            = "#ffffff"
    $checkbox16.Checked              = $false
    
    $checkBox17                      = New-Object system.Windows.Forms.CheckBox
    $checkBox17.text                 = "Weather"
    $checkBox17.AutoSize             = $false
    $checkBox17.width                = 95
    $checkBox17.height               = 20
    $checkBox17.location             = New-Object System.Drawing.Point(26,185)
    $checkBox17.Font                 = 'Microsoft Sans Serif,10'
    $checkBox17.ForeColor            = "#ffffff"
    $checkbox17.Checked              = $false
    
    $checkBox18                      = New-Object system.Windows.Forms.CheckBox
    $checkBox18.text                 = "Groove Music"
    $checkBox18.AutoSize             = $false
    $checkBox18.width                = 95
    $checkBox18.height               = 20
    $checkBox18.location             = New-Object System.Drawing.Point(125,185)
    $checkBox18.Font                 = 'Microsoft Sans Serif,10'
    $checkBox18.ForeColor            = "#ffffff"
    $checkbox18.Checked              = $false
    
    $checkBox19                      = New-Object system.Windows.Forms.CheckBox
    $checkBox19.text                 = "Camera"
    $checkBox19.AutoSize             = $false
    $checkBox19.width                = 95
    $checkBox19.height               = 20
    $checkBox19.location             = New-Object System.Drawing.Point(225,184)
    $checkBox19.Font                 = 'Microsoft Sans Serif,10'
    $checkBox19.ForeColor            = "#ffffff"
    $checkbox19.Checked              = $false
    
    $checkBox20                      = New-Object system.Windows.Forms.CheckBox
    $checkBox20.text                 = "Alarms and Clock"
    $checkBox20.AutoSize             = $false
    $checkBox20.width                = 150
    $checkBox20.height               = 20
    $checkBox20.location             = New-Object System.Drawing.Point(325,185)
    $checkBox20.Font                 = 'Microsoft Sans Serif,10'
    $checkBox20.ForeColor            = "#ffffff"
    $checkbox10.Checked              = $false
    
    $checkBox21                      = New-Object system.Windows.Forms.CheckBox
    $checkBox21.text                 = "Films TV"
    $checkBox21.AutoSize             = $false
    $checkBox21.width                = 100
    $checkBox21.height               = 20
    $checkBox21.location             = New-Object System.Drawing.Point(25,225)
    $checkBox21.Font                 = 'Microsoft Sans Serif,10'
    $checkBox21.ForeColor            = "#ffffff"
    $checkbox21.Checked              = $false
    
    $checkBox22                      = New-Object system.Windows.Forms.CheckBox
    $checkBox22.text                 = "Calculator"
    $checkBox22.AutoSize             = $false
    $checkBox22.width                = 95
    $checkBox22.height               = 20
    $checkBox22.location             = New-Object System.Drawing.Point(125,225)
    $checkBox22.Font                 = 'Microsoft Sans Serif,10'
    $checkBox22.ForeColor            = "#ffffff"
    $checkbox22.Checked              = $false
    
    $checkBox23                      = New-Object system.Windows.Forms.CheckBox
    $checkBox23.text                 = "Voice Rec."
    $checkBox23.AutoSize             = $false
    $checkBox23.width                = 100
    $checkBox23.height               = 20
    $checkBox23.location             = New-Object System.Drawing.Point(225,225)
    $checkBox23.Font                 = 'Microsoft Sans Serif,10'
    $checkBox23.ForeColor            = "#ffffff"
    $checkbox23.Checked              = $false
    
    $button1                         = New-Object system.Windows.Forms.Button
    $button1.text                    = "Run Script"
    $button1.width                   = 380
    $button1.height                  = 30
    $button1.location                = New-Object System.Drawing.Point(29,259)
    $button1.Font                    = 'Cambria,18,style=Bold'
    $button1.ForeColor               = "#ffffff"
    $button1.add_Click($handler_button1_Click)
    
    $ListBox1                        = New-Object system.Windows.Forms.ListBox
    $ListBox1.BackColor              = "#1c1c1c"
    $ListBox1.text                   = "Items Removed"
    $ListBox1.width                  = 425
    $ListBox1.height                 = 137
    $ListBox1.location               = New-Object System.Drawing.Point(11,304)
    $ListBox1.ForeColor              = "#ffffff"

    
    $checkBox24                      = New-Object system.Windows.Forms.CheckBox
    $checkBox24.text                 = "Photos"
    $checkBox24.AutoSize             = $false
    $checkBox24.width                = 95
    $checkBox24.height               = 20
    $checkBox24.location             = New-Object System.Drawing.Point(325,225)
    $checkBox24.Font                 = 'Microsoft Sans Serif,10'
    $checkBox24.ForeColor            = "#ffffff"
    
    $form1.controls.AddRange(@($checkBox1,$checkBox2,$checkBox3,$checkBox4,$checkBox5,$checkBox6,$checkBox7,$checkBox8,$checkBox9,$checkBox10,$checkBox11,$checkBox12,$checkBox13,$checkBox14,$checkBox15,$checkBox16,$checkBox17,$checkBox18,$checkBox19,$checkBox20,$checkBox21,$checkBox22,$checkBox23,$button1,$ListBox1,$checkBox24))
    
    #Save the initial state of the form
    $InitialFormWindowState = $form1.WindowState
    #Init the OnLoad event to correct the initial state of the form
    $form1.add_Load($OnLoadForm_StateCorrection)
    #Show the Form
    $form1.ShowDialog()| Out-Null
    } #End Function


#-----------------------------------------------------------[Execution]------------------------------------------------------------
GenerateForm
