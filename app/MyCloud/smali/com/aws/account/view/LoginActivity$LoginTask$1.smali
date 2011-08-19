.class Lcom/aws/account/view/LoginActivity$LoginTask$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aws/account/view/LoginActivity$LoginTask;-><init>(Lcom/aws/account/view/LoginActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aws/account/view/LoginActivity$LoginTask;


# direct methods
.method constructor <init>(Lcom/aws/account/view/LoginActivity$LoginTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aws/account/view/LoginActivity$LoginTask$1;->this$1:Lcom/aws/account/view/LoginActivity$LoginTask;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/aws/account/view/LoginActivity$LoginTask$1;->this$1:Lcom/aws/account/view/LoginActivity$LoginTask;

    invoke-static {v0}, Lcom/aws/account/view/LoginActivity$LoginTask;->access$3(Lcom/aws/account/view/LoginActivity$LoginTask;)Lcom/aws/account/view/LoginActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aws/account/view/LoginActivity;->setResult(I)V

    .line 155
    iget-object v0, p0, Lcom/aws/account/view/LoginActivity$LoginTask$1;->this$1:Lcom/aws/account/view/LoginActivity$LoginTask;

    invoke-static {v0}, Lcom/aws/account/view/LoginActivity$LoginTask;->access$3(Lcom/aws/account/view/LoginActivity$LoginTask;)Lcom/aws/account/view/LoginActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aws/account/view/LoginActivity;->finish()V

    .line 156
    return-void
.end method
