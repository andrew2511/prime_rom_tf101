.class Lcom/layar/ShareSocialActivity$4;
.super Ljava/lang/Object;
.source "ShareSocialActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ShareSocialActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ShareSocialActivity;

.field private final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/layar/ShareSocialActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ShareSocialActivity$4;->this$0:Lcom/layar/ShareSocialActivity;

    iput-object p2, p0, Lcom/layar/ShareSocialActivity$4;->val$email:Ljava/lang/String;

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 518
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/layar/ShareSocialActivity$4;->this$0:Lcom/layar/ShareSocialActivity;

    .line 519
    const-class v2, Lcom/layar/UserLoginActivity;

    .line 518
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 520
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extras:login"

    iget-object v2, p0, Lcom/layar/ShareSocialActivity$4;->val$email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    iget-object v1, p0, Lcom/layar/ShareSocialActivity$4;->this$0:Lcom/layar/ShareSocialActivity;

    const/16 v2, 0x67

    invoke-virtual {v1, v0, v2}, Lcom/layar/ShareSocialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 522
    return-void
.end method
