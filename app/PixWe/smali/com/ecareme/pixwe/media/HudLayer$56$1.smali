.class Lcom/ecareme/pixwe/media/HudLayer$56$1;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/HudLayer$56;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecareme/pixwe/media/HudLayer$56;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/HudLayer$56;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$56$1;->this$1:Lcom/ecareme/pixwe/media/HudLayer$56;

    .line 1377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$56$1;->this$1:Lcom/ecareme/pixwe/media/HudLayer$56;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/HudLayer$56;->access$0(Lcom/ecareme/pixwe/media/HudLayer$56;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridLayer;->deselectOrCancelSelectMode()V

    .line 1381
    iget-object v0, p0, Lcom/ecareme/pixwe/media/HudLayer$56$1;->this$1:Lcom/ecareme/pixwe/media/HudLayer$56;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/HudLayer$56;->access$0(Lcom/ecareme/pixwe/media/HudLayer$56;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->cancelSelection()V

    .line 1382
    return-void
.end method
