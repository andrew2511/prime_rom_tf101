.class public Lcom/layar/ui/GPSSettingDialog;
.super Landroid/app/Dialog;
.source "GPSSettingDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    const v0, 0x7f0b000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v1, 0x7f030024

    invoke-virtual {p0, v1}, Lcom/layar/ui/GPSSettingDialog;->setContentView(I)V

    .line 27
    const v1, 0x7f070063

    invoke-virtual {p0, v1}, Lcom/layar/ui/GPSSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 28
    .local v0, btn:Landroid/widget/Button;
    new-instance v1, Lcom/layar/ui/GPSSettingDialog$1;

    invoke-direct {v1, p0}, Lcom/layar/ui/GPSSettingDialog$1;-><init>(Lcom/layar/ui/GPSSettingDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v1, 0x7f070064

    invoke-virtual {p0, v1}, Lcom/layar/ui/GPSSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 37
    .restart local v0       #btn:Landroid/widget/Button;
    new-instance v1, Lcom/layar/ui/GPSSettingDialog$2;

    invoke-direct {v1, p0}, Lcom/layar/ui/GPSSettingDialog$2;-><init>(Lcom/layar/ui/GPSSettingDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/layar/ui/GPSSettingDialog;->setCancelable(Z)V

    .line 45
    return-void
.end method
