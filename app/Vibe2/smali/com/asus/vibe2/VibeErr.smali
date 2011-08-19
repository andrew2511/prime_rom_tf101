.class public Lcom/asus/vibe2/VibeErr;
.super Ljava/lang/Object;
.source "VibeErr.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleError(ILandroid/app/Activity;Z)V
    .locals 5
    .parameter "errorCode"
    .parameter "parent"
    .parameter "forceCloseActivity"

    .prologue
    const v4, 0x7f040017

    const/4 v3, 0x0

    const v2, 0x7f040015

    .line 20
    packed-switch p0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 23
    :pswitch_0
    const-string v0, "ASUS@Vibe"

    const-string v1, "VibeErr: Invalid argument!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 v0, 0x1

    invoke-static {p1, v0, v3, v2, v4}, Lcom/asus/vibe2/VibeErr;->showErrorAlert(Landroid/app/Activity;ZLandroid/content/Intent;II)V

    goto :goto_0

    .line 28
    :pswitch_1
    const-string v0, "ASUS@Vibe"

    const-string v1, "VibeErr: Network error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const v0, 0x7f040016

    invoke-static {p1, p2, v3, v2, v0}, Lcom/asus/vibe2/VibeErr;->showErrorAlert(Landroid/app/Activity;ZLandroid/content/Intent;II)V

    goto :goto_0

    .line 33
    :pswitch_2
    const-string v0, "ASUS@Vibe"

    const-string v1, "VibeErr: Parsing error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {p1, p2, v3, v2, v4}, Lcom/asus/vibe2/VibeErr;->showErrorAlert(Landroid/app/Activity;ZLandroid/content/Intent;II)V

    goto :goto_0

    .line 20
    :pswitch_data_0
    .packed-switch -0x66
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static showErrorAlert(Landroid/app/Activity;ZLandroid/content/Intent;II)V
    .locals 3
    .parameter "activity"
    .parameter "closeActivity"
    .parameter "intent"
    .parameter "titleId"
    .parameter "messageId"

    .prologue
    .line 53
    if-eqz p0, :cond_1

    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 56
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 57
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 59
    const v1, 0x104000a

    new-instance v2, Lcom/asus/vibe2/VibeErr$1;

    invoke-direct {v2, p2, p0, p1}, Lcom/asus/vibe2/VibeErr$1;-><init>(Landroid/content/Intent;Landroid/app/Activity;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    if-eqz p2, :cond_0

    .line 74
    const/high16 v1, 0x104

    new-instance v2, Lcom/asus/vibe2/VibeErr$2;

    invoke-direct {v2, p1, p0}, Lcom/asus/vibe2/VibeErr$2;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    :cond_0
    new-instance v1, Lcom/asus/vibe2/VibeErr$3;

    invoke-direct {v1, p1, p0}, Lcom/asus/vibe2/VibeErr$3;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 91
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    return-void
.end method
