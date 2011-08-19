.class public Lcom/newspaperdirect/pressreader/android/Authorization;
.super Landroid/app/Activity;
.source "Authorization.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final BACK_TO_STORE:I = 0x1

.field private static final DLG_PROGRESS:I = 0x1


# instance fields
.field private taskAuth:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private taskAuthService:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/Service;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/Authorization;->taskAuth:Landroid/os/AsyncTask;

    .line 49
    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/Authorization;->taskAuthService:Landroid/os/AsyncTask;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/Authorization;)Landroid/os/AsyncTask;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Authorization;->taskAuth:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/Authorization;)Landroid/os/AsyncTask;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Authorization;->taskAuthService:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/Authorization;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/Authorization;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/Authorization;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/Authorization;->authorize()V

    return-void
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/Authorization;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/Authorization;->finished()V

    return-void
.end method

.method private authorize()V
    .locals 6

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Authorization;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    :goto_0
    return-void

    .line 117
    :cond_0
    const v4, 0x7f0c0003

    invoke-virtual {p0, v4}, Lcom/newspaperdirect/pressreader/android/Authorization;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, userName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    const v4, 0x7f09001e

    invoke-virtual {p0, v4}, Lcom/newspaperdirect/pressreader/android/Authorization;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/newspaperdirect/pressreader/android/Authorization;->showAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    const v4, 0x7f0c0004

    invoke-virtual {p0, v4}, Lcom/newspaperdirect/pressreader/android/Authorization;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, password:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    const v4, 0x7f09001f

    invoke-virtual {p0, v4}, Lcom/newspaperdirect/pressreader/android/Authorization;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/newspaperdirect/pressreader/android/Authorization;->showAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    const v4, 0x7f0c0005

    invoke-virtual {p0, v4}, Lcom/newspaperdirect/pressreader/android/Authorization;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, clientName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 129
    const v4, 0x7f090020

    invoke-virtual {p0, v4}, Lcom/newspaperdirect/pressreader/android/Authorization;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/newspaperdirect/pressreader/android/Authorization;->showAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_3
    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    invoke-direct {v4, p0}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;-><init>(Landroid/app/Activity;)V

    .line 133
    new-instance v5, Lcom/newspaperdirect/pressreader/android/Authorization$4;

    invoke-direct {v5, p0}, Lcom/newspaperdirect/pressreader/android/Authorization$4;-><init>(Lcom/newspaperdirect/pressreader/android/Authorization;)V

    invoke-virtual {v4, v5}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->setAuthorization(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$OnAuthorization;)Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    move-result-object v0

    .line 138
    .local v0, checker:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;
    new-instance v4, Lcom/newspaperdirect/pressreader/android/Authorization$5;

    invoke-direct {v4, p0}, Lcom/newspaperdirect/pressreader/android/Authorization$5;-><init>(Lcom/newspaperdirect/pressreader/android/Authorization;)V

    invoke-virtual {v0, v4}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->setNegativeResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    .line 143
    invoke-virtual {v0, v3, v2, v1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private finished()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/newspaperdirect/pressreader/android/Authorization$6;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/Authorization$6;-><init>(Lcom/newspaperdirect/pressreader/android/Authorization;)V

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Authorization;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method private hideProgressDialog()V
    .locals 2

    .prologue
    .line 180
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/Authorization;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public static register(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/Authorization;->hideProgressDialog()V

    .line 166
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 167
    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 169
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 170
    const v1, 0x7f09005e

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/Authorization;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/newspaperdirect/pressreader/android/Authorization$7;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/Authorization$7;-><init>(Lcom/newspaperdirect/pressreader/android/Authorization;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 176
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 100
    :pswitch_0
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/newspaperdirect/pressreader/android/Authorization$2;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/Authorization$2;-><init>(Lcom/newspaperdirect/pressreader/android/Authorization;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->setPositiveResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/newspaperdirect/pressreader/android/Authorization$3;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/Authorization$3;-><init>(Lcom/newspaperdirect/pressreader/android/Authorization;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->setNegativeResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->check()V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0006
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f0c0007

    const v6, 0x7f09007d

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/AppInitHelper;->init(Landroid/app/Activity;)V

    .line 55
    const v0, 0x7f09007e

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Authorization;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Authorization;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Authorization;->setContentView(I)V

    .line 57
    const v0, 0x7f0c0005

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Authorization;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getSystemModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v0, 0x7f0c0006

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Authorization;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p0, v7}, Lcom/newspaperdirect/pressreader/android/Authorization;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0, v6}, Lcom/newspaperdirect/pressreader/android/Authorization;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f09004b

    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/Authorization;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0, v7}, Lcom/newspaperdirect/pressreader/android/Authorization;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    invoke-virtual {p0, v6}, Lcom/newspaperdirect/pressreader/android/Authorization;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f09004c

    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/Authorization;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 79
    packed-switch p1, :pswitch_data_0

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 81
    :pswitch_0
    const-string v1, ""

    const v2, 0x7f09000b

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Authorization;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 82
    .local v0, p:Landroid/app/Dialog;
    new-instance v1, Lcom/newspaperdirect/pressreader/android/Authorization$1;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/Authorization$1;-><init>(Lcom/newspaperdirect/pressreader/android/Authorization;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 91
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move-object v1, v0

    .line 92
    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 70
    return-void
.end method

.method public onRegisterBtnClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 189
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/Authorization;->register(Landroid/app/Activity;)V

    .line 190
    return-void
.end method
