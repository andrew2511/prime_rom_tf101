.class Lcom/ecareme/pixwe/view/dialog/LoginDialog$OKListener;
.super Ljava/lang/Object;
.source "LoginDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/dialog/LoginDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OKListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;


# direct methods
.method private constructor <init>(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$OKListener;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ecareme/pixwe/view/dialog/LoginDialog;Lcom/ecareme/pixwe/view/dialog/LoginDialog$OKListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/dialog/LoginDialog$OKListener;-><init>(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 134
    iget-object v3, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$OKListener;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v3}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$1(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/widget/EditText;

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

    .line 135
    iget-object v3, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$OKListener;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v3}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$2(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/widget/EditText;

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

    .line 137
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    const v4, 0x7f060081

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 139
    const v4, 0x7f060084

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 140
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 141
    const v4, 0x7f060062

    .line 142
    new-instance v5, Lcom/ecareme/pixwe/view/dialog/LoginDialog$OKListener$1;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog$OKListener$1;-><init>(Lcom/ecareme/pixwe/view/dialog/LoginDialog$OKListener;)V

    .line 141
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 148
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 160
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v3, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$OKListener;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v3}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$1(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, uid:Ljava/lang/String;
    iget-object v3, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$OKListener;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v3}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$2(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/widget/EditText;

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

    .line 155
    .local v1, pwd:Ljava/lang/String;
    iget-object v3, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$OKListener;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    new-instance v4, Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginTask;

    iget-object v5, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$OKListener;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-direct {v4, v5, v2, v1, v6}, Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginTask;-><init>(Lcom/ecareme/pixwe/view/dialog/LoginDialog;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v3, v4}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$3(Lcom/ecareme/pixwe/view/dialog/LoginDialog;Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginTask;)V

    .line 156
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 157
    .local v0, _msg:Landroid/os/Message;
    const/16 v3, 0x14

    iput v3, v0, Landroid/os/Message;->what:I

    .line 158
    iget-object v3, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$OKListener;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v3}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$0(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
