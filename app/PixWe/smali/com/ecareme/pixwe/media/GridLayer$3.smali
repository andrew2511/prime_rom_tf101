.class Lcom/ecareme/pixwe/media/GridLayer$3;
.super Ljava/lang/Object;
.source "GridLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/GridLayer;->setState(I)V
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
    iput-object p1, p0, Lcom/ecareme/pixwe/media/GridLayer$3;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 331
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer$3;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/GridLayer;->access$3(Lcom/ecareme/pixwe/media/GridLayer;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer$3;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/GridLayer;->access$3(Lcom/ecareme/pixwe/media/GridLayer;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->swapFullscreenLabel()V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer$3;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/GridLayer;->access$3(Lcom/ecareme/pixwe/media/GridLayer;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    .line 335
    return-void
.end method
