.class Lcom/ecareme/pixwe/media/HudLayer$43;
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
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$43;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 875
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$43;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$43;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v0, v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$6(Lcom/ecareme/pixwe/media/HudLayer;Z)V

    .line 877
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$43;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridLayer;->deselectOrCancelSelectMode()V

    .line 878
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$43;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->cancelSelection()V

    .line 879
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$43;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ecareme/pixwe/media/GridLayer;->setState(I)V

    .line 880
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$43;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    .line 884
    :goto_0
    return-void

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$43;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    goto :goto_0
.end method
