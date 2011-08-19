.class public abstract Lcom/asus/dm/mmi/dialog/DMDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "DMDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DMDialog"

.field private static mDialogInstance:Lcom/asus/dm/mmi/dialog/DMDialog;

.field protected static mTimer:Lcom/asus/dm/util/UIAlertDialogTimer;

.field protected static mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mPassInIntent:Landroid/content/Intent;

.field protected mRegMgr:Lcom/asus/dm/DMCRegistryManager;

.field protected mService:Lcom/asus/dm/IMmiCallback;

.field protected misStartTimer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/asus/dm/mmi/dialog/DMDialog;->mContext:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/asus/dm/mmi/dialog/DMDialog;->mService:Lcom/asus/dm/IMmiCallback;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/dm/mmi/dialog/DMDialog;->misStartTimer:Z

    return-void
.end method

.method public static closeDialog()V
    .locals 3

    .prologue
    .line 64
    sget-object v0, Lcom/asus/dm/mmi/dialog/DMDialog;->mDialogInstance:Lcom/asus/dm/mmi/dialog/DMDialog;

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "DMDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeDialog() --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/asus/dm/mmi/dialog/DMDialog;->mDialogInstance:Lcom/asus/dm/mmi/dialog/DMDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/asus/dm/mmi/dialog/DMDialog;->mDialogInstance:Lcom/asus/dm/mmi/dialog/DMDialog;

    invoke-virtual {v0}, Lcom/asus/dm/mmi/dialog/DMDialog;->dismiss()V

    .line 68
    :cond_0
    return-void
.end method

.method private freeDialogInstance()V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/asus/dm/mmi/dialog/DMDialog;->mDialogInstance:Lcom/asus/dm/mmi/dialog/DMDialog;

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/dm/mmi/dialog/DMDialog;->mDialogInstance:Lcom/asus/dm/mmi/dialog/DMDialog;

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method abstract customSetupDialog()V
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/asus/dm/mmi/dialog/DMDialog;->freeDialogInstance()V

    .line 81
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 82
    return-void
.end method

.method public finishActivity(I)V
    .locals 0
    .parameter "requestCode"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/asus/dm/mmi/dialog/DMDialog;->freeDialogInstance()V

    .line 87
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->finishActivity(I)V

    .line 88
    return-void
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/DMDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()V
    .locals 4

    .prologue
    .line 91
    const v2, 0x7f060022

    invoke-virtual {p0, v2}, Lcom/asus/dm/mmi/dialog/DMDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, positiveButtonText:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/asus/dm/mmi/dialog/DMDialog;->mService:Lcom/asus/dm/IMmiCallback;

    invoke-interface {v2}, Lcom/asus/dm/IMmiCallback;->getUIAlertParaDescriptor()Lcom/asus/dm/UIAlertParaDescriptor;

    move-result-object v2

    sput-object v2, Lcom/asus/dm/mmi/dialog/DMDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    sget-object v2, Lcom/asus/dm/mmi/dialog/DMDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/asus/dm/mmi/dialog/DMDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget-object v2, v2, Lcom/asus/dm/UIAlertParaDescriptor;->mPositiveButtonText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    sget-object v2, Lcom/asus/dm/mmi/dialog/DMDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget-object v1, v2, Lcom/asus/dm/UIAlertParaDescriptor;->mPositiveButtonText:Ljava/lang/String;

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/asus/dm/mmi/dialog/DMDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 105
    iget-object v2, p0, Lcom/asus/dm/mmi/dialog/DMDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 106
    iget-object v2, p0, Lcom/asus/dm/mmi/dialog/DMDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 109
    invoke-virtual {p0}, Lcom/asus/dm/mmi/dialog/DMDialog;->customSetupDialog()V

    .line 112
    invoke-virtual {p0}, Lcom/asus/dm/mmi/dialog/DMDialog;->setupAlert()V

    .line 118
    return-void

    .line 95
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 96
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    iput-object p0, p0, Lcom/asus/dm/mmi/dialog/DMDialog;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p0}, Lcom/asus/dm/mmi/dialog/DMDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/mmi/dialog/DMDialog;->mPassInIntent:Landroid/content/Intent;

    .line 37
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/DMDialog;->mPassInIntent:Landroid/content/Intent;

    const-string v1, "mmicallback"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/asus/dm/IMmiCallback;

    iput-object v0, p0, Lcom/asus/dm/mmi/dialog/DMDialog;->mService:Lcom/asus/dm/IMmiCallback;

    .line 38
    invoke-static {p0}, Lcom/asus/dm/DMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/mmi/dialog/DMDialog;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    .line 40
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/DMDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 41
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/DMDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f060023

    invoke-virtual {p0, v1}, Lcom/asus/dm/mmi/dialog/DMDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 42
    invoke-virtual {p0}, Lcom/asus/dm/mmi/dialog/DMDialog;->getDialog()V

    .line 44
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 130
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 49
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/DMDialog;->mPassInIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/DMDialog;->mPassInIntent:Landroid/content/Intent;

    const-string v1, "setupTimer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/asus/dm/mmi/dialog/DMDialog;->setupTimer()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/DMDialog;->mPassInIntent:Landroid/content/Intent;

    const-string v1, "disableNativeButton"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/asus/dm/mmi/dialog/DMDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/DMDialog;->mPassInIntent:Landroid/content/Intent;

    const-string v1, "saveInstance"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    sput-object p0, Lcom/asus/dm/mmi/dialog/DMDialog;->mDialogInstance:Lcom/asus/dm/mmi/dialog/DMDialog;

    .line 60
    :cond_2
    return-void
