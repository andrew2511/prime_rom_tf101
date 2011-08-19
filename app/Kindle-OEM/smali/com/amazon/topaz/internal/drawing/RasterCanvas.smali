.class public Lcom/amazon/topaz/internal/drawing/RasterCanvas;
.super Lcom/amazon/topaz/internal/drawing/Canvas;
.source "RasterCanvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/drawing/RasterCanvas$MetaTarget;
    }
.end annotation


# instance fields
.field private buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

.field private debug_:Z

.field private dict_:Lcom/amazon/topaz/internal/binxml/Dictionary;

.field private mdqueue_:Ljava/util/ArrayList;

.field private showDebug_:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/binxml/Dictionary;)V
    .locals 1
    .parameter "dict"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/Canvas;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->dict_:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->debug_:Z

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->showDebug_:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->mdqueue_:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/internal/binxml/Dictionary;II)V
    .locals 1
    .parameter "dict"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 44
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;-><init>(Lcom/amazon/topaz/internal/binxml/Dictionary;III)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/internal/binxml/Dictionary;III)V
    .locals 0
    .parameter "dict"
    .parameter "width"
    .parameter "height"
    .parameter "format"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;-><init>(Lcom/amazon/topaz/internal/binxml/Dictionary;)V

    .line 40
    invoke-virtual {p0, p2, p3, p4}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->setSize(III)V

    .line 41
    return-void
.end method

