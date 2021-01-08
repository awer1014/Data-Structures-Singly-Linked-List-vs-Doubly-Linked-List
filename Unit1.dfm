object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 562
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 0
    Width = 680
    Height = 209
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 681
    Height = 201
    Caption = 'Panel1'
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 681
      Height = 201
      ActivePage = TabSheet1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Single Linked List'
        object GroupBox1: TGroupBox
          Left = -4
          Top = 3
          Width = 209
          Height = 169
          Caption = 'Insert'
          TabOrder = 0
          object Label1: TLabel
            Left = 24
            Top = 32
            Width = 49
            Height = 13
            Caption = 'element ='
          end
          object Edit1: TEdit
            Left = 85
            Top = 29
            Width = 121
            Height = 21
            TabOrder = 0
          end
          object Button1: TButton
            Left = 24
            Top = 72
            Width = 161
            Height = 25
            Caption = 'Insert Front'
            TabOrder = 1
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 24
            Top = 105
            Width = 161
            Height = 25
            Caption = 'Insert After First'
            TabOrder = 2
            OnClick = Button2Click
          end
          object Button3: TButton
            Left = 24
            Top = 136
            Width = 161
            Height = 25
            Caption = 'Insert Rear'
            TabOrder = 3
            OnClick = Button3Click
          end
        end
        object GroupBox2: TGroupBox
          Left = 230
          Top = 3
          Width = 209
          Height = 169
          Caption = 'Searching'
          TabOrder = 1
          object Label2: TLabel
            Left = 24
            Top = 32
            Width = 41
            Height = 13
            Caption = 'target ='
          end
          object Edit2: TEdit
            Left = 85
            Top = 29
            Width = 121
            Height = 21
            TabOrder = 0
          end
          object Button4: TButton
            Left = 115
            Top = 72
            Width = 75
            Height = 25
            Caption = 'Insert After'
            TabOrder = 1
            OnClick = Button4Click
          end
          object Button5: TButton
            Left = 16
            Top = 72
            Width = 75
            Height = 25
            Caption = 'Find Target'
            TabOrder = 2
            OnClick = Button5Click
          end
          object Button6: TButton
            Left = 16
            Top = 111
            Width = 75
            Height = 25
            Caption = 'Delete Target'
            TabOrder = 3
            OnClick = Button6Click
          end
          object Button7: TButton
            Left = 115
            Top = 111
            Width = 75
            Height = 25
            Caption = 'Insert Before'
            TabOrder = 4
            OnClick = Button7Click
          end
        end
        object GroupBox3: TGroupBox
          Left = 461
          Top = 3
          Width = 209
          Height = 169
          Caption = 'Random'
          TabOrder = 2
          object Label3: TLabel
            Left = 24
            Top = 32
            Width = 17
            Height = 13
            Caption = 'n ='
          end
          object Label4: TLabel
            Left = 107
            Top = 32
            Width = 39
            Height = 13
            Caption = 'range ='
          end
          object Edit3: TEdit
            Left = 47
            Top = 29
            Width = 44
            Height = 21
            TabOrder = 0
          end
          object Edit4: TEdit
            Left = 152
            Top = 29
            Width = 44
            Height = 21
            TabOrder = 1
          end
          object Button8: TButton
            Left = 16
            Top = 72
            Width = 75
            Height = 25
            Caption = 'Insert Random'
            TabOrder = 2
            OnClick = Button8Click
          end
          object Button9: TButton
            Left = 120
            Top = 72
            Width = 75
            Height = 25
            Caption = 'Clear All'
            TabOrder = 3
            OnClick = Button9Click
          end
          object Button10: TButton
            Left = 16
            Top = 111
            Width = 75
            Height = 25
            Caption = 'Reverse'
            TabOrder = 4
            OnClick = Button10Click
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Doublely Linked List'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox4: TGroupBox
          Left = -4
          Top = 3
          Width = 209
          Height = 169
          Caption = 'Insert'
          TabOrder = 0
          object Label5: TLabel
            Left = 24
            Top = 32
            Width = 49
            Height = 13
            Caption = 'element ='
          end
          object Edit5: TEdit
            Left = 85
            Top = 29
            Width = 121
            Height = 21
            TabOrder = 0
          end
          object Button11: TButton
            Left = 24
            Top = 72
            Width = 161
            Height = 25
            Caption = 'Insert Front'
            TabOrder = 1
            OnClick = Button11Click
          end
          object Button12: TButton
            Left = 24
            Top = 105
            Width = 161
            Height = 25
            Caption = 'Insert After First'
            TabOrder = 2
            OnClick = Button12Click
          end
          object Button13: TButton
            Left = 24
            Top = 136
            Width = 161
            Height = 25
            Caption = 'Insert Rear'
            TabOrder = 3
            OnClick = Button13Click
          end
        end
        object GroupBox5: TGroupBox
          Left = 230
          Top = 3
          Width = 209
          Height = 169
          Caption = 'Searching'
          TabOrder = 1
          object Label6: TLabel
            Left = 24
            Top = 32
            Width = 41
            Height = 13
            Caption = 'target ='
          end
          object Edit6: TEdit
            Left = 85
            Top = 29
            Width = 121
            Height = 21
            TabOrder = 0
          end
          object Button14: TButton
            Left = 115
            Top = 72
            Width = 75
            Height = 25
            Caption = 'Insert After'
            TabOrder = 1
            OnClick = Button14Click
          end
          object Button15: TButton
            Left = 16
            Top = 72
            Width = 75
            Height = 25
            Caption = 'Find Target'
            TabOrder = 2
            OnClick = Button15Click
          end
          object Button16: TButton
            Left = 16
            Top = 111
            Width = 75
            Height = 25
            Caption = 'Delete Target'
            TabOrder = 3
            OnClick = Button16Click
          end
          object Button17: TButton
            Left = 115
            Top = 111
            Width = 75
            Height = 25
            Caption = 'Insert Before'
            TabOrder = 4
            OnClick = Button17Click
          end
        end
        object GroupBox6: TGroupBox
          Left = 461
          Top = 3
          Width = 209
          Height = 169
          Caption = 'Random'
          TabOrder = 2
          object Label7: TLabel
            Left = 24
            Top = 32
            Width = 17
            Height = 13
            Caption = 'n ='
          end
          object Label8: TLabel
            Left = 107
            Top = 32
            Width = 39
            Height = 13
            Caption = 'range ='
          end
          object Edit7: TEdit
            Left = 47
            Top = 29
            Width = 44
            Height = 21
            TabOrder = 0
          end
          object Edit8: TEdit
            Left = 152
            Top = 29
            Width = 44
            Height = 21
            TabOrder = 1
          end
          object Button18: TButton
            Left = 16
            Top = 72
            Width = 75
            Height = 25
            Caption = 'Insert Random'
            TabOrder = 2
            OnClick = Button18Click
          end
          object Button19: TButton
            Left = 120
            Top = 72
            Width = 75
            Height = 25
            Caption = 'Clear All'
            TabOrder = 3
            OnClick = Button19Click
          end
          object Button20: TButton
            Left = 16
            Top = 111
            Width = 75
            Height = 25
            Caption = 'Reverse'
            TabOrder = 4
            OnClick = Button20Click
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Linked Stack'
        ImageIndex = 2
        object Label9: TLabel
          Left = 118
          Top = 35
          Width = 17
          Height = 13
          Caption = 'n ='
        end
        object Label10: TLabel
          Left = 118
          Top = 70
          Width = 42
          Height = 13
          Caption = 'range = '
        end
        object Label11: TLabel
          Left = 118
          Top = 105
          Width = 75
          Height = 13
          Caption = 'Push element ='
        end
        object Label12: TLabel
          Left = 118
          Top = 140
          Width = 70
          Height = 13
          Caption = 'Pop element ='
        end
        object Edit9: TEdit
          Left = 200
          Top = 32
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object Edit10: TEdit
          Left = 200
          Top = 67
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object Edit11: TEdit
          Left = 200
          Top = 102
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object Edit12: TEdit
          Left = 200
          Top = 137
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object Button21: TButton
          Left = 344
          Top = 65
          Width = 75
          Height = 25
          Caption = 'Push Random'
          TabOrder = 4
          OnClick = Button21Click
        end
        object Button22: TButton
          Left = 344
          Top = 100
          Width = 75
          Height = 25
          Caption = 'Push'
          TabOrder = 5
          OnClick = Button22Click
        end
        object Button23: TButton
          Left = 344
          Top = 135
          Width = 75
          Height = 25
          Caption = 'Pop'
          TabOrder = 6
          OnClick = Button23Click
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 207
    Width = 681
    Height = 354
    Caption = 'Panel2'
    TabOrder = 1
    object PageControl2: TPageControl
      Left = 0
      Top = 0
      Width = 681
      Height = 353
      ActivePage = TabSheet4
      TabOrder = 0
      object TabSheet4: TTabSheet
        Caption = 'Singly Linked List'
        object Memo1: TMemo
          Left = -4
          Top = 0
          Width = 674
          Height = 329
          Lines.Strings = (
            'Memo1')
          TabOrder = 0
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Doubly Linked List'
        ImageIndex = 1
        object Memo2: TMemo
          Left = -4
          Top = 0
          Width = 674
          Height = 329
          Lines.Strings = (
            'Memo1')
          TabOrder = 0
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Linked Stack'
        ImageIndex = 2
        object Memo3: TMemo
          Left = -4
          Top = 0
          Width = 674
          Height = 329
          Lines.Strings = (
            'Memo1')
          TabOrder = 0
        end
      end
    end
  end
end
