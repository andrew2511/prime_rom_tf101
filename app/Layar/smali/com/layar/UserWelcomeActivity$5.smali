.class Lcom/layar/UserWelcomeActivity$5;
.super Ljava/lang/Object;
.source "UserWelcomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserWelcomeActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserWelcomeActivity;

.field private final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/layar/UserWelcomeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserWelcomeActivity$5;->this$0:Lcom/layar/UserWelcomeActivity;

    iput-object p2, p0, Lcom/layar/UserWelcomeActivity$5;->val$email:Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/layar/UserWelcomeActivity$5;->this$0:Lcom/layar/UserWelcomeActivity;

    .line 125
    const-class v2, Lcom/layar/UserLoginActivity;

    .line 124
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extras:login"

    iget-object v2, p0, Lcom/layar/UserWelcomeActivity$5;->val$email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/layar/UserWelcomeActivity$5;->this$0:Lcom/layar/UserWelcomeActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/layar/UserWelcomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 128
    return-void
.end method
