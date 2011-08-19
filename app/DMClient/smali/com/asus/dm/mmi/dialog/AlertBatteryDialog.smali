.class public Lcom/asus/dm/mmi/dialog/AlertBatteryDialog;
.super Lcom/asus/dm/mmi/dialog/DMDialog;
.source "AlertBatteryDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/asus/dm/mmi/dialog/DMDialog;-><init>()V

    return-void
.end method


# virtual methods
.method customSetupDialog()V
    .locals 5

    .prologue
    .line 24
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertBatteryDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Lcom/asus/dm/mmi/dialog/AlertBatteryDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 27
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertBatteryDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f060029

    invoke-virtual {p0, v1}, Lcom/asus/dm/mmi/dialog/AlertBatteryDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 29
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertBatteryDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f060021

    invoke-virtual {p0, v1}, Lcom/asus/dm/mmi/dialog/AlertBatteryDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 31
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertBatteryDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 33
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "pDialog"
    .parameter "pWhich"

    .prologue
    .line 13
    packed-switch p2, :pswitch_data_0

    .line 18
    :goto_0
    return-void

    .line 15
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 13
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
