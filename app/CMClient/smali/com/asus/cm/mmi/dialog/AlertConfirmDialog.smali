.class public Lcom/asus/cm/mmi/dialog/AlertConfirmDialog;
.super Lcom/asus/cm/mmi/dialog/DMDialog;
.source "AlertConfirmDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/asus/cm/mmi/dialog/DMDialog;-><init>()V

    return-void
.end method


# virtual methods
.method customSetupDialog()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertConfirmDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 41
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertConfirmDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x1040009

    invoke-virtual {p0, v1}, Lcom/asus/cm/mmi/dialog/AlertConfirmDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 44
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertConfirmDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget-object v1, Lcom/asus/cm/mmi/dialog/AlertConfirmDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v1, v1, Lcom/asus/cm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 46
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "pDialog"
    .parameter "pWhich"

    .prologue
    .line 13
    packed-switch p2, :pswitch_data_0

    .line 35
    :goto_0
    return-void

    .line 15
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 16
    sget-object v1, Lcom/asus/cm/mmi/dialog/AlertConfirmDialog;->mTimer:Lcom/asus/cm/util/UIAlertDialogTimer;

    invoke-virtual {v1}, Lcom/asus/cm/util/UIAlertDialogTimer;->cancelTimer()V

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/AlertConfirmDialog;->mService:Lcom/asus/cm/IMmiCallback;

    sget-object v2, Lcom/asus/cm/CMService$UIAlertResult;->CONFIRMATION:Lcom/asus/cm/CMService$UIAlertResult;

    invoke-virtual {v2}, Lcom/asus/cm/CMService$UIAlertResult;->ordinal()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/asus/cm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 21
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 25
    .end local v0           #ex:Landroid/os/RemoteException;
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 26
    sget-object v1, Lcom/asus/cm/mmi/dialog/AlertConfirmDialog;->mTimer:Lcom/asus/cm/util/UIAlertDialogTimer;

    invoke-virtual {v1}, Lcom/asus/cm/util/UIAlertDialogTimer;->cancelTimer()V

    .line 29
    :try_start_1
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/AlertConfirmDialog;->mService:Lcom/asus/cm/IMmiCallback;

    sget-object v2, Lcom/asus/cm/CMService$UIAlertResult;->CONFIRMATION:Lcom/asus/cm/CMService$UIAlertResult;

    invoke-virtual {v2}, Lcom/asus/cm/CMService$UIAlertResult;->ordinal()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/asus/cm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 30
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 31
    .restart local v0       #ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 13
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