.end method

.method public setupTimer()V
    .locals 3

    .prologue
    .line 133
    sget-object v0, Lcom/asus/dm/mmi/dialog/DMDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    if-nez v0, :cond_0

    .line 134
    const-string v0, "Error @ setupTimer, mUAPd is null\n"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 137
    :cond_0
    sget-object v0, Lcom/asus/dm/mmi/dialog/DMDialog;->mTimer:Lcom/asus/dm/util/UIAlertDialogTimer;

    if-eqz v0, :cond_1

    .line 138
    const-string v0, "Timer has set\n"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "================================\n(mMaxTime, mMinTime) : ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/asus/dm/mmi/dialog/DMDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget v1, v1, Lcom/asus/dm/UIAlertParaDescriptor;->mMaxTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/asus/dm/mmi/dialog/DMDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget v1, v1, Lcom/asus/dm/UIAlertParaDescriptor;->mMinTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n================================"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/asus/dm/util/UIAlertDialogTimer;

    sget-object v1, Lcom/asus/dm/mmi/dialog/DMDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget v1, v1, Lcom/asus/dm/UIAlertParaDescriptor;->mMaxTime:I

    mul-int/lit16 v1, v1, 0x3e8

    sget-object v2, Lcom/asus/dm/mmi/dialog/DMDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget v2, v2, Lcom/asus/dm/UIAlertParaDescriptor;->mMinTime:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-direct {v0, p0, v1, v2}, Lcom/asus/dm/util/UIAlertDialogTimer;-><init>(Lcom/asus/dm/mmi/dialog/DMDialog;II)V

    sput-object v0, Lcom/asus/dm/mmi/dialog/DMDialog;->mTimer:Lcom/asus/dm/util/UIAlertDialogTimer;

    .line 148
    sget-object v0, Lcom/asus/dm/mmi/dialog/DMDialog;->mTimer:Lcom/asus/dm/util/UIAlertDialogTimer;

    new-instance v1, Lcom/asus/dm/mmi/dialog/DMDialog$1;

    invoke-direct {v1, p0}, Lcom/asus/dm/mmi/dialog/DMDialog$1;-><init>(Lcom/asus/dm/mmi/dialog/DMDialog;)V

    invoke-virtual {v0, v1}, Lcom/asus/dm/util/UIAlertDialogTimer;->setDialogDismissCallback(Ljava/lang/Runnable;)V

    .line 159
    sget-object v0, Lcom/asus/dm/mmi/dialog/DMDialog;->mTimer:Lcom/asus/dm/util/UIAlertDialogTimer;

    invoke-virtual {v0}, Lcom/asus/dm/util/UIAlertDialogTimer;->start()V

    goto :goto_0
.end method
