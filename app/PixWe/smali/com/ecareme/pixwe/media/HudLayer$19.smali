.class Lcom/ecareme/pixwe/media/HudLayer$19;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/HudLayer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/HudLayer;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/HudLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$19;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 403
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$19;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$5(Lcom/ecareme/pixwe/media/HudLayer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 404
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$19;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$6(Lcom/ecareme/pixwe/media/HudLayer;Z)V

    .line 405
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$19;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v1

    .line 406
    .local v1, selectedBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaBucket;

    .line 407
    .local v0, bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    iget-object v2, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    sput-object v2, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 408
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$19;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    iget-object v2, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecareme/pixwe/media/MediaItem;

    invoke-static {v3, v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$7(Lcom/ecareme/pixwe/media/HudLayer;Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 409
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$19;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->deselectOrCancelSelectMode()V

    .line 410
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$19;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->goBack()Z

    .line 411
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$19;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/HudLayer;->enterSelectionMode()V

    .line 412
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$19;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/HudLayer;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    .line 417
    .end local v0           #bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    .end local v1           #selectedBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    :cond_0
    :goto_0
    return-void

    .line 415
    .restart local v0       #bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    .restart local v1       #selectedBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    :cond_1
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$19;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v2, v4}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    goto :goto_0
.end method
