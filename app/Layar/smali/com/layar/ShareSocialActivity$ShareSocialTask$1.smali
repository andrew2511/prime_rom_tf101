.class Lcom/layar/ShareSocialActivity$ShareSocialTask$1;
.super Ljava/lang/Object;
.source "ShareSocialActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ShareSocialActivity$ShareSocialTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/ShareSocialActivity$ShareSocialTask;


# direct methods
.method constructor <init>(Lcom/layar/ShareSocialActivity$ShareSocialTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask$1;->this$1:Lcom/layar/ShareSocialActivity$ShareSocialTask;

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask$1;->this$1:Lcom/layar/ShareSocialActivity$ShareSocialTask;

    invoke-static {v0}, Lcom/layar/ShareSocialActivity$ShareSocialTask;->access$2(Lcom/layar/ShareSocialActivity$ShareSocialTask;)Lcom/layar/ShareSocialActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/ShareSocialActivity;->finish()V

    .line 705
    return-void
.end method
