.class Lcom/layar/UserForgotPasswordActivity$3;
.super Ljava/lang/Object;
.source "UserForgotPasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserForgotPasswordActivity;->inputTextListener()Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserForgotPasswordActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserForgotPasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserForgotPasswordActivity$3;->this$0:Lcom/layar/UserForgotPasswordActivity;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 136
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 132
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity$3;->this$0:Lcom/layar/UserForgotPasswordActivity;

    invoke-static {v0}, Lcom/layar/UserForgotPasswordActivity;->access$5(Lcom/layar/UserForgotPasswordActivity;)V

    .line 127
    return-void
.end method
