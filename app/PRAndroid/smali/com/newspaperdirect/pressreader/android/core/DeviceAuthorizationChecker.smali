.class public Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;
.super Lcom/newspaperdirect/pressreader/android/core/BaseChecker;
.source "DeviceAuthorizationChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$OnAuthorization;
    }
.end annotation


# static fields
.field private static final DLG_PROGRESS:I = 0x1


# instance fields
.field private mOnAuthorization:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$OnAuthorization;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;-><init>(Landroid/app/Activity;)V

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->authorize()V

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->showDeviceAuthorizationErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->showAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private authorize()V
    .locals 4

    .prologue
    .line 51
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$2;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    .line 89
    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 90
    return-void
.end method

.method private authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "username"
    .parameter "password"
    .parameter "clientName"
    .parameter "serviceName"

    .prologue
    const/4 v6, 0x1

    .line 261
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->showDialog(I)V

    .line 263
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;-><init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v6, [Ljava/lang/Void;

    const/4 v2, 0x0

    .line 367
    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private hideProgressDialog()V
    .locals 3

    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 136
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->hideProgressDialog()V

    .line 143
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6;

    invoke-direct {v1, p0, p1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$6;-><init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method private showDeviceAuthorizationErrorDialog(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 93
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 96
    .local v1, flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    :try_start_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 98
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$3;

    invoke-direct {v3, p0, v1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    const v4, 0x7f090060

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$4;

    invoke-direct {v4, p0, v1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$4;-><init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 116
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    const v4, 0x7f09005c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$5;

    invoke-direct {v4, p0, v1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$5;-><init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 128
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "username"
    .parameter "password"
    .parameter "clientName"

    .prologue
    const/4 v1, 0x1

    .line 167
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 169
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;-><init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    .line 256
    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected authorized()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mOnAuthorization:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$OnAuthorization;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mOnAuthorization:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$OnAuthorization;

    invoke-interface {v0}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$OnAuthorization;->onAuthorization()V

    .line 164
    :cond_0
    return-void
.end method

.method public check()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getServicesCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;-><init>(Landroid/app/Activity;)V

    .line 39
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$1;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->setPositiveResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mOnNegativeResult:Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->setNegativeResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mNegativeResultMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->setNegativeResultMessage(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->check()V

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->ok()V

    goto :goto_0
.end method

.method public setAuthorization(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$OnAuthorization;)Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;
    .locals 0
    .parameter "listener"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mOnAuthorization:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$OnAuthorization;

    .line 33
    return-object p0
.end method
