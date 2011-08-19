.class Lcom/layar/UserWelcomeActivity$2;
.super Ljava/lang/Object;
.source "UserWelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserWelcomeActivity;->login()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserWelcomeActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserWelcomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserWelcomeActivity$2;->this$0:Lcom/layar/UserWelcomeActivity;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/layar/UserWelcomeActivity$2;->this$0:Lcom/layar/UserWelcomeActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/layar/UserWelcomeActivity$2;->this$0:Lcom/layar/UserWelcomeActivity;

    .line 85
    const-class v3, Lcom/layar/UserLoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/layar/UserWelcomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    return-void
.end method
