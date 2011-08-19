.class Lcom/ecareme/pixwe/media/HudLayer$48;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/HudLayer;->buildMoreOptions()V
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
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$48;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    .line 1126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1128
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$48;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v0

    .line 1129
    .local v0, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    invoke-static {v0}, Lcom/ecareme/pixwe/media/MediaBucketList;->getFirstItemSelection(Ljava/util/ArrayList;)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v1

    .line 1130
    .local v1, item:Lcom/ecareme/pixwe/media/MediaItem;
    if-nez v1, :cond_0

    .line 1135
    :goto_0
    return-void

    .line 1133
    :cond_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$48;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->deselectAll()V

    .line 1134
    iget-object v2, p0, Lcom/ecareme/pixwe/media/HudLayer$48;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v1, Lcom/ecareme/pixwe/media/MediaItem;->mLatitude:D

    iget-wide v5, v1, Lcom/ecareme/pixwe/media/MediaItem;->mLongitude:D

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ecareme/pixwe/media/Util;->openMaps(Landroid/content/Context;DD)V

    goto :goto_0
.end method
