unit PostProcessForm;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  ExtCtrls,
  TypeDefinitions,
  ComCtrls,
  Vcl.ImgList,
  Vcl.Buttons,
  System.ImageList;

type
  TPostProForm = class(TForm)
    GroupBox_P_4: TGroupBox;
    CheckBox_P_13: TCheckBox;
    CheckBox_P_14: TCheckBox;
    CheckBox_P_15: TCheckBox;
    CheckBox_P_16: TCheckBox;
    CheckBox_P_17: TCheckBox;
    CheckBox_P_18: TCheckBox;
    Button_P_17: TButton;
    CheckBox_P_20: TCheckBox;
    Edit_P_4: TEdit;
    GroupBox_P_6: TGroupBox;
    Button_P_12: TButton;
    CheckBox_P_8: TCheckBox;
    GroupBox_P_10: TGroupBox;
    Shape_P_6: TShape;
    Button_P_20: TButton;
    CheckBox_P_26: TCheckBox;
    ImageList_P_1: TImageList;
    PostProcessHintPnl: TPanel;
    Label_P_3: TLabel;
    Button_P_16: TButton;
    RecalcSectionPnl: TPanel;
    Button_P_13: TButton;
    CheckBox_P_19: TCheckBox;
    CheckBox_P_21: TCheckBox;
    CheckBox_P_30: TCheckBox;
    Edit_P_12: TEdit;
    Label_P_4: TLabel;
    UpDown_P_4: TUpDown;
    NormalsOnZBufferPnl: TPanel;
    Button_P_14: TButton;
    CheckBox_P_23: TCheckBox;
    Label_P_7: TLabel;
    HardShadowsPnl: TPanel;
    Button_P_3: TButton;
    Button_P_4: TButton;
    Button_P_5: TButton;
    Button_P_6: TButton;
    Button_P_7: TButton;
    Button_P_8: TButton;
    Button_P_9: TButton;
    CheckBox_P_10: TCheckBox;
    CheckBox_P_2: TCheckBox;
    CheckBox_P_29: TCheckBox;
    CheckBox_P_3: TCheckBox;
    CheckBox_P_4: TCheckBox;
    CheckBox_P_5: TCheckBox;
    CheckBox_P_6: TCheckBox;
    CheckBox_P_7: TCheckBox;
    CheckBox_P_9: TCheckBox;
    Edit_P_5: TEdit;
    Edit_P_7: TEdit;
    Label_P_6: TLabel;
    Label_P_8: TLabel;
    AmbientShadowsPnl: TPanel;
    Button_P_10: TButton;
    CheckBox_P_11: TCheckBox;
    Label_P_24: TLabel;
    TabControl_P_1: TTabControl;
    Label_P_14: TLabel;
    Label_P_15: TLabel;
    Label_P_16: TLabel;
    Label_P_17: TLabel;
    Label_P_20: TLabel;
    Label_P_50: TLabel;
    CheckBox_P_12: TCheckBox;
    CheckBox_P_22: TCheckBox;
    Edit_P_21: TEdit;
    Edit_P_34: TEdit;
    Edit_P_8: TEdit;
    Edit_P_9: TEdit;
    RadioGroup_P_5: TRadioGroup;
    UpDown_P_1: TUpDown;
    UpDown_P_3: TUpDown;
    ReflTransparencyPnl: TPanel;
    Button_P_15: TButton;
    CheckBox_P_24: TCheckBox;
    CheckBox_P_25: TCheckBox;
    CheckBox_P_27: TCheckBox;
    CheckBox_P_28: TCheckBox;
    Edit_P_11: TEdit;
    Edit_P_13: TEdit;
    Edit_P_14: TEdit;
    Edit_P_17: TEdit;
    Edit_P_6: TEdit;
    Label_P_11: TLabel;
    Label_P_12: TLabel;
    Label_P_21: TLabel;
    Label_P_22: TLabel;
    Label_P_23: TLabel;
    UpDown_P_2: TUpDown;
    DepthOfFieldPnl: TPanel;
    Button_P_1: TButton;
    Button_P_18: TButton;
    Button_P_19: TButton;
    Button_P_2: TButton;
    CheckBox_P_1: TCheckBox;
    Edit_P_1: TEdit;
    Edit_P_10: TEdit;
    Edit_P_2: TEdit;
    Edit_P_3: TEdit;
    Label_P_1: TLabel;
    Label_P_18: TLabel;
    Label_P_19: TLabel;
    Label_P_2: TLabel;
    Label_P_5: TLabel;
    RadioGroup_P_1: TRadioGroup;
    RadioGroup_P_2: TRadioGroup;
    NormalsOnZBufferBtn: TSpeedButton;
    HardShadowsBtn: TSpeedButton;
    AmbientShadowsBtn: TSpeedButton;
    ReflTransparencyBtn: TSpeedButton;
    DepthOfFieldBtn: TSpeedButton;
    RecalcSectionBtn: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure CheckBox_P_8Click(Sender: TObject);
    procedure Button_P_1Click(Sender: TObject);
    procedure Button_P_2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button_P_3Click(Sender: TObject);
    procedure Button_P_4Click(Sender: TObject);
    procedure CheckBox_P_9Click(Sender: TObject);
    procedure Button_P_10Click(Sender: TObject);
    procedure Button_P_17Click(Sender: TObject);
    procedure Button_P_11Click(Sender: TObject);
    procedure Button_P_12Click(Sender: TObject);
    procedure RadioGroup_P_3Click(Sender: TObject);
    procedure CheckBox_P_21Click(Sender: TObject);
    procedure Button_P_13Click(Sender: TObject);
    procedure Button_P_14Click(Sender: TObject);
    procedure CheckBox_P_25Click(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure Button_P_16Click(Sender: TObject);
    procedure Button_P_19Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure Button_P_20Click(Sender: TObject);
    procedure CategoryPanel1Collapse(Sender: TObject);
    procedure CategoryPanel1Expand(Sender: TObject);
    procedure CheckBox_P_2Click(Sender: TObject);
    procedure UpDown_P_1ChangingEx(Sender: TObject; var AllowChange: Boolean;
      NewValue: Integer; Direction: TUpDownDirection);
    procedure RecalcSectionBtnClick(Sender: TObject);
    procedure NormalsOnZBufferBtnClick(Sender: TObject);
    procedure HardShadowsBtnClick(Sender: TObject);
    procedure AmbientShadowsBtnClick(Sender: TObject);
    procedure ReflTransparencyBtnClick(Sender: TObject);
    procedure DepthOfFieldBtnClick(Sender: TObject);
    procedure CheckBox_P_23Click(Sender: TObject);
    procedure CheckBox_P_11Click(Sender: TObject);
    procedure CheckBox_P_24Click(Sender: TObject);
    procedure CheckBox_P_1Click(Sender: TObject);
  private
    { Private-Deklarationen }
    function ClipIRect: LongBool;
    procedure AlignPanels(Sender: TObject);
    procedure UpdateButtonCaption(Btn: TSpeedButton; const Checkbox: TCheckBox);
  public
    { Public-Deklarationen }
    iRect: TRect;
    function HSoptions: Integer;
    procedure PutAmbientParsToHeader(Header: TPMandHeader10);
    procedure PutDOFparsToHeader(Header: TPMandHeader10);
    procedure PutReflectionParsToHeader(Header: TPMandHeader10);
  end;

var
  PostProForm: TPostProForm;
  PPFormCreated: LongBool = False;
//  CPppFirstExpand: array[1..9] of LongBool = (True, True, True, True, True, True,
  //  True, True, True);

implementation

uses
  MAIN,
  DOF,
  DivUtils,
  ImageProcess,
  DoubleSize,
  CalcPart,
  HeaderTrafos,
  CalcMonteCarlo,
  CalcSR,
  Math3D,
  Tiling,
  FileHandling;
//LightGUI

{$R *.dfm}

procedure TPostProForm.HardShadowsBtnClick(Sender: TObject);
begin
  HardShadowsPnl.Top := HardShadowsBtn.Top+HardShadowsBtn.Height;
  HardShadowsPnl.Visible := not HardShadowsPnl.Visible;
  AlignPanels(Sender);
  CheckBox_P_9Click(Sender);
end;

function TPostProForm.HSoptions: Integer;
var i: Integer;
begin
    Result := (Ord(CheckBox_P_9.Checked) and 1) or ((Ord(CheckBox_P_10.Checked) and 1) shl 1)
              or ((Ord(CheckBox_P_29.Checked and CheckBox_P_29.Enabled) and 1) shl 8);
    for i := 2 to 7 do
      Result := Result or (Ord((FindComponent('CheckBox_P_'
        + IntToStr(i)) as TCheckBox).Checked) and 1) shl i;
end;

procedure TPostProForm.NormalsOnZBufferBtnClick(Sender: TObject);
begin
  NormalsOnZBufferPnl.Top := NormalsOnZBufferBtn.Top+NormalsOnZBufferBtn.Height;
  NormalsOnZBufferPnl.Visible := not NormalsOnZBufferPnl.Visible;
  AlignPanels(Sender);
  CheckBox_P_23Click(Sender);
end;

procedure TPostProForm.AlignPanels(Sender: TObject);
var
  H: Integer;
begin
  H := 0;

  Inc(H, RecalcSectionBtn.Height);
  if RecalcSectionPnl.Visible then
    Inc(H, RecalcSectionPnl.Height);

  Inc(H, NormalsOnZBufferBtn.Height);
  if NormalsOnZBufferPnl.Visible then
    Inc(H, NormalsOnZBufferPnl.Height);

  Inc(H, HardShadowsBtn.Height);
  if HardShadowsPnl.Visible then
    Inc(H, HardShadowsPnl.Height);

  Inc(H, AmbientShadowsBtn.Height);
  if AmbientShadowsPnl.Visible then
    Inc(H, AmbientShadowsPnl.Height);

  Inc(H, PostProcessHintPnl.Height);

  Inc(H, ReflTransparencyBtn.Height);
  if ReflTransparencyPnl.Visible then
    Inc(H, ReflTransparencyPnl.Height);

  Inc(H, DepthOfFieldBtn.Height);
  if DepthOfFieldPnl.Visible then
    Inc(H, DepthOfFieldPnl.Height);

  ClientHeight := H;
end;

procedure TPostProForm.FormShow(Sender: TObject);
begin
    GUI.FormResize(Sender);
    if FormsSticky[2] = 0 then
      SetBounds(StrToIntTry(StrFirstWord(IniVal[28]), 844),
                StrToIntTry(StrLastWord(IniVal[28]), 100), Width, Height);
    Edit_P_11.Hint := 'Depth of reflections: 1 to see only one reflection,' + #13#10 +
                   'with 2 you could see reflections in the reflected object, ... and so on.';
    Edit_P_12.Hint := 'Divides the actual "Raystep multiplier" by this value,' + #13#10 +
                   'increase the value to reduce overstepping.';
    AlignPanels(Sender);
    UpdateButtonCaption(RecalcSectionBtn, CheckBox_P_21);
    CheckBox_P_23Click(Sender);
    CheckBox_P_9Click(Sender);
    CheckBox_P_11Click(Sender);
    CheckBox_P_24Click(Sender);
    CheckBox_P_1Click(Sender);
end;

procedure TPostProForm.CheckBox_P_8Click(Sender: TObject);
begin
    GUI.SetImageCursor;
end;

procedure TPostProForm.PutDOFparsToHeader(Header: TPMandHeader10);
begin
    with Header^ do
    begin
      bCalcDOFtype := (Ord(CheckBox_P_1.Checked) and 1) or (RadioGroup_P_1.ItemIndex shl 1)
                       or (RadioGroup_P_2.ItemIndex shl 3);
      sDOFZsharp   := StrToFloatK(Edit_P_1.Text);
      sDOFclipR    := StrToFloatK(Edit_P_2.Text);
      sDOFaperture := StrToFloatK(Edit_P_3.Text);
      sDOFZsharp2  := StrToFloatK(Edit_P_10.Text);
    end;
end;

procedure TPostProForm.Button_P_1Click(Sender: TObject);
var pass, z: Integer;
    DoFrec: TDoFrec;
begin
    if GUI.MHeader.TilingOptions <> 0 then
    begin
      ShowMessage('No DoF on tiles.');
      Exit;
    end;
    TilingForm.SaveThisTile := False;
    GUI.SaveM3IfileAuto := False;
    GUI.MakeHeader;
    GUI.DisableButtons;
    GUI.btnCalc3D.Caption := 'Stop';
    GUI.ProgressBar1.Max := GUI.MHeader.Height;
    GUI.ProgressBar1.Position := 0;
    GUI.ProgressBar1.Visible := True;
    MCalcStop := False;
    try
      DoFrec.SL := @GUI.siLight5[0];
      DoFrec.colSL := @fullSizeImage[0];
      DoFrec.MHeader := @GUI.MHeader;
      DoFrec.SLoffset := 4 * GUI.MHeader.Width;
      DoFrec.Verbose := True;
      z := (GUI.MHeader.bCalcDOFtype shr 1) and 3;
      for pass := 0 to z do
      if not MCalcStop then
      begin
        DoFrec.pass := pass;
        if z > 0 then
          GUI.Label_M_6.Caption := 'DoF calculation pass ' + IntToStr(pass + 1) + ' of ' + IntToStr(z + 1)
        else GUI.Label_M_6.Caption := 'DoF calculation';
        if ((GUI.MHeader.bCalcDOFtype shr 3) and 1) = 1 then
          doDOF(DoFrec)
        else
          doDOFsort(DoFrec);
      end;
    finally
      GUI.EnableButtons;
      GUI.ProgressBar1.Visible := False;
    end;
end;

procedure TPostProForm.Button_P_20Click(Sender: TObject);
begin
    //Ambient light

end;

procedure TPostProForm.Button_P_2Click(Sender: TObject);
var B: TButton;
begin
    B := Sender as TButton;
    if B.Caption = 'Click on image' then
    begin
      if B.Tag = 1 then B.Caption := 'Get Z1'
                   else B.Caption := 'Get Z2';
      GUI.iGetPosFromImage := 0;
      GUI.SetImageCursor;
    end
    else
    begin
      GUI.iGetPosFromImage := B.Tag;
      B.Caption := 'Click on image';
      GUI.MButtonsUp;
      GUI.Image_M_1.Cursor := crCross;
    end;
end;

procedure TPostProForm.FormCreate(Sender: TObject);
begin
    PPFormCreated := True;
end;

procedure TPostProForm.Button_P_3Click(Sender: TObject);      //calculate HardShadows checkbox2-7 = light1-6
var i, iLights, n: Integer;
    CB: TCheckBox;
begin
    GUI.CalcStart := GetTickCount;
    iLights := 0;
    n := 1;
    for i := 2 to 7 do
    begin
      CB := FindComponent('CheckBox_P_' + IntToStr(i)) as TCheckBox;
      if CB.Enabled and CB.Checked then
        if (GUI.LAtmpLight.Lights[i - 2].Loption and 2) = 0 then iLights := iLights or n;{LIGHT}
      n := n shl 1;
    end;
    if iLights = 0 then ShowMessage('Please select the lights first.  No HS for lightmaps.') else
    begin
      TilingForm.SaveThisTile := False;
      GUI.SaveM3IfileAuto := False;
      GUI.MakeHeader;
  //test: usually not yet because if HS calc fails, val must be resetted!
      GUI.MHeader.bHScalculated := (GUI.MHeader.bHScalculated and $FD) or GUI.MHeader.bCalculateHardShadow;
      MakeLightValsFromHeaderLight(@GUI.MHeader, @GUI.HeaderLightVals, 1, GUI.MHeader.bStereoMode);
      GUI.MCalcThreadStats.iAllProcessingOptions := 4;
      GUI.CalcHardShadow;
    end;
end;

procedure TPostProForm.Button_P_4Click(Sender: TObject);
var t, i: Integer;
    pl: TPsiLight5;
    w, w2: Word;
begin
    t := (Sender as TButton).Tag;
    with GUI do
    begin
      if (MHeader.bCalc1HSsoft and 1) <> 0 then
      begin
        w := $3FF;
        w2 := $FC00;
        if (MHeader.bHScalculated and (2 shl t)) = 0 then Exit;
      end else begin
        w := ($200 shl t) xor $FFFF;
        w2 := 0;
      end;
      pl := @SiLight5[0];
      for i := 0 to High(SiLight5) do
      begin
        pl.Shadow := pl.Shadow and w or w2;
        Inc(pl);
      end;
      MHeader.bHScalculated := MHeader.bHScalculated and ((2 shl t) xor $FF);
      TriggerRepaint;
    end;
end;

procedure TPostProForm.PutAmbientParsToHeader(Header: TPMandHeader10);
begin
    with Header^ do
    begin
      sAmbShadowThreshold := MaxCS(0.01, StrToFloatK(Edit_P_34.Text));
      bCalcAmbShadowAutomatic := (Byte(CheckBox_P_11.Checked) and 1) or
                                ((Byte(CheckBox_P_12.Checked) and 1) shl 1) or
                                 (TabControl_P_1.TabIndex shl 2) or     //0..3    no place for videoSSAO
                                 (UpDown_P_1.Position shl 4) or
                                 ((Byte(CheckBox_P_22.Checked) and 1) shl 7);
      AODEdithering := RadioGroup_P_5.ItemIndex;
      sDEAOmaxL := MinMaxCS(s1d255, StrToFloatK(Edit_P_8.Text), 100);
      bSSAO24BorderMirrorSize := StrToD2Byte(Edit_P_9.Text);
      SSAORcount := UpDown_P_3.Position;
    end;
end;

procedure TPostProForm.AmbientShadowsBtnClick(Sender: TObject);
begin
  AmbientShadowsPnl.Top := AmbientShadowsBtn.Top+AmbientShadowsBtn.Height;
  AmbientShadowsPnl.Visible := not AmbientShadowsPnl.Visible;
  AlignPanels(Sender);
  CheckBox_P_11Click(Sender);
end;

procedure TPostProForm.Button_P_10Click(Sender: TObject); //AO calc
begin
    TilingForm.SaveThisTile := False;
    GUI.SaveM3IfileAuto := False;
    GUI.CalcStart := GetTickCount;
    GUI.MakeHeader;
    GUI.MCalcThreadStats.iAllProcessingOptions := 8;  //AllAutoProcessings(@GUI.MHeader);
    GUI.SSAORiteration := 0;
    MakeLightValsFromHeaderLight(@GUI.MHeader, @GUI.HeaderLightVals, 1, GUI.MHeader.bStereoMode);
    GUI.CalcAmbShadow;
end;

procedure TPostProForm.Button_P_17Click(Sender: TObject);
begin
    CalcLightStrokes(StrToIntTrim(Edit_P_4.Text));
end;

procedure TPostProForm.PutReflectionParsToHeader(Header: TPMandHeader10);
begin
    with Header^ do
    begin
      bCalcSRautomatic := (Byte(CheckBox_P_24.Checked) and 1) or ((Byte(CheckBox_P_27.Checked) shl 1) and 2) or
        ((Byte(CheckBox_P_28.Checked) shl 2) and 4);
      SRamount := Min0MaxCS(StrToFloatK(Edit_P_6.Text), 100);
      SRreflectioncount := UpDown_P_2.Position;
      sTransmissionAbsorption := MinMaxCS(s1em30, StrToFloatK(Edit_P_13.Text), 1e10);
      sTRIndex := MinMaxCS(0.1, StrToFloatK(Edit_P_14.Text), 10);
      sTRscattering := Min0MaxCS(StrToFloatK(Edit_P_17.Text), s1e30);
    end;
end;

procedure TPostProForm.Button_P_11Click(Sender: TObject);   // Calc Reflection/MonteC
var SLoff, Moff: Integer;
    TSize: TPoint;
    tmpR: TRect;
begin
    CheckBox_P_24Click(Sender);
    with GUI do
    begin
      CalcStart := GetTickCount;
      TilingForm.SaveThisTile := False;
      GUI.SaveM3IfileAuto := False;
      MakeHeader;
      if (MHeader.Width < 1) or (MHeader.Height < 1) then Exit;
      MakeLightValsFromHeaderLight(@MHeader, @HeaderLightVals, 1, MHeader.bStereoMode);
      MHeader.bSliceCalc := 0;
      MHeader.bCalc3D    := 1;
      TSize := GetTileSize(@MHeader);
      tmpR := GetCalcRect;
      if not CheckBox_P_25.Checked then
      begin
        Shape_M_1.Visible := False;
        SLoff := 0;
        Moff := 0;
      end
      else
      begin
        if not ClipIRect then Exit;
        tmpR := Rect(iRect.Left + tmpR.Left, iRect.Top + tmpR.Top,
                     iRect.Right + tmpR.Left, iRect.Bottom + tmpR.Top);
        SLoff := iRect.Left + iRect.Top * TSize.X;
        Moff := SLoff * 4;
      end;
      SetImageSize;
      if Length(siLight5) <> TSize.X * TSize.Y  then Exit;
      DisableButtons;
      MCalcThreadStats.pLBcalcStop := @MCalcStop;
      MCalcThreadStats.pMessageHwnd := Self.Handle;
      MCalcThreadStats.iProcessingType := 6;
      MCalcThreadStats.iAllProcessingOptions := 32;
      if CalcSRT(@MHeader, @HeaderLightVals, @MCalcThreadStats, @siLight5[SLoff],
                 mFSIstart + Moff, mFSIoffset, tmpR) then
      begin
        iActiveThreads       := MCalcThreadStats.iTotalThreadCount;
        CalcYact             := -1;  //for upgrading the image
        ProgressBar1.Max     := MHeader.Height;
        ProgressBar1.Visible := True;
        if CheckBox_P_25.Checked then Timer_M_4.Interval := 500 else Timer_M_4.Interval := 1000;
        Label_P_6.Caption := 'Reflections';
        Timer_M_4.Enabled  := True;
      end
      else
      begin
        if CheckBox_P_25.Checked then Button_P_15.Enabled := True else EnableButtons;
        MCalcThreadStats.iProcessingType := 0;
      end;
    end;
end;

procedure TPostProForm.Button_P_12Click(Sender: TObject);   // Double the imagesize
begin
    with GUI do
    begin
      DisableButtons;
      if DoubleImageSize then
      begin
        if ImageScale = 1 then ImageScale := 2 else
        if ImageScale = 2 then ImageScale := 4;
        MHeader.bImageScale := ImageScale;
        SetEditsFromHeader;
        SetImageSize;
        TriggerRepaint;
      end;
      EnableButtons;
    end;
end;

procedure TPostProForm.RadioGroup_P_3Click(Sender: TObject);
var b: LongBool;
begin
    b := TabControl_P_1.TabIndex < 3;
    RadioGroup_P_5.Visible := not b;
    CheckBox_P_22.Visible := not b;
    Label_P_15.Visible := not b;
    Label_P_16.Visible := not b;
    Label_P_17.Visible := not b;
    Edit_P_8.Visible := not b;
    UpDown_P_1.Visible := not b;
    CheckBox_P_12.Visible := b;
    Edit_P_34.Visible := b;
    Label_P_50.Visible := b;
    b := TabControl_P_1.TabIndex = 2;
    UpDown_P_3.Visible := b;
    Edit_P_21.Visible := b;
    Label_P_14.Visible := b;
    b := b or (TabControl_P_1.TabIndex = 1);
    Label_P_20.Visible := b;
    Edit_P_9.Visible := b;
end;

procedure TPostProForm.RecalcSectionBtnClick(Sender: TObject);
begin
  RecalcSectionPnl.Top := RecalcSectionBtn.Top+RecalcSectionBtn.Height;
  RecalcSectionPnl.Visible := not RecalcSectionPnl.Visible;
  AlignPanels(Sender);
  UpdateButtonCaption(RecalcSectionBtn, CheckBox_P_21);
end;

procedure TPostProForm.ReflTransparencyBtnClick(Sender: TObject);
begin
  ReflTransparencyPnl.Top := ReflTransparencyBtn.Top+ReflTransparencyBtn.Height;
  ReflTransparencyPnl.Visible := not ReflTransparencyPnl.Visible;
  AlignPanels(Sender);
  CheckBox_P_24Click(Sender);
end;

procedure TPostProForm.UpDown_P_1ChangingEx(Sender: TObject;
  var AllowChange: Boolean; NewValue: Integer; Direction: TUpDownDirection);
const ci: array[-1..4] of Integer = (3, 3, 7, 17, 33, 33);
begin
    Label_P_17.Caption := IntToStr(ci[NewValue]);
end;

procedure TPostProForm.CategoryPanel1Collapse(Sender: TObject);
begin
    CheckBox_P_21.Checked := False;
    AlignPanels(Sender);
end;

procedure TPostProForm.CategoryPanel1Expand(Sender: TObject);
begin
    AlignPanels(Sender);
end;

procedure TPostProForm.CheckBox_P_11Click(Sender: TObject);
begin
  UpdateButtonCaption(AmbientShadowsBtn, CheckBox_P_11);
end;

procedure TPostProForm.CheckBox_P_1Click(Sender: TObject);
begin
  UpdateButtonCaption(DepthOfFieldBtn, CheckBox_P_1);
end;

procedure TPostProForm.CheckBox_P_21Click(Sender: TObject);   //enable Recalc parts
begin
    UpdateButtonCaption(RecalcSectionBtn, CheckBox_P_21);
    Button_P_13.Enabled := CheckBox_P_21.Checked;
    if CheckBox_P_21.Checked then
    begin
      GUI.MButtonsUp;
      GUI.DisableButtons;
      GUI.Image_M_1.Cursor := crCross;
    end else begin
      GUI.Shape_M_1.Visible := False;
      if not Button_P_3.Enabled then GUI.EnableButtons;
    end;
end;

procedure TPostProForm.CheckBox_P_23Click(Sender: TObject);
begin
  UpdateButtonCaption(NormalsOnZBufferBtn, CheckBox_P_23);
end;

procedure TPostProForm.CheckBox_P_24Click(Sender: TObject);
begin
  UpdateButtonCaption(ReflTransparencyBtn, CheckBox_P_24);
end;

procedure DelayDEAOT(ThreadCount: Integer; PCTS: TPCalcThreadStats);
var
  Tick: Double;
  Event: THandle;
  x, y, Milliseconds: Integer;
begin
  Milliseconds := 300;
  Tick  := getHiQmillis + Milliseconds;
  Event := CreateEvent(nil, False, False, nil);
  try
    while (Milliseconds > 0) and
          (MsgWaitForMultipleObjects(1, Event, False, Milliseconds, QS_ALLINPUT)
           <> WAIT_TIMEOUT) do
    begin
      Application.ProcessMessages;
      if Application.Terminated or PCTS.pLBcalcStop^ then Exit;
      x := 0;
      for y := 1 to ThreadCount do if PCTS.CTrecords[y].isActive > 0 then Inc(x);
      if x = 0 then Milliseconds := 0 else Milliseconds := Round(Tick - getHiQmillis);
      if Milliseconds > 500 then Exit;
    end;
  finally
    CloseHandle(Event);
  end;
end;

function TPostProForm.ClipIRect: LongBool;
var TSize: TPoint;
begin
    TSize := GetTileSize(@GUI.MHeader);
    if iRect.Top < 0 then iRect.Top := 0;
    if iRect.Left < 0 then iRect.Left := 0;
    if iRect.Right >= TSize.X then iRect.Right := TSize.X - 1;
    if iRect.Bottom >= TSize.Y then iRect.Bottom := TSize.Y - 1;
    Result := ((iRect.Right - iRect.Left) > 2) and ((iRect.Bottom - iRect.Top) > 2) and GUI.Shape_M_1.Visible;
    if not Result then
    begin
      if not GUI.Shape_M_1.Visible then Showmessage('Please make a selection in the image first.')
      else Showmessage('The selection must be bigger than 2 pixels in width and height.');
    end;
end;

procedure TPostProForm.DepthOfFieldBtnClick(Sender: TObject);
begin
  DepthOfFieldPnl.Top := DepthOfFieldBtn.Top+DepthOfFieldBtn.Height;
  DepthOfFieldPnl.Visible := not DepthOfFieldPnl.Visible;
  AlignPanels(Sender);
  CheckBox_P_1Click(Sender);
end;

procedure TPostProForm.Button_P_13Click(Sender: TObject); //Recalc parts
begin
    GUI.CalcStart := GetTickCount;
    if ClipIRect then
    begin
      Button_P_13.Enabled := False;
      CalcPartT(iRect, CheckBox_P_9.Checked, CheckBox_P_19.Checked, CheckBox_P_11.Checked
                and (TabControl_P_1.TabIndex = 3), CheckBox_P_30.Checked, UpDown_P_4.Position);
      Button_P_13.Enabled := True;
    end;
end;

{  TsiLight5 = packed record  //18 Byte
    NormalX:    SmallInt; // 3 normals
    NormalY:    SmallInt;
    NormalZ:    SmallInt;
    RoughZposFine: Word;  // 1 Byte Roughness + 1 Byte LSB Zpos for more precision
    Zpos:       Word;
    Shadow:     Word;     // DEcount 10bit + 6 Light HS only yes/no
    AmbShadow:  Word;
    SIgradient: Word;     // Smoothed Iteration gradient for coloring
    OTrap:      Word;     // coloring on OrbitTrap
  end; }

procedure calcCorrMul(Header: TPMandHeader10; PLight: TPsiLight5; var CorrMul: Single; var Zsub: Integer);
var x, w, h, zp, za: Integer;
    PATL: PWord;
begin
    w := Header.Width;
    h := Header.Height;
    PATL := PWord(Integer(PLight) + 8);
    za := 32767;
    zp := 0;
    for x := 1 to w * h do
    begin
      if PATL^ < 32768 then
      begin
        if PATL^ > zp then zp := PATL^;
        if PATL^ < za then za := PATL^;
      end;
      Inc(PATL, 9);
    end;
    if zp < za then
    begin
      zp := 32768;
      za := 0;
    end
    else Inc(zp);
    CorrMul := 128 / (zp - za);
    Zsub := za shl 8;
end;

procedure TPostProForm.Button_P_14Click(Sender: TObject);   // normals on zbuf
begin
    if (GUI.MHeader.Width * GUI.MHeader.Height) =
       Length(GUI.siLight5) then
    begin
      Screen.Cursor := crHourGlass;
      try
        NormalsOnZbuf(@GUI.MHeader, @GUI.siLight5[0]);
      finally
        Screen.Cursor := crDefault;
      end;
      TriggerRepaint;
    end
    else GUI.OutMessage('Header size and image size are not the same.');
end;

procedure TPostProForm.CheckBox_P_25Click(Sender: TObject);
begin
    if CheckBox_P_25.Checked then
    begin
      GUI.MButtonsUp;
      GUI.DisableButtons;
      Button_P_15.Enabled := True;
      GUI.Image_M_1.Cursor := crCross;
    end else begin
      GUI.Shape_M_1.Visible := False;
      if not Button_P_3.Enabled then GUI.EnableButtons;
    end;
end;

procedure TPostProForm.CheckBox_P_2Click(Sender: TObject);
var i, i2: Integer;
begin
    i2 := 0;
    for i := 2 to 7 do if (FindComponent('CheckBox_P_' + IntToStr(i)) as TCheckBox).Checked then Inc(i2);
    CheckBox_P_29.Enabled := i2 = 1;
    Edit_P_7.Enabled := i2 = 1;
    Label_P_6.Enabled := i2 = 1;
end;

procedure TPostProForm.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
    GUI.FormMouseWheel(Sender, Shift, WheelDelta, MousePos, Handled);
end;

procedure TPostProForm.Button_P_16Click(Sender: TObject);
begin
    TriggerRepaint;
end;

procedure TPostProForm.Button_P_19Click(Sender: TObject);
begin
    Edit_P_10.Text := Edit_P_1.Text;
end;

procedure TPostProForm.FormActivate(Sender: TObject);
begin
    Invalidate;//Repaint;
end;

procedure TPostProForm.FormHide(Sender: TObject);
begin
    IniVal[28] := IntToStr(Left) + ' ' + IntToStr(Top);
end;

procedure TPostProForm.UpdateButtonCaption(Btn: TSpeedButton; const Checkbox: TCheckBox);
var
  GlyphId: Integer;
begin
  if Btn.Down then
    if CheckBox.Checked then
      GlyphId := 0//3
    else
      GlyphId := -1 //1
  else
    if CheckBox.Checked then
      GlyphId := 0 //2
    else
      GlyphId := -1; //0
  Btn.Glyph := nil;
  ImageList_P_1.GetBitmap(GlyphId,Btn.Glyph);
end;

procedure TPostProForm.CheckBox_P_9Click(Sender: TObject);
begin
  UpdateButtonCaption(HardShadowsBtn, CheckBox_P_9);
end;


end.


