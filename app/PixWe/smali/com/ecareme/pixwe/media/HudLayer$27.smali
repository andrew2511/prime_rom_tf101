.class Lcom/ecareme/pixwe/media/HudLayer$27;
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
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$27;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 490
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$27;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$27;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer$27;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getCurrentSelectedSlot()I

    move-result v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/ecareme/pixwe/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 492
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$27;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v0

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->rotateSelectedItems(F)V

    .line 493
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$27;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/media/HudLayer$27;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getCurrentSelectedSlot()I

    move-result v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/ecareme/pixwe/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 497
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$27;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    goto :goto_0
.end method
