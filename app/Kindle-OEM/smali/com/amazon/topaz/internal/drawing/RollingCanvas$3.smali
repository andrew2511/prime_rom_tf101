.class Lcom/amazon/topaz/internal/drawing/RollingCanvas$3;
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
    .line 71
    iput-object p1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas$3;->this$0:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

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
    .line 74
    check-cast p2, Lcom/amazon/topaz/internal/book/Word;

    .end local p2
    invoke-virtual {p1, p2, p3}, Lcom/amazon/topaz/internal/drawing/Canvas;->drawMeta(Lcom/amazon/topaz/internal/book/Word;Lcom/amazon/system/drawing/Rectangle;)V

    .line 75
    return-void
.end method