.method private final shiftRect(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;
    .locals 6
    .parameter "rect"

    .prologue
    .line 223
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->getCoordShift()I

    move-result v2

    shr-int/2addr v1, v2

    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->getCoordShift()I

    move-result v3

    shr-int/2addr v2, v3

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->getCoordShift()I

    move-result v4

    shr-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iget v4, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->getCoordShift()I

    move-result v5

    shr-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getBufferedImage()Lcom/amazon/system/drawing/BufferedImageExtended;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->clear()V

    .line 116
    :cond_0
    return-void
.end method

.method public clearRect(Lcom/amazon/system/drawing/Rectangle;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getBufferedImage()Lcom/amazon/system/drawing/BufferedImageExtended;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->drawZoom(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->shiftRect(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    .line 122
    .local v0, rect:Lcom/amazon/system/drawing/Rectangle;
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {v1, v0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->clearRect(Lcom/amazon/system/drawing/Rectangle;)V

    .line 124
    .end local v0           #rect:Lcom/amazon/system/drawing/Rectangle;
    :cond_0
    return-void
.end method

.method public draw(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 2
    .parameter "color"
    .parameter "target"

    .prologue
    .line 202
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-nez v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->drawZoom(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object p2

    .line 204
    invoke-direct {p0, p2}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->shiftRect(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    .line 205
    .local v0, rect:Lcom/amazon/system/drawing/Rectangle;
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {v1, v0, p1}, Lcom/amazon/topaz/internal/drawing/WritableImage;->fill(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Color;)V

    goto :goto_0
.end method

.method public draw(Lcom/amazon/topaz/internal/book/IImage;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->drawZoom(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    .line 163
    new-instance v1, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->getCoordShift()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;I)V

    .line 164
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->color:Lcom/amazon/system/drawing/Color;

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/topaz/internal/book/IImage;->draw(Lcom/amazon/topaz/internal/drawing/WritableImage;Lcom/amazon/topaz/internal/drawing/ScaledRectangle;Lcom/amazon/system/drawing/Color;)Lcom/amazon/system/drawing/Rectangle;

    goto :goto_0
.end method

.method public drawMeta(Lcom/amazon/topaz/internal/book/Word;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->debug_:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->CANVAS_TYPE_WORD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->showDebug(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->dict_:Lcom/amazon/topaz/internal/binxml/Dictionary;

    invoke-virtual {p1, v1}, Lcom/amazon/topaz/internal/book/Word;->getAltText(Lcom/amazon/topaz/internal/binxml/Dictionary;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    :goto_0
    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->CANVAS_TYPE_WORD:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p2}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->drawMeta(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/drawing/Rectangle;)V

    .line 199
    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    .line 196
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public drawMeta(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->debug_:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->showDebug(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0, p3}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->drawZoom(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    .line 171
    const/16 v1, 0x303b

    .line 172
    const/4 v2, 0x0

    move v5, v2

    move v2, v1

    move v1, v5

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    mul-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x1d

    add-int/2addr v2, v3

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_0
    new-instance v1, Lcom/amazon/system/drawing/Color;

    and-int/lit8 v3, v2, 0x7f

    div-int/lit8 v4, v2, 0x7

    and-int/lit8 v4, v4, 0x7f

    div-int/lit8 v2, v2, 0x13

    and-int/lit8 v2, v2, 0x7f

    invoke-direct {v1, v3, v4, v2}, Lcom/amazon/system/drawing/Color;-><init>(III)V

    .line 176
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->mdqueue_:Ljava/util/ArrayList;

    new-instance v3, Lcom/amazon/topaz/internal/drawing/RasterCanvas$MetaTarget;

    invoke-direct {v3, v1, v0}, Lcom/amazon/topaz/internal/drawing/RasterCanvas$MetaTarget;-><init>(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_1
    return-void
.end method

.method public getBuffer()Lcom/amazon/topaz/internal/drawing/WritableImage;
    .locals 9

    .prologue
    .line 94
    iget-object v5, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->mdqueue_:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 96
    iget-object v5, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {v5}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getGraphics()Lcom/amazon/system/drawing/GraphicsExtended;

    move-result-object v4

    .line 97
    .local v4, tpzGraphics:Lcom/amazon/system/drawing/GraphicsExtended;
    invoke-interface {v4}, Lcom/amazon/system/drawing/GraphicsExtended;->getARGBColor()I

    move-result v2

    .line 98
    .local v2, oldColor:I
    iget-object v5, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->mdqueue_:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 99
    .local v1, mdqueueIt:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/drawing/RasterCanvas$MetaTarget;

    .line 101
    .local v0, iter:Lcom/amazon/topaz/internal/drawing/RasterCanvas$MetaTarget;
    iget-object v5, v0, Lcom/amazon/topaz/internal/drawing/RasterCanvas$MetaTarget;->color:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v5}, Lcom/amazon/system/drawing/Color;->getRGB()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/amazon/system/drawing/GraphicsExtended;->setARGBColor(I)V

    .line 102
    iget-object v3, v0, Lcom/amazon/topaz/internal/drawing/RasterCanvas$MetaTarget;->rect:Lcom/amazon/system/drawing/Rectangle;

    .line 103
    .local v3, target:Lcom/amazon/system/drawing/Rectangle;
    iget v5, v3, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v6, v3, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v7, v3, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v8, v3, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/amazon/system/drawing/GraphicsExtended;->drawRect(IIII)V

    goto :goto_0

    .line 105
    .end local v0           #iter:Lcom/amazon/topaz/internal/drawing/RasterCanvas$MetaTarget;
    .end local v3           #target:Lcom/amazon/system/drawing/Rectangle;
    :cond_0
    iget-object v5, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->mdqueue_:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 106
    invoke-interface {v4, v2}, Lcom/amazon/system/drawing/GraphicsExtended;->setARGBColor(I)V

    .line 109
    .end local v1           #mdqueueIt:Ljava/util/Iterator;
    .end local v2           #oldColor:I
    .end local v4           #tpzGraphics:Lcom/amazon/system/drawing/GraphicsExtended;
    :cond_1
    iget-object v5, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    return-object v5
.end method

.method public getDebug()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->debug_:Z

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getBufferedImage()Lcom/amazon/system/drawing/BufferedImageExtended;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getHeight()I

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getBufferedImage()Lcom/amazon/system/drawing/BufferedImageExtended;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getWidth()I

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invert(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 2
    .parameter "color"
    .parameter "target"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-nez v1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->drawZoom(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object p2

    .line 211
    invoke-direct {p0, p2}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->shiftRect(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    .line 212
    .local v0, rect:Lcom/amazon/system/drawing/Rectangle;
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {v1, v0, p1}, Lcom/amazon/topaz/internal/drawing/WritableImage;->invert(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Color;)V

    goto :goto_0
.end method

.method public setBackgroundColor(Lcom/amazon/system/drawing/Color;)V
    .locals 2
    .parameter "backgroundColor"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/amazon/topaz/internal/drawing/Canvas;->setBackgroundColor(Lcom/amazon/system/drawing/Color;)V

    .line 90
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->backgroundColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/drawing/WritableImage;->setBackground(Lcom/amazon/system/drawing/Color;)V

    .line 91
    return-void
.end method

.method public setColor(Lcom/amazon/system/drawing/Color;)V
    .locals 2
    .parameter "color"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/amazon/topaz/internal/drawing/Canvas;->setColor(Lcom/amazon/system/drawing/Color;)V

    .line 84
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    iget v1, p1, Lcom/amazon/system/drawing/Color;->color:I

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/drawing/WritableImage;->setColor(I)V

    .line 85
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .parameter "d"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->debug_:Z

    .line 146
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getBufferedImage()Lcom/amazon/system/drawing/BufferedImageExtended;

    move-result-object v0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->setSize(III)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getFormat()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->setSize(III)V

    goto :goto_0
.end method

.method public setSize(III)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "format"

    .prologue
    const/4 v1, 0x5

    .line 57
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->setSubpixel(I)V

    .line 60
    if-ge p1, v1, :cond_0

    const/4 p1, 0x5

    .line 61
    :cond_0
    if-ge p2, v1, :cond_1

    const/4 p2, 0x5

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getBufferedImage()Lcom/amazon/system/drawing/BufferedImageExtended;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getFormat()I

    move-result v0

    if-ne p3, v0, :cond_2

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_2
    new-instance v0, Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/topaz/internal/drawing/WritableImage;-><init>(III)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    .line 72
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->color:Lcom/amazon/system/drawing/Color;

    iget v1, v1, Lcom/amazon/system/drawing/Color;->color:I

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/drawing/WritableImage;->setColor(I)V

    .line 73
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->backgroundColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/drawing/WritableImage;->setBackground(Lcom/amazon/system/drawing/Color;)V

    .line 74
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->clear()V

    goto :goto_0
.end method

.method public setSize(Lcom/amazon/system/drawing/Rectangle;)V
    .locals 2
    .parameter "rect"

    .prologue
    .line 78
    iget v0, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->setSize(II)V

    .line 79
    return-void
.end method

.method public shade(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 2
    .parameter "color"
    .parameter "target"

    .prologue
    .line 216
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-nez v1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->drawZoom(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object p2

    .line 218
    invoke-direct {p0, p2}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->shiftRect(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    .line 219
    .local v0, rect:Lcom/amazon/system/drawing/Rectangle;
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->buffer_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {v1, v0, p1}, Lcom/amazon/topaz/internal/drawing/WritableImage;->blend(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Color;)V

    goto :goto_0
.end method

.method public showDebug(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 149
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->showDebug_:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 150
    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->showDebug_:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 155
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
