.class Lcom/ecareme/pixwe/media/GridLayer$4;
.super Ljava/lang/Object;
.source "GridLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/GridLayer;->enableLocationFiltering(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/GridLayer;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/GridLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/GridLayer$4;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 377
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer$4;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/GridLayer;->access$3(Lcom/ecareme/pixwe/media/GridLayer;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer$4;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/GridLayer;->access$6(Lcom/ecareme/pixwe/media/GridLayer;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer$4;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/GridLayer;->access$5(Lcom/ecareme/pixwe/media/GridLayer;)Lcom/ecareme/pixwe/media/GridInputProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridInputProcessor;->clearSelection()V

    .line 380
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer$4;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->setState(I)V

    .line 387
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer$4;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridLayer;->disableLocationFiltering()V

    goto :goto_0

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer$4;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/GridLayer;->access$3(Lcom/ecareme/pixwe/media/GridLayer;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    goto :goto_0
.end method
