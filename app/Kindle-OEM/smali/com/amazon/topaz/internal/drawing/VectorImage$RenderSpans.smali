.class Lcom/amazon/topaz/internal/drawing/VectorImage$RenderSpans;
.super Ljava/lang/Object;
.source "VectorImage.java"

# interfaces
.implements Lcom/amazon/topaz/internal/drawing/FreeType$IRenderSpans;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/drawing/VectorImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderSpans"
.end annotation


# instance fields
.field private graphics:Lcom/amazon/system/drawing/GraphicsExtended;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/topaz/internal/drawing/VectorImage$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/VectorImage$RenderSpans;-><init>()V

    return-void
.end method


# virtual methods
.method public gray_spans(II[I[I[I)V
    .locals 6
    .parameter "y"
    .parameter "count"
    .parameter "spans_x"
    .parameter "spans_len"
    .parameter "spans_cover"

    .prologue
    .line 185
    iget-object v3, p0, Lcom/amazon/topaz/internal/drawing/VectorImage$RenderSpans;->graphics:Lcom/amazon/system/drawing/GraphicsExtended;

    invoke-interface {v3}, Lcom/amazon/system/drawing/GraphicsExtended;->getARGBColor()I

    move-result v1

    .line 187
    .local v1, savedColor:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 189
    aget v2, p3, v0

    .line 191
    .local v2, x:I
    iget-object v3, p0, Lcom/amazon/topaz/internal/drawing/VectorImage$RenderSpans;->graphics:Lcom/amazon/system/drawing/GraphicsExtended;

    aget v4, p5, v0

    shl-int/lit8 v4, v4, 0x18

    iget-object v5, p0, Lcom/amazon/topaz/internal/drawing/VectorImage$RenderSpans;->graphics:Lcom/amazon/system/drawing/GraphicsExtended;

    invoke-interface {v5}, Lcom/amazon/system/drawing/GraphicsExtended;->getColor()I

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/amazon/system/drawing/GraphicsExtended;->setARGBColor(I)V

    .line 192
    iget-object v3, p0, Lcom/amazon/topaz/internal/drawing/VectorImage$RenderSpans;->graphics:Lcom/amazon/system/drawing/GraphicsExtended;

    aget v4, p4, v0

    add-int/2addr v4, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v3, v2, p1, v4, p1}, Lcom/amazon/system/drawing/GraphicsExtended;->drawLine(IIII)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v2           #x:I
    :cond_0
    iget-object v3, p0, Lcom/amazon/topaz/internal/drawing/VectorImage$RenderSpans;->graphics:Lcom/amazon/system/drawing/GraphicsExtended;

    invoke-interface {v3, v1}, Lcom/amazon/system/drawing/GraphicsExtended;->setARGBColor(I)V

    .line 195
    return-void
.end method

.method public setGraphics(Lcom/amazon/system/drawing/GraphicsExtended;)V
    .locals 0
    .parameter "graphics"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/amazon/topaz/internal/drawing/VectorImage$RenderSpans;->graphics:Lcom/amazon/system/drawing/GraphicsExtended;

    .line 181
    return-void
.end method
