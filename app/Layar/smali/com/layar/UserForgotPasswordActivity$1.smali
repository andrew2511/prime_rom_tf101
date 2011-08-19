.class Lcom/layar/UserForgotPasswordActivity$1;
.super Ljava/lang/Object;
.source "UserForgotPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserForgotPasswordActivity;->cancel()Landroid/view/View$OnClickListener;
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
    iput-object p1, p0, Lcom/layar/UserForgotPasswordActivity$1;->this$0:Lcom/layar/UserForgotPasswordActivity;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity$1;->this$0:Lcom/layar/UserForgotPasswordActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/UserForgotPasswordActivity;->setResult(I)V

    .line 63
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity$1;->this$0:Lcom/layar/UserForgotPasswordActivity;

    invoke-virtual {v0}, Lcom/layar/UserForgotPasswordActivity;->finish()V

    .line 64
    return-void
.end method
