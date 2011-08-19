.class Lcom/amazon/topaz/internal/drawing/RollingCanvas$2;
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
    .line 63
    iput-object p1, p0, Lcom/amazon/topaz/internal/drawing/RollingCanvas$2;->this$0:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doRenderOperation(Lcom/amazon/topaz/internal/drawing/Canvas;Ljava/lang/Object;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 1
    .parameter "chunk"
    .parameter "data"
    .parameter "bChunkTarget"

    .prologue
    .line 66
    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Lcom/amazon/topaz/internal/drawing/Canvas;->drawMeta(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/drawing/Rectangle;)V

    .line 67
    return-void
.end method
