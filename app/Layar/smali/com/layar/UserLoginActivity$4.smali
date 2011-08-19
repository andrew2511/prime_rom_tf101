.class Lcom/layar/UserLoginActivity$4;
.super Ljava/lang/Object;
.source "UserLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserLoginActivity;->forgotLinkListener()Landroid/view/View$OnClickListener;
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
    iput-object p1, p0, Lcom/layar/UserLoginActivity$4;->this$0:Lcom/layar/UserLoginActivity;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/layar/UserLoginActivity$4;->this$0:Lcom/layar/UserLoginActivity;

    .line 174
    const-class v2, Lcom/layar/UserForgotPasswordActivity;

    .line 173
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/layar/UserLoginActivity$4;->this$0:Lcom/layar/UserLoginActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/layar/UserLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 176
    return-void
.end method
