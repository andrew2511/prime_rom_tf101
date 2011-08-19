.class Lcom/layar/ShareSocialActivity$6;
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
    iput-object p1, p0, Lcom/layar/ShareSocialActivity$6;->this$0:Lcom/layar/ShareSocialActivity;

    iput-object p2, p0, Lcom/layar/ShareSocialActivity$6;->val$social:Ljava/lang/String;

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 575
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/layar/ShareSocialActivity$6;->this$0:Lcom/layar/ShareSocialActivity;

    .line 576
    const-class v2, Lcom/layar/UserLoginActivity;

    .line 575
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 577
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/layar/ShareSocialActivity$6;->this$0:Lcom/layar/ShareSocialActivity;

    iget-object v2, p0, Lcom/layar/ShareSocialActivity$6;->val$social:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/layar/ShareSocialActivity;->access$16(Lcom/layar/ShareSocialActivity;Ljava/lang/String;)V

    .line 578
    iget-object v1, p0, Lcom/layar/ShareSocialActivity$6;->this$0:Lcom/layar/ShareSocialActivity;

    const/16 v2, 0x68

    invoke-virtual {v1, v0, v2}, Lcom/layar/ShareSocialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 582
    return-void
.end method
