.class public Lcom/asus/dm/mmi/dialog/AlertConfirmDialog;
.super Lcom/asus/dm/mmi/dialog/DMDialog;
.source "AlertConfirmDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/asus/dm/mmi/dialog/DMDialog;-><init>()V

    return-void
.end method


# virtual methods
.method customSetupDialog()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertConfirmDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 42
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertConfirmDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f060023

    invoke-virtual {p0, v1}, Lcom/asus/dm/mmi/dialog/AlertConfirmDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 45
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertConfirmDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget-object v1, Lcom/asus/dm/mmi/dialog/AlertConfirmDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget-object v1, v1, Lcom/asus/dm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 47
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "pDialog"
    .parameter "pWhich"

    .prologue
    .line 14
    packed-switch p2, :pswitch_data_0

    .line 36
    :goto_0
    return-void

    .line 16
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 17
    sget-object v1, Lcom/asus/dm/mmi/dialog/AlertConfirmDialog;->mTimer:Lcom/asus/dm/util/UIAlertDialogTimer;

    invoke-virtual {v1}, Lcom/asus/dm/util/UIAlertDialogTimer;->cancelTimer()V

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertConfirmDialog;->mService:Lcom/asus/dm/IMmiCallback;

    sget-object v2, Lcom/asus/dm/DMService$UIAlertResult;->CONFIRMATION:Lcom/asus/dm/DMService$UIAlertResult;

    invoke-virtual {v2}, Lcom/asus/dm/DMService$UIAlertResult;->ordinal()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/asus/dm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 22
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 26
    .end local v0           #ex:Landroid/os/RemoteException;
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 27
    sget-object v1, Lcom/asus/dm/mmi/dialog/AlertConfirmDialog;->mTimer:Lcom/asus/dm/util/UIAlertDialogTimer;

    invoke-virtual {v1}, Lcom/asus/dm/util/UIAlertDialogTimer;->cancelTimer()V

    .line 30
    :try_start_1
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertConfirmDialog;->mService:Lcom/asus/dm/IMmiCallback;

    sget-object v2, Lcom/asus/dm/DMService$UIAlertResult;->CONFIRMATION:Lcom/asus/dm/DMService$UIAlertResult;

    invoke-virtual {v2}, Lcom/asus/dm/DMService$UIAlertResult;->ordinal()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/asus/dm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 31
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 32
    .restart local v0       #ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 14
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
