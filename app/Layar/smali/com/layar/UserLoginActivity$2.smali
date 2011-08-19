.class Lcom/layar/UserLoginActivity$2;
.super Ljava/lang/Object;
.source "UserLoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserLoginActivity;->enableDisableLoginButton(Landroid/widget/Button;)Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserLoginActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserLoginActivity$2;->this$0:Lcom/layar/UserLoginActivity;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 118
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 114
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/layar/UserLoginActivity$2;->this$0:Lcom/layar/UserLoginActivity;

    invoke-static {v0}, Lcom/layar/UserLoginActivity;->access$0(Lcom/layar/UserLoginActivity;)V

    .line 109
    return-void
.end method
