.class Lcom/aws/account/view/LoginActivity$1;
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
    iput-object p1, p0, Lcom/aws/account/view/LoginActivity$1;->this$0:Lcom/aws/account/view/LoginActivity;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 64
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v1, i:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "goRegister"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 69
    iget-object v2, p0, Lcom/aws/account/view/LoginActivity$1;->this$0:Lcom/aws/account/view/LoginActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/aws/account/view/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 70
    iget-object v2, p0, Lcom/aws/account/view/LoginActivity$1;->this$0:Lcom/aws/account/view/LoginActivity;

    invoke-virtual {v2}, Lcom/aws/account/view/LoginActivity;->finish()V

    .line 72
    return-void
.end method
