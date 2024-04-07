
XIncludeFile "CustomButtons.pbi"
;--------------------------------------------------------------------------
Global Window_0

Global Image_0, Text_0, Image_1, Text_1, OpenGL_0
Global Img_Window_0_0, Img_Window_0_1

Img_Window_0_0 = LoadImage(#PB_Any,"C:\PureBasic\Examples\LCARS\assets\topleft.jpg")
Img_Window_0_1 = LoadImage(#PB_Any,"C:\PureBasic\Examples\LCARS\assets\midleft.jpg")


CompilerIf #PB_Compiler_IsMainFile
    
  UsePNGImageDecoder()
  UseJPEGImageDecoder()

    Procedure.i MyButton_Flat(Gadget, X, Y, Width, Height, Text.s)
        ; flat button square no radius no gradient
        MyButton::SetTemplate(MyButton::#Prop_Align, 0)
        MyButton::SetTemplate(MyButton::#Prop_Gradient, 0)
        MyButton::SetTemplate(MyButton::#Prop_Radius, 0)
        MyButton::SetTemplate(MyButton::#Prop_Type, MyButton::#Type_Normal)
        
        ProcedureReturn MyButton::New(Gadget, X, Y, Width, Height,Text)
        
    EndProcedure
    
    
;     Enumeration    
;         #MenuItem_1
;         #MenuItem_2
;         #MenuItem_3
;     EndEnumeration
    
    Define Btn1, Btn2, Btn3, Btn4, Btn5, Btn6, Btn7, mnu, gdt,img
    
    Procedure   OnClick_Btn6()
        MessageRequester("USS Firestar - System Warning","EJECT WARP CORE!", #PB_MessageRequester_Warning | #PB_MessageRequester_YesNo)
    EndProcedure
    
    If OpenWindow(Window_0, 0, 0, 600, 480, "TOS LCARS", #PB_Window_SystemMenu | #PB_Window_ScreenCentered | #PB_Window_MinimizeGadget | #PB_Window_MaximizeGadget | #PB_Window_SizeGadget)
        SetWindowColor(0,$000000)
 ;Set up the buttons 
        
        Btn1 = MyButton::New(#PB_Any, 10, 10, 160, 30,"New", "normal button")
        Btn2 = MyButton::New(#PB_Any, 10, 44, 160, 30,"Open", "normal button")
          
        Btn3 = MyButton::New(#PB_Any, 10, 78, 160, 30,"Save", "normal button")
        Btn4 = MyButton::New(#PB_Any, 10, 112, 160, 30,"Save as", "normal button")
        Btn5 = MyButton::New(#PB_Any, 10, 146, 160, 30, "Initiate Warp", "normal button")
        Btn6 = MyButton::New(#PB_Any, 10, 180, 160, 30,"Eject Core?", "normal button")
        Btn7 = MyButton::New(#PB_Any, 10, 214, 160, 30,"Exit Warp", "normal button")
      ;         
        MyButton::SetProperty(Btn1, MyButton::#Prop_Radius,20) 
        MyButton::SetProperty(Btn2, MyButton::#Prop_BackColor, $CD944F)
        MyButton::SetProperty(Btn1, MyButton:: #Prop_OutColor, $000000)
        MyButton::SetProperty(Btn1, MyButton:: #Prop_BorderColor, $000000)
         
        MyButton::SetProperty(Btn2, MyButton::#Prop_Radius,15)
        MyButton::SetProperty(Btn2, MyButton::#Prop_BackColor, $507FFF)
        MyButton::SetProperty(Btn2, MyButton:: #Prop_OutColor, $000000)
        MyButton::SetProperty(Btn2, MyButton:: #Prop_BorderColor, $000000)
        
        MyButton::SetProperty(Btn3, MyButton::#Prop_Radius,15)
        MyButton::SetProperty(Btn3, MyButton::#Prop_BackColor, $ED9564) 
        MyButton::SetProperty(Btn3, MyButton:: #Prop_OutColor, $000000)
        MyButton::SetProperty(Btn3, MyButton:: #Prop_BorderColor, $000000)
        
        MyButton::SetProperty(Btn4, MyButton::#Prop_Radius,15)
        MyButton::SetProperty(Btn4, MyButton::#Prop_BackColor, $9370DB)
        MyButton::SetProperty(Btn4, MyButton:: #Prop_OutColor, $000000)
        MyButton::SetProperty(Btn4, MyButton:: #Prop_BorderColor, $000000)
        
        
        MyButton::SetProperty(Btn5, MyButton::#Prop_Radius,15)
        MyButton::SetProperty(Btn5, MyButton::#Prop_BackColor, $D355BA)
        MyButton::SetProperty(Btn5, MyButton:: #Prop_OutColor, $000000)
        MyButton::SetProperty(Btn5, MyButton:: #Prop_BorderColor, $000000)
        
        MyButton::SetProperty(Btn6, MyButton::#Prop_Radius,15)
        MyButton::SetProperty(Btn6, MyButton::#Prop_BackColor, $0FB9FF)
        MyButton::SetProperty(Btn6, MyButton:: #Prop_OutColor, $000000)
        MyButton::SetProperty(Btn6, MyButton:: #Prop_BorderColor, $000000)
        
        
        MyButton::SetProperty(Btn7, MyButton::#Prop_Radius,15)
        MyButton::SetProperty(Btn7, MyButton::#Prop_TextColor, $FFFFFF)
        MyButton::SetProperty(Btn7, MyButton::#Prop_BackColor, RGB(224, 60, 60))
        MyButton::SetProperty(Btn7, MyButton:: #Prop_OutColor, $000000)
        MyButton::SetProperty(Btn7, MyButton:: #Prop_BorderColor, $000000)
        
        ; attaching a pocedure to OnClick event
        
        MyButton::SetProperty(Btn6, MyButton::#Prop_OnClick, @OnClick_Btn6())
;         
 Repeat 
            Select WaitWindowEvent()
                Case #PB_Event_SizeWindow
                ;    MyButton::Resize(btn2, #PB_Ignore,#PB_Ignore, WindowWidth(0) - 220, #PB_Ignore)
                 ;   MyButton::Resize(btn4, #PB_Ignore,#PB_Ignore, WindowWidth(0) - 220, #PB_Ignore)
                ;    MyButton::Resize(btn7, #PB_Ignore,#PB_Ignore, WindowWidth(0) - 220, #PB_Ignore)
                Case #PB_Event_Menu
                    Select EventMenu()
                 ;       Case #MenuItem_1 : Debug " menuitem 1"
                  ;      Case #MenuItem_2 : Debug " menuitem 2"
                  ;      Case #MenuItem_3 : Debug " menuitem 3"
                    EndSelect
                    
                Case #PB_Event_CloseWindow
                    End
            EndSelect
 ForEver
        
    EndIf
    
CompilerEndIf

; IDE Options = PureBasic 6.10 LTS beta 9 (Windows - x64)
; CursorPosition = 38
; FirstLine = 34
; Folding = -
; EnableXP
; DPIAware