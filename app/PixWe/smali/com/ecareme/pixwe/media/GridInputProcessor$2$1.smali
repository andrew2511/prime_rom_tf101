.class Lcom/ecareme/pixwe/media/GridInputProcessor$2$1;
.super Ljava/lang/Object;
.source "GridInputProcessor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/GridInputProcessor$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecareme/pixwe/media/GridInputProcessor$2;

.field private final synthetic val$item:Lcom/ecareme/pixwe/media/MediaItem;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/GridInputProcessor$2;Lcom/ecareme/pixwe/media/MediaItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor$2$1;->this$1:Lcom/ecareme/pixwe/media/GridInputProcessor$2;

    iput-object p2, p0, Lcom/ecareme/pixwe/media/GridInputProcessor$2$1;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 740
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor$2$1;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget-wide v1, v1, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 741
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 742
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridInputProcessor$2$1;->val$item:Lcom/ecareme/pixwe/media/MediaItem;

    iget-wide v2, v2, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ecareme/pixwe/PixWe;->getDirectDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 743
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor$2$1;->this$1:Lcom/ecareme/pixwe/media/GridInputProcessor$2;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/GridInputProcessor$2;->access$0(Lcom/ecareme/pixwe/media/GridInputProcessor$2;)Lcom/ecareme/pixwe/media/GridInputProcessor;

    move-result-object v1

    invoke-static {v1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->access$0(Lcom/ecareme/pixwe/media/GridInputProcessor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 745
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
