# Script name: removeUninstallable.ps1
<#
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
  Version:        1.0
  Author:         <@Josee9988>
  Creation Date:  <11/02/2019>
  Purpose/Change: Initial script development
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
    $checkBox26 = New-Object System.Windows.Forms.CheckBox
    $checkBox25 = New-Object System.Windows.Forms.CheckBox
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
            if ($checkBox6.Checked){$listBox1.Items.Add("Removing People") 
                Get-AppxPackage *people* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox7.Checked){$listBox1.Items.Add("Removing Maps") 
                Get-AppxPackage *maps* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox9.Checked){$listBox1.Items.Add("Removing 3D Builder") 
                Get-AppxPackage *3dbuilder* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox10.Checked){$listBox1.Items.Add("Removing Get Office") 
                Get-AppxPackage *officehub* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox11.Checked){$listBox1.Items.Add("Removing Get Skype") 
                Get-AppxPackage *skypeapp* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox12.Checked){$listBox1.Items.Add("Removing Get Started") 
                Get-AppxPackage *getstarted* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox13.Checked){$listBox1.Items.Add("Removing Microsoft Solitaire Collection") 
                Get-AppxPackage *solitaire* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox14.Checked){$listBox1.Items.Add("Removing Onenote") 
                Get-AppxPackage *onenote* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox15.Checked){$listBox1.Items.Add("Removing Sports") 
                Get-AppxPackage *bingsports* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox16.Checked){$listBox1.Items.Add("Removing Money") 
                Get-AppxPackage *bingfinance* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox17.Checked){$listBox1.Items.Add("Removing News") 
                Get-AppxPackage *bingnews* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox18.Checked){$listBox1.Items.Add("Removing Calendar & Mail") 
                Get-AppxPackage *communicationsapps* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox19.Checked){$listBox1.Items.Add("Removing Alarms & Clock") 
                Get-AppxPackage *alarms* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox20.Checked){$listBox1.Items.Add("Removing Weather") 
            Get-AppxPackage *bingweather* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox21.Checked){$listBox1.Items.Add("Removing Films & TV") 
            Get-AppxPackage *zunevideo* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox22.Checked){$listBox1.Items.Add("Removing Groove Music") 
            Get-AppxPackage *zunemusic* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox23.Checked){$listBox1.Items.Add("Removing Voice recorder") 
            Get-AppxPackage *soundrecorder* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox24.Checked){$listBox1.Items.Add("Removing Camera") 
            Get-AppxPackage *camera* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox25.Checked){$listBox1.Items.Add("Removing Photos") 
            Get-AppxPackage *photos* -AllUsers | Remove-AppxPackage
            }
            if ($checkBox26.Checked){$listBox1.Items.Add("Removing Calculator") 
            Get-AppxPackage *calculator* -AllUsers | Remove-AppxPackage
            }

            $a.popup("Software successfully removed, enjoy your new space",0,"Successful")
        } else {
          $a.popup("Operation aborted",0,"Aborted")
        }
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
    $System_Drawing_Size.Width = 625
    $System_Drawing_Size.Height = 800
    $form1.ClientSize = $System_Drawing_Size
    $Icon = [system.drawing.icon]::ExtractAssociatedIcon($PSHOME + "\powershell.exe")
    $form1.Icon = $Icon
    
    $button1.TabIndex = 4
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 75
    $System_Drawing_Size.Height = 23
    $button1.Size = $System_Drawing_Size
    $button1.UseVisualStyleBackColor = $True
    $button1.Text = "Uninstall"
    
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 765
    $button1.Location = $System_Drawing_Point
    $button1.DataBindings.DefaultDataSourceUpdateMode = 0
    $button1.add_Click($handler_button1_Click)
    $form1.Controls.Add($button1)
    
    $listBox1.FormattingEnabled = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 450
    $System_Drawing_Size.Height = 775
    $listBox1.Size = $System_Drawing_Size
    $listBox1.DataBindings.DefaultDataSourceUpdateMode = 0
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 137
    $System_Drawing_Point.Y = 13
    $listBox1.Location = $System_Drawing_Point
    $listBox1.TabIndex = 3
    $form1.Controls.Add($listBox1)
    
    
    # CHECKBOXES
    $checkBox26.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox26.Size = $System_Drawing_Size
    $checkBox26.TabIndex = 2
    $checkBox26.Text = "Calculator"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 726
    $checkBox26.Location = $System_Drawing_Point
    $checkBox26.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox26.Checked = $False
    $form1.Controls.Add($checkBox26)

    $checkBox25.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox25.Size = $System_Drawing_Size
    $checkBox25.TabIndex = 2
    $checkBox25.Text = "Photos"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 726
    $checkBox25.Location = $System_Drawing_Point
    $checkBox25.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox25.Checked = $False
    $form1.Controls.Add($checkBox25)

    $checkBox24.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox24.Size = $System_Drawing_Size
    $checkBox24.TabIndex = 2
    $checkBox24.Text = "Camera"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 695
    $checkBox24.Location = $System_Drawing_Point
    $checkBox24.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox24.Checked = $False
    $form1.Controls.Add($checkBox24)

    $checkBox23.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox23.Size = $System_Drawing_Size
    $checkBox23.TabIndex = 2
    $checkBox23.Text = "Voice Recorder"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 664
    $checkBox23.Location = $System_Drawing_Point
    $checkBox23.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox23.Checked = $False
    $form1.Controls.Add($checkBox23)

    $checkBox22.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox22.Size = $System_Drawing_Size
    $checkBox22.TabIndex = 2
    $checkBox22.Text = "Groove Music"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 633
    $checkBox22.Location = $System_Drawing_Point
    $checkBox22.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox22.Checked = $False
    $form1.Controls.Add($checkBox22)

    $checkBox21.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox21.Size = $System_Drawing_Size
    $checkBox21.TabIndex = 2
    $checkBox21.Text = "Films & Tv"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 602
    $checkBox21.Location = $System_Drawing_Point
    $checkBox21.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox21.Checked = $False
    $form1.Controls.Add($checkBox21)

    $checkBox20.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox20.Size = $System_Drawing_Size
    $checkBox20.TabIndex = 2
    $checkBox20.Text = "Weather"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 571
    $checkBox20.Location = $System_Drawing_Point
    $checkBox20.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox20.Checked = $False
    $form1.Controls.Add($checkBox20)

    $checkBox19.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox19.Size = $System_Drawing_Size
    $checkBox19.TabIndex = 2
    $checkBox19.Text = "Alarms & Clock"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 540
    $checkBox19.Location = $System_Drawing_Point
    $checkBox19.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox19.Checked = $False
    $form1.Controls.Add($checkBox19)

    $checkBox18.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox18.Size = $System_Drawing_Size
    $checkBox18.TabIndex = 2
    $checkBox18.Text = "Calendar & Mail"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 509
    $checkBox18.Location = $System_Drawing_Point
    $checkBox18.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox18.Checked = $False
    $form1.Controls.Add($checkBox18)

    $checkBox17.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox17.Size = $System_Drawing_Size
    $checkBox17.TabIndex = 2
    $checkBox17.Text = "News"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 478
    $checkBox17.Location = $System_Drawing_Point
    $checkBox17.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox17.Checked = $True
    $form1.Controls.Add($checkBox17)

    $checkBox16.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox16.Size = $System_Drawing_Size
    $checkBox16.TabIndex = 2
    $checkBox16.Text = "Money"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 447
    $checkBox16.Location = $System_Drawing_Point
    $checkBox16.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox16.Checked = $True
    $form1.Controls.Add($checkBox16)

    $checkBox15.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox15.Size = $System_Drawing_Size
    $checkBox15.TabIndex = 2
    $checkBox15.Text = "Sports"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 416
    $checkBox15.Location = $System_Drawing_Point
    $checkBox15.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox15.Checked = $True
    $form1.Controls.Add($checkBox15)

    $checkBox14.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox14.Size = $System_Drawing_Size
    $checkBox14.TabIndex = 2
    $checkBox14.Text = "Onenote"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 385
    $checkBox14.Location = $System_Drawing_Point
    $checkBox14.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox14.Checked = $True
    $form1.Controls.Add($checkBox14)

    $checkBox13.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox13.Size = $System_Drawing_Size
    $checkBox13.TabIndex = 2
    $checkBox13.Text = "Solitaire"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 354
    $checkBox13.Location = $System_Drawing_Point
    $checkBox13.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox13.Checked = $True
    $form1.Controls.Add($checkBox13)

    $checkBox12.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox12.Size = $System_Drawing_Size
    $checkBox12.TabIndex = 2
    $checkBox12.Text = "Get Started"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 323
    $checkBox12.Location = $System_Drawing_Point
    $checkBox12.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox12.Checked = $True
    $form1.Controls.Add($checkBox12)

    $checkBox11.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox11.Size = $System_Drawing_Size
    $checkBox11.TabIndex = 2
    $checkBox11.Text = "Get Office"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 292
    $checkBox11.Location = $System_Drawing_Point
    $checkBox11.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox11.Checked = $True
    $form1.Controls.Add($checkBox11)

    $checkBox10.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox10.Size = $System_Drawing_Size
    $checkBox10.TabIndex = 2
    $checkBox10.Text = "Get Office"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 261
    $checkBox10.Location = $System_Drawing_Point
    $checkBox10.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox10.Checked = $True
    $form1.Controls.Add($checkBox10)

    $checkBox9.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox9.Size = $System_Drawing_Size
    $checkBox9.TabIndex = 2
    $checkBox9.Text = "3D Builder"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 230
    $checkBox9.Location = $System_Drawing_Point
    $checkBox9.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox9.Checked = $True
    $form1.Controls.Add($checkBox9)

    $checkBox7.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox7.Size = $System_Drawing_Size
    $checkBox7.TabIndex = 2
    $checkBox7.Text = "Maps"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 199
    $checkBox7.Location = $System_Drawing_Point
    $checkBox7.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox7.Checked = $True
    $form1.Controls.Add($checkBox7)

    $checkBox6.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox6.Size = $System_Drawing_Size
    $checkBox6.TabIndex = 2
    $checkBox6.Text = "People"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 168
    $checkBox6.Location = $System_Drawing_Point
    $checkBox6.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox6.Checked = $True
    $form1.Controls.Add($checkBox6)

    $checkBox5.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox5.Size = $System_Drawing_Size
    $checkBox5.TabIndex = 2
    $checkBox5.Text = "Messaging"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 137
    $checkBox5.Location = $System_Drawing_Point
    $checkBox5.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox5.Checked = $True
    $form1.Controls.Add($checkBox5)

    $checkBox4.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox4.Size = $System_Drawing_Size
    $checkBox4.TabIndex = 2
    $checkBox4.Text = "Get Help"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 106
    $checkBox4.Location = $System_Drawing_Point
    $checkBox4.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkbox4.Checked = $True
    $form1.Controls.Add($checkBox4)

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
    


#-----------------------------------------------------------[Execution]------------------------------------------------------------
GenerateForm
