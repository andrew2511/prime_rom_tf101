.class Lcom/ecareme/pixwe/media/HudLayer$57;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V
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
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$57;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    .line 1740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$57;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/HudLayer;->access$3(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/RenderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$57;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/HudLayer;->access$3(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/RenderView;->requestRender()V

    .line 1745
    :cond_0
    return-void
.end method
