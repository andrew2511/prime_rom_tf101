.class Lcom/layar/UserWelcomeActivity$4;
.super Ljava/lang/Object;
.source "UserWelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserWelcomeActivity;->loginSocial(Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserWelcomeActivity;

.field private final synthetic val$social:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/layar/UserWelcomeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserWelcomeActivity$4;->this$0:Lcom/layar/UserWelcomeActivity;

    iput-object p2, p0, Lcom/layar/UserWelcomeActivity$4;->val$social:Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 104
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/layar/UserWelcomeActivity$4;->this$0:Lcom/layar/UserWelcomeActivity;

    const-class v2, Lcom/layar/SocialActionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, i:Landroid/content/Intent;
    const-string v1, "ActionType"

    iget-object v2, p0, Lcom/layar/UserWelcomeActivity$4;->val$social:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v1, "IsLogin"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/layar/UserWelcomeActivity$4;->this$0:Lcom/layar/UserWelcomeActivity;

    invoke-virtual {v1, v0, v3}, Lcom/layar/UserWelcomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 108
    return-void
.end method
