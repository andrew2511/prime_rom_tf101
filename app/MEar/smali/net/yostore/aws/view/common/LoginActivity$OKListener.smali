.class Lnet/yostore/aws/view/common/LoginActivity$OKListener;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/common/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OKListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/common/LoginActivity;


# direct methods
.method private constructor <init>(Lnet/yostore/aws/view/common/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lnet/yostore/aws/view/common/LoginActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/yostore/aws/view/common/LoginActivity;Lnet/yostore/aws/view/common/LoginActivity$OKListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/common/LoginActivity$OKListener;-><init>(Lnet/yostore/aws/view/common/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 302
    iget-object v3, p0, Lnet/yostore/aws/view/common/LoginActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/LoginActivity;->access$1(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    iget-object v3, p0, Lnet/yostore/aws/view/common/LoginActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/LoginActivity;->access$2(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 305
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lnet/yostore/aws/view/common/LoginActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 306
    const v4, 0x7f060019

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 307
    const v4, 0x7f060015

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 308
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 309
    const v4, 0x7f060003

    .line 310
    new-instance v5, Lnet/yostore/aws/view/common/LoginActivity$OKListener$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/view/common/LoginActivity$OKListener$1;-><init>(Lnet/yostore/aws/view/common/LoginActivity$OKListener;)V

    .line 309
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 316
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 337
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v3, p0, Lnet/yostore/aws/view/common/LoginActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/LoginActivity;->access$1(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, uid:Ljava/lang/String;
    iget-object v3, p0, Lnet/yostore/aws/view/common/LoginActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/LoginActivity;->access$2(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/yostore/utility/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, pwd:Ljava/lang/String;
    iget-object v3, p0, Lnet/yostore/aws/view/common/LoginActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    new-instance v4, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;

    iget-object v5, p0, Lnet/yostore/aws/view/common/LoginActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-direct {v4, v5, v2, v1}, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;-><init>(Lnet/yostore/aws/view/common/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lnet/yostore/aws/view/common/LoginActivity;->access$3(Lnet/yostore/aws/view/common/LoginActivity;Lnet/yostore/aws/view/common/LoginActivity$LoginTask;)V

    .line 323
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 324
    .local v0, _msg:Landroid/os/Message;
    const/16 v3, 0x14

    iput v3, v0, Landroid/os/Message;->what:I

    .line 325
    iget-object v3, p0, Lnet/yostore/aws/view/common/LoginActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/LoginActivity;->access$0(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
