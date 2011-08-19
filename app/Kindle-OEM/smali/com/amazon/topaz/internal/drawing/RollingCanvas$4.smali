.class Lcom/amazon/topaz/internal/drawing/RollingCanvas$4;
.super Ljava/lang/Object;
.source "RollingCanvas.java"

# interfaces
.implements Lcom/amazon/topaz/internal/drawing/RollingCanvas$RenderOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/drawing/RollingCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/topaz/internal/drawing/RollingCanvas;


# direct methods
.method constructor <init>(Lcom/amazon/topaz/internal/drawing/RollingCanvas;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas$4;->this$0:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doRenderOperation(Lcom/amazon/topaz/internal/drawing/Canvas;Ljava/lang/Object;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 0
    .parameter "chunk"
    .parameter "data"
    .parameter "bChunkTarget"

    .prologue
    .line 82
    check-cast p2, Lcom/amazon/system/drawing/Color;

    .end local p2
    invoke-virtual {p1, p2, p3}, Lcom/amazon/topaz/internal/drawing/Canvas;->draw(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V

    .line 83
    return-void
.end method
