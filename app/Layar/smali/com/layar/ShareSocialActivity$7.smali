.class Lcom/layar/ShareSocialActivity$7;
.super Ljava/lang/Object;
.source "ShareSocialActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ShareSocialActivity;->startAuthorization(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ShareSocialActivity;

.field private final synthetic val$social:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/layar/ShareSocialActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ShareSocialActivity$7;->this$0:Lcom/layar/ShareSocialActivity;

    iput-object p2, p0, Lcom/layar/ShareSocialActivity$7;->val$social:Ljava/lang/String;

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 590
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/layar/ShareSocialActivity$7;->this$0:Lcom/layar/ShareSocialActivity;

    .line 591
    const-class v2, Lcom/layar/SocialActionActivity;

    .line 590
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 592
    .local v0, i:Landroid/content/Intent;
    const-string v1, "ActionType"

    .line 593
    iget-object v2, p0, Lcom/layar/ShareSocialActivity$7;->val$social:Ljava/lang/String;

    .line 592
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const-string v1, "fromShareScreen"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 596
    const-string v1, "IsLogin"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 597
    iget-object v1, p0, Lcom/layar/ShareSocialActivity$7;->this$0:Lcom/layar/ShareSocialActivity;

    const/16 v2, 0x66

    invoke-virtual {v1, v0, v2}, Lcom/layar/ShareSocialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 601
    return-void
.end method
