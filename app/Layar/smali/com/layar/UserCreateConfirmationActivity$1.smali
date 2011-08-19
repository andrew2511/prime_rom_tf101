.class Lcom/layar/UserCreateConfirmationActivity$1;
.super Ljava/lang/Object;
.source "UserCreateConfirmationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserCreateConfirmationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserCreateConfirmationActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserCreateConfirmationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserCreateConfirmationActivity$1;->this$0:Lcom/layar/UserCreateConfirmationActivity;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/layar/UserCreateConfirmationActivity$1;->this$0:Lcom/layar/UserCreateConfirmationActivity;

    new-instance v1, Landroid/content/Intent;

    .line 24
    iget-object v2, p0, Lcom/layar/UserCreateConfirmationActivity$1;->this$0:Lcom/layar/UserCreateConfirmationActivity;

    const-class v3, Lcom/layar/UserAddAccountsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    invoke-static {}, Lcom/layar/UserCreateConfirmationActivity;->access$0()I

    move-result v2

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/layar/UserCreateConfirmationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 26
    return-void
.end method
