.class public Lnet/yostore/aws/view/common/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginDialog"


# instance fields
.field private ctx:Landroid/content/Context;

.field private loginTask:Lnet/yostore/aws/ansytask/LoginTask;

.field mPrefs:Landroid/content/SharedPreferences;

.field private tvUID:Landroid/widget/EditText;

.field private tvUPW:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    iput-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->tvUID:Landroid/widget/EditText;

    .line 30
    iput-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->tvUPW:Landroid/widget/EditText;

    .line 21
    return-void
.end method


# virtual methods
.method public backFunction(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 76
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->exitAp(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public forgetAccountFunction(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 131
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goRegister(Landroid/content/Context;)V

    .line 132
    return-void
.end method

.method public goReg(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 126
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goRegister(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method public loginFunction(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 83
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->tvUID:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->tvUPW:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    const v1, 0x7f060037

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 88
    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 90
    const v1, 0x7f060026

    .line 91
    new-instance v2, Lnet/yostore/aws/view/common/LoginActivity$1;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/common/LoginActivity$1;-><init>(Lnet/yostore/aws/view/common/LoginActivity;)V

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 122
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->tvUID:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, uid:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->tvUPW:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/yostore/utility/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, pwd:Ljava/lang/String;
    new-instance v0, Lnet/yostore/aws/view/common/LoginActivity$2;

    iget-object v2, p0, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/view/common/LoginActivity$2;-><init>(Lnet/yostore/aws/view/common/LoginActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V

    iput-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->loginTask:Lnet/yostore/aws/ansytask/LoginTask;

    .line 120
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->loginTask:Lnet/yostore/aws/ansytask/LoginTask;

    invoke-virtual {v0, v6}, Lnet/yostore/aws/ansytask/LoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/LoginActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f0600cb

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/LoginActivity;->setTitle(I)V

    .line 43
    iput-object p0, p0, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    .line 44
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->tvUID:Landroid/widget/EditText;

    .line 45
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity;->tvUPW:Landroid/widget/EditText;

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 54
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 65
    packed-switch p1, :pswitch_data_0

    .line 71
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 68
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/LoginActivity;->backFunction(Landroid/view/View;)V

    .line 69
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 59
    const-string v0, "LoginDialog"

    const-string v1, "onPause: Cloud Info Saved to AWSPrefs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method
