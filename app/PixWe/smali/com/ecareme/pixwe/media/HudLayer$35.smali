.class Lcom/ecareme/pixwe/media/HudLayer$35;
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
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$35;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 594
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer$35;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/HudLayer;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer$35;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v0

    .line 596
    .local v0, mediaBucket:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/media/MediaBucket;

    iget-object v1, v1, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    sput-object v1, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 597
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer$35;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/HudLayer;->access$11(Lcom/ecareme/pixwe/media/HudLayer;)V

    .line 598
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer$35;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    .line 601
    .end local v0           #mediaBucket:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer$35;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    goto :goto_0
.end method
