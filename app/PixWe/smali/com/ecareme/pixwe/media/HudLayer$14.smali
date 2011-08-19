.class Lcom/ecareme/pixwe/media/HudLayer$14;
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
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$14;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$14;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridLayer;->deselectOrCancelSelectMode()V

    .line 366
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$14;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->cancelSelection()V

    .line 367
    return-void
.end method
