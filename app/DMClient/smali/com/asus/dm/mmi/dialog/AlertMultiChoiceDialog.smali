.class public Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;
.super Lcom/asus/dm/mmi/dialog/DMDialog;
.source "AlertMultiChoiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field private mCheckedItems:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/asus/dm/mmi/dialog/DMDialog;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mCheckedItems:[Z

    return-void
.end method


# virtual methods
.method customSetupDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 52
    sget-object v1, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget-object v1, v1, Lcom/asus/dm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 53
    sget-object v1, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget-object v1, v1, Lcom/asus/dm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mCheckedItems:[Z

    .line 55
    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mCheckedItems:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 56
    sget-object v1, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget v1, v1, Lcom/asus/dm/UIAlertParaDescriptor;->mChoicedFlag:I

    shl-int v2, v3, v0

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mCheckedItems:[Z

    aput-boolean v3, v1, v0

    .line 55
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mCheckedItems:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    goto :goto_1

    .line 64
    .end local v0           #count:I
    :cond_1
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-boolean v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 65
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget-object v2, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget-object v2, v2, Lcom/asus/dm/UIAlertParaDescriptor;->mChoiceOptions:[Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 66
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, p0, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mCheckedItems:[Z

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 67
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 70
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 71
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x7f060023

    invoke-virtual {p0, v2}, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 74
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget-object v2, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget-object v2, v2, Lcom/asus/dm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 75
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "pDialog"
    .parameter "pWhich"

    .prologue
    .line 16
    packed-switch p2, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 18
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 19
    sget-object v1, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mTimer:Lcom/asus/dm/util/UIAlertDialogTimer;

    invoke-virtual {v1}, Lcom/asus/dm/util/UIAlertDialogTimer;->cancelTimer()V

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mService:Lcom/asus/dm/IMmiCallback;

    sget-object v2, Lcom/asus/dm/DMService$UIAlertResult;->CHOICE_LIST_SELECTION:Lcom/asus/dm/DMService$UIAlertResult;

    invoke-virtual {v2}, Lcom/asus/dm/DMService$UIAlertResult;->ordinal()I

    move-result v2

    sget-object v3, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget v3, v3, Lcom/asus/dm/UIAlertParaDescriptor;->mChoicedFlag:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/asus/dm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 28
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 34
    .end local v0           #ex:Landroid/os/RemoteException;
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 35
    sget-object v1, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mTimer:Lcom/asus/dm/util/UIAlertDialogTimer;

    invoke-virtual {v1}, Lcom/asus/dm/util/UIAlertDialogTimer;->cancelTimer()V

    .line 40
    :try_start_1
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mService:Lcom/asus/dm/IMmiCallback;

    sget-object v2, Lcom/asus/dm/DMService$UIAlertResult;->CANCEL:Lcom/asus/dm/DMService$UIAlertResult;

    invoke-virtual {v2}, Lcom/asus/dm/DMService$UIAlertResult;->ordinal()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/asus/dm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 42
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 43
    .restart local v0       #ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .parameter "dialog"
    .parameter "pWhich"
    .parameter "pIsChecked"

    .prologue
    const/4 v2, 0x1

    .line 78
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mCheckedItems:[Z

    aput-boolean p3, v0, p2

    .line 80
    if-eqz p3, :cond_0

    .line 81
    sget-object v0, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    sget-object v1, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget v1, v1, Lcom/asus/dm/UIAlertParaDescriptor;->mChoicedFlag:I

    shl-int/2addr v2, p2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/asus/dm/UIAlertParaDescriptor;->mChoicedFlag:I

    .line 86
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChoiceFlage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget v1, v1, Lcom/asus/dm/UIAlertParaDescriptor;->mChoicedFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    return-void

    .line 83
    :cond_0
    sget-object v0, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    sget-object v1, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget v1, v1, Lcom/asus/dm/UIAlertParaDescriptor;->mChoicedFlag:I

    shl-int/2addr v2, p2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Lcom/asus/dm/UIAlertParaDescriptor;->mChoicedFlag:I

    goto :goto_0
.end method
