.class Lcom/layar/UserWelcomeActivity$3;
.super Ljava/lang/Object;
.source "UserWelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserWelcomeActivity;->createAccount()Landroid/view/View$OnClickListener;
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
    iput-object p1, p0, Lcom/layar/UserWelcomeActivity$3;->this$0:Lcom/layar/UserWelcomeActivity;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/layar/UserWelcomeActivity$3;->this$0:Lcom/layar/UserWelcomeActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/layar/UserWelcomeActivity$3;->this$0:Lcom/layar/UserWelcomeActivity;

    .line 95
    const-class v3, Lcom/layar/UserCreateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/layar/UserWelcomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 96
    return-void
.end method
