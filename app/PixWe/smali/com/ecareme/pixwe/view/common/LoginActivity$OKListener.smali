.class Lcom/ecareme/pixwe/view/common/LoginActivity$OKListener;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/common/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OKListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/ecareme/pixwe/view/common/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ecareme/pixwe/view/common/LoginActivity;Lcom/ecareme/pixwe/view/common/LoginActivity$OKListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/common/LoginActivity$OKListener;-><init>(Lcom/ecareme/pixwe/view/common/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 142
    iget-object v3, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v3}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$1(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/widget/EditText;

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

    .line 143
    iget-object v3, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v3}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$2(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/widget/EditText;

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

    .line 145
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    const v4, 0x7f060081

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 147
    const v4, 0x7f060084

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 148
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 149
    const v4, 0x7f060062

    .line 150
    new-instance v5, Lcom/ecareme/pixwe/view/common/LoginActivity$OKListener$1;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/common/LoginActivity$OKListener$1;-><init>(Lcom/ecareme/pixwe/view/common/LoginActivity$OKListener;)V

    .line 149
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 156
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 168
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v3, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v3}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$1(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, uid:Ljava/lang/String;
    iget-object v3, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v3}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$2(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/widget/EditText;

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

    .line 163
    .local v1, pwd:Ljava/lang/String;
    iget-object v3, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    new-instance v4, Lcom/ecareme/pixwe/view/common/LoginActivity$LoginTask;

    iget-object v5, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-direct {v4, v5, v2, v1, v6}, Lcom/ecareme/pixwe/view/common/LoginActivity$LoginTask;-><init>(Lcom/ecareme/pixwe/view/common/LoginActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v3, v4}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$3(Lcom/ecareme/pixwe/view/common/LoginActivity;Lcom/ecareme/pixwe/view/common/LoginActivity$LoginTask;)V

    .line 164
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 165
    .local v0, _msg:Landroid/os/Message;
    const/16 v3, 0x14

    iput v3, v0, Landroid/os/Message;->what:I

    .line 166
    iget-object v3, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v3}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$0(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
