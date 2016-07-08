unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.Objects;

// Добавлен на GitHUB

type
  TForm1 = class(TForm)
    Circle1: TCircle;
    faRotation: TFloatAnimation;
    Rectangle2: TRectangle;
    faY0: TFloatAnimation;
    faX2: TFloatAnimation;
    faX1: TFloatAnimation;
    faY1: TFloatAnimation;
    faY2: TFloatAnimation;
    Circle2: TCircle;
    procedure faY0Finish(Sender: TObject);
    procedure faY1Finish(Sender: TObject);
    procedure faY2Finish(Sender: TObject);
    procedure faX1Finish(Sender: TObject);
    procedure faX2Finish(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.faX1Finish(Sender: TObject);
begin
  faX2.Start;
end;

procedure TForm1.faX2Finish(Sender: TObject);
begin
  faX1.Start;
end;

procedure TForm1.faY0Finish(Sender: TObject);
begin
  faY1.Start;
end;

procedure TForm1.faY1Finish(Sender: TObject);
begin
  faY2.Start;
end;

procedure TForm1.faY2Finish(Sender: TObject);
begin
  faY1.Start;
end;

end.
