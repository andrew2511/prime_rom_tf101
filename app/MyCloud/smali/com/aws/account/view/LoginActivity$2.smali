.class Lcom/aws/account/view/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aws/account/view/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aws/account/view/LoginActivity;


# direct methods
.method constructor <init>(Lcom/aws/account/view/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aws/account/view/LoginActivity$2;->this$0:Lcom/aws/account/view/LoginActivity;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 87
    iget-object v3, p0, Lcom/aws/account/view/LoginActivity$2;->this$0:Lcom/aws/account/view/LoginActivity;

    iget-object v3, v3, Lcom/aws/account/view/LoginActivity;->err:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, p0, Lcom/aws/account/view/LoginActivity$2;->this$0:Lcom/aws/account/view/LoginActivity;

    iget-object v3, v3, Lcom/aws/account/view/LoginActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, user:Ljava/lang/String;
    iget-object v3, p0, Lcom/aws/account/view/LoginActivity$2;->this$0:Lcom/aws/account/view/LoginActivity;

    iget-object v3, v3, Lcom/aws/account/view/LoginActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, password:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 93
    new-instance v1, Lcom/aws/account/view/LoginActivity$LoginTask;

    iget-object v3, p0, Lcom/aws/account/view/LoginActivity$2;->this$0:Lcom/aws/account/view/LoginActivity;

    iget-object v4, p0, Lcom/aws/account/view/LoginActivity$2;->this$0:Lcom/aws/account/view/LoginActivity;

    invoke-direct {v1, v3, v4}, Lcom/aws/account/view/LoginActivity$LoginTask;-><init>(Lcom/aws/account/view/LoginActivity;Landroid/content/Context;)V

    .line 94
    .local v1, t:Lcom/aws/account/view/LoginActivity$LoginTask;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Lcom/aws/account/view/LoginActivity$LoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    .end local v1           #t:Lcom/aws/account/view/LoginActivity$LoginTask;
    :cond_0
    return-void
.end method
