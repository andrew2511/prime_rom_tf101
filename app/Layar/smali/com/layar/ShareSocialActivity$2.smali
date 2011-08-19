.class Lcom/layar/ShareSocialActivity$2;
.super Ljava/lang/Object;
.source "ShareSocialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ShareSocialActivity;->getShareListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ShareSocialActivity;


# direct methods
.method constructor <init>(Lcom/layar/ShareSocialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ShareSocialActivity$2;->this$0:Lcom/layar/ShareSocialActivity;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 263
    new-instance v0, Lcom/layar/ShareSocialActivity$ShareSocialTask;

    iget-object v1, p0, Lcom/layar/ShareSocialActivity$2;->this$0:Lcom/layar/ShareSocialActivity;

    iget-object v2, p0, Lcom/layar/ShareSocialActivity$2;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-direct {v0, v1, v2}, Lcom/layar/ShareSocialActivity$ShareSocialTask;-><init>(Lcom/layar/ShareSocialActivity;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/layar/ShareSocialActivity$ShareSocialTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 264
    return-void
.end method
