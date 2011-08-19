.class public Lcom/asus/cm/mmi/dialog/AlertDisplayDialog;
.super Lcom/asus/cm/mmi/dialog/DMDialog;
.source "AlertDisplayDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/asus/cm/mmi/dialog/DMDialog;-><init>()V

    return-void
.end method


# virtual methods
.method customSetupDialog()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertDisplayDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget-object v1, Lcom/asus/cm/mmi/dialog/AlertDisplayDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v1, v1, Lcom/asus/cm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 34
    sget-object v0, Lcom/asus/cm/mmi/dialog/AlertDisplayDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget v0, v0, Lcom/asus/cm/UIAlertParaDescriptor;->mIcon:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertDisplayDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget-object v1, Lcom/asus/cm/mmi/dialog/AlertDisplayDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget v1, v1, Lcom/asus/cm/UIAlertParaDescriptor;->mIcon:I

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 38
    :cond_0
    sget-object v0, Lcom/asus/cm/mmi/dialog/AlertDisplayDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v0, v0, Lcom/asus/cm/UIAlertParaDescriptor;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertDisplayDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget-object v1, Lcom/asus/cm/mmi/dialog/AlertDisplayDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v1, v1, Lcom/asus/cm/UIAlertParaDescriptor;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 43
    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "pDialog"
    .parameter "pWhich"

    .prologue
    .line 15
    packed-switch p2, :pswitch_data_0

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 17
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 18
    sget-object v1, Lcom/asus/cm/mmi/dialog/AlertDisplayDialog;->mTimer:Lcom/asus/cm/util/UIAlertDialogTimer;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/asus/cm/mmi/dialog/AlertDisplayDialog;->mTimer:Lcom/asus/cm/util/UIAlertDialogTimer;

    invoke-virtual {v1}, Lcom/asus/cm/util/UIAlertDialogTimer;->cancelTimer()V

    .line 21
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/AlertDisplayDialog;->mService:Lcom/asus/cm/IMmiCallback;

    if-eqz v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/AlertDisplayDialog;->mService:Lcom/asus/cm/IMmiCallback;

    sget-object v2, Lcom/asus/cm/CMService$UIAlertResult;->DISPLAY_MSG_CLOSE:Lcom/asus/cm/CMService$UIAlertResult;

    invoke-virtual {v2}, Lcom/asus/cm/CMService$UIAlertResult;->ordinal()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/asus/cm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 24
    .local v0, pEx:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 15
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
