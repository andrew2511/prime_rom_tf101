.class Lcom/amazon/topaz/RenderSegment;
.super Ljava/lang/Object;
.source "RenderSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/RenderSegment$Discarder;,
        Lcom/amazon/topaz/RenderSegment$LayoutCallback;
    }
.end annotation


# instance fields
.field private bRenderedHeight:I

.field private bRenderedTopY:I

.field private canvas:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

.field private containsBeginning:Z

.field private containsEnd:Z

.field private final context:Lcom/amazon/topaz/RenderContext;

.field private final debugFirstID:I

.field private final engine:Lcom/amazon/topaz/internal/layout/LayoutEngine;

.field private final layoutDataDiscarder:Lcom/amazon/topaz/RenderSegment$Discarder;

.field private final lines:Ljava/util/List;

.field private final reflowFriendly:Z

.field private final renderDataDiscarder:Lcom/amazon/topaz/RenderSegment$Discarder;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/RenderContext;IIZ)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/amazon/topaz/RenderSegment$1;

    invoke-direct {v0, p0}, Lcom/amazon/topaz/RenderSegment$1;-><init>(Lcom/amazon/topaz/RenderSegment;)V

    iput-object v0, p0, Lcom/amazon/topaz/RenderSegment;->renderDataDiscarder:Lcom/amazon/topaz/RenderSegment$Discarder;

    .line 66
    new-instance v0, Lcom/amazon/topaz/RenderSegment$2;

    invoke-direct {v0, p0}, Lcom/amazon/topaz/RenderSegment$2;-><init>(Lcom/amazon/topaz/RenderSegment;)V

    iput-object v0, p0, Lcom/amazon/topaz/RenderSegment;->layoutDataDiscarder:Lcom/amazon/topaz/RenderSegment$Discarder;

    .line 126
    iput-object p1, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    .line 129
    if-gez p2, :cond_4

    .line 131
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v0, v0, Lcom/amazon/topaz/RenderContext;->renderer:Lcom/amazon/topaz/Renderer;

    iget-object v0, v0, Lcom/amazon/topaz/Renderer;->book:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v0, p3}, Lcom/amazon/topaz/TPZBook;->pageForID(I)I

    move-result v0

    .line 134
    :goto_0
    iput-boolean p4, p0, Lcom/amazon/topaz/RenderSegment;->reflowFriendly:Z

    .line 135
    iget-boolean v1, p0, Lcom/amazon/topaz/RenderSegment;->reflowFriendly:Z

    if-eqz v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    invoke-virtual {v1, v0, p3}, Lcom/amazon/topaz/RenderContext;->findStartOfParagraph(II)Lcom/amazon/topaz/internal/book/Container;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    invoke-virtual {v1, v0}, Lcom/amazon/topaz/RenderContext;->findStartOfPage(Lcom/amazon/topaz/internal/book/Container;)Lcom/amazon/topaz/internal/book/Container;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Container;->pageNum()I

    move-result v1

    .line 143
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Container;->firstID()I

    move-result v0

    move v2, v0

    move v0, v1

    .line 146
    :goto_1
    iget-object v1, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v1, v1, Lcom/amazon/topaz/RenderContext;->popupItems:Ljava/util/List;

    if-nez v1, :cond_0

    .line 148
    new-instance v1, Lcom/amazon/topaz/internal/book/PageIterator;

    iget-object v3, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v3, v3, Lcom/amazon/topaz/RenderContext;->renderer:Lcom/amazon/topaz/Renderer;

    iget-object v3, v3, Lcom/amazon/topaz/Renderer;->book:Lcom/amazon/topaz/TPZBook;

    invoke-direct {v1, v3, v0}, Lcom/amazon/topaz/internal/book/PageIterator;-><init>(Lcom/amazon/topaz/TPZBook;I)V

    .line 154
    :goto_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Container;->firstID()I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/RenderSegment;->debugFirstID:I

    .line 157
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 164
    :goto_3
    new-instance v0, Lcom/amazon/topaz/internal/layout/LayoutEngine;

    iget-object v3, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v3, v3, Lcom/amazon/topaz/RenderContext;->zoomFactor:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    iget-object v4, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v4, v4, Lcom/amazon/topaz/RenderContext;->session:Lcom/amazon/topaz/internal/Session;

    iget v4, v4, Lcom/amazon/topaz/internal/Session;->width:I

    invoke-virtual {v3, v4}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenToBook(I)I

    move-result v3

    iget-object v4, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v4, v4, Lcom/amazon/topaz/RenderContext;->zoomFactor:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    iget-object v5, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v5, v5, Lcom/amazon/topaz/RenderContext;->session:Lcom/amazon/topaz/internal/Session;

    iget v5, v5, Lcom/amazon/topaz/internal/Session;->height:I

    invoke-virtual {v4, v5}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenToBook(I)I

    move-result v4

    iget-object v5, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v5, v5, Lcom/amazon/topaz/RenderContext;->renderer:Lcom/amazon/topaz/Renderer;

    iget-object v5, v5, Lcom/amazon/topaz/Renderer;->styleSheet:Lcom/amazon/topaz/styles/StyleSheet;

    iget-object v6, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v6, v6, Lcom/amazon/topaz/RenderContext;->session:Lcom/amazon/topaz/internal/Session;

    iget-object v7, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v7, v7, Lcom/amazon/topaz/RenderContext;->popupItems:Ljava/util/List;

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_4
    iget-object v8, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget v8, v8, Lcom/amazon/topaz/RenderContext;->bMarginL:I

    iget-object v9, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget v9, v9, Lcom/amazon/topaz/RenderContext;->bMarginR:I

    invoke-direct/range {v0 .. v9}, Lcom/amazon/topaz/internal/layout/LayoutEngine;-><init>(Ljava/util/ListIterator;IIILcom/amazon/topaz/styles/StyleSheet;Lcom/amazon/topaz/internal/Session;ZII)V

    iput-object v0, p0, Lcom/amazon/topaz/RenderSegment;->engine:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/RenderSegment;->lines:Ljava/util/List;

    .line 174
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v0, v0, Lcom/amazon/topaz/RenderContext;->popupItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 161
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/topaz/RenderSegment;->debugFirstID:I

    goto :goto_3

    .line 164
    :cond_2
    const/4 v7, 0x0

    goto :goto_4

    :cond_3
    move v2, p3

    goto :goto_1

    :cond_4
    move v0, p2

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/amazon/topaz/RenderSegment;)Lcom/amazon/topaz/internal/drawing/RollingCanvas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->canvas:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/topaz/RenderSegment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedTopY:I

    return v0
.end method

.method static synthetic access$112(Lcom/amazon/topaz/RenderSegment;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iget v0, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedTopY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedTopY:I

    return v0
.end method

.method static synthetic access$200(Lcom/amazon/topaz/RenderSegment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedHeight:I

    return v0
.end method

.method static synthetic access$220(Lcom/amazon/topaz/RenderSegment;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iget v0, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedHeight:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/amazon/topaz/RenderSegment;)Lcom/amazon/topaz/internal/layout/LayoutEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->engine:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/topaz/RenderSegment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->lines:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/amazon/topaz/RenderSegment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/amazon/topaz/RenderSegment;->containsEnd:Z

    return p1
.end method

.method private discardDataOutside(IILcom/amazon/topaz/RenderSegment$Discarder;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 239
    .line 241
    const/high16 v0, -0x8000

    .line 242
    const v1, 0x7fffffff

    .line 244
    if-ltz p1, :cond_3

    .line 246
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v0

    .line 247
    if-lez p1, :cond_0

    .line 249
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v2

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discarding data for locations "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopY()I

    move-result v2

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopMargin()I

    move-result v3

    sub-int/2addr v2, v3

    move v7, v2

    move-object v2, v0

    move v0, v7

    .line 256
    :goto_0
    if-ltz p2, :cond_2

    .line 258
    invoke-virtual {p0, p2}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v1

    .line 260
    invoke-virtual {p0}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v3

    sub-int/2addr v3, v5

    if-ge p2, v3, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getEndID()I

    move-result v3

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discarding data for locations "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getEndID()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getBottomY()I

    move-result v3

    move v7, v3

    move-object v3, v1

    move v1, v7

    .line 269
    :goto_1
    invoke-interface {p3, v2, v0, v3, v1}, Lcom/amazon/topaz/RenderSegment$Discarder;->discardData(Lcom/amazon/topaz/internal/layout/LayoutLine;ILcom/amazon/topaz/internal/layout/LayoutLine;I)V

    .line 270
    return-void

    :cond_2
    move-object v3, v6

    goto :goto_1

    :cond_3
    move-object v2, v6

    goto :goto_0
.end method

.method private initCanvas()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 453
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->canvas:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    iget-object v1, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v1, v1, Lcom/amazon/topaz/RenderContext;->renderer:Lcom/amazon/topaz/Renderer;

    iget-object v1, v1, Lcom/amazon/topaz/Renderer;->book:Lcom/amazon/topaz/TPZBook;

    iget-object v1, v1, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget-object v2, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v2, v2, Lcom/amazon/topaz/RenderContext;->session:Lcom/amazon/topaz/internal/Session;

    iget v2, v2, Lcom/amazon/topaz/internal/Session;->width:I

    iget-object v3, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v3, v3, Lcom/amazon/topaz/RenderContext;->session:Lcom/amazon/topaz/internal/Session;

    iget v3, v3, Lcom/amazon/topaz/internal/Session;->height:I

    iget-object v4, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v4, v4, Lcom/amazon/topaz/RenderContext;->renderer:Lcom/amazon/topaz/Renderer;

    iget v4, v4, Lcom/amazon/topaz/Renderer;->format:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;-><init>(Lcom/amazon/topaz/internal/binxml/Dictionary;III)V

    iput-object v0, p0, Lcom/amazon/topaz/RenderSegment;->canvas:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    .line 457
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->canvas:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    iget-object v1, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v1, v1, Lcom/amazon/topaz/RenderContext;->session:Lcom/amazon/topaz/internal/Session;

    iget-object v1, v1, Lcom/amazon/topaz/internal/Session;->textColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->setColor(Lcom/amazon/system/drawing/Color;)V

    .line 458
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->canvas:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    iget-object v1, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v1, v1, Lcom/amazon/topaz/RenderContext;->session:Lcom/amazon/topaz/internal/Session;

    iget-object v1, v1, Lcom/amazon/topaz/internal/Session;->backgroundColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->setBackgroundColor(Lcom/amazon/system/drawing/Color;)V

    .line 459
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->canvas:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    iget-object v1, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v1, v1, Lcom/amazon/topaz/RenderContext;->zoomFactor:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->setZoomFactor(Lcom/amazon/topaz/internal/layout/ZoomFactor;)V

    .line 460
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->canvas:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->clear()V

    .line 461
    iput v5, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedTopY:I

    .line 462
    iput v5, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedHeight:I

    .line 464
    :cond_0
    return-void
.end method


# virtual methods
.method public append(Lcom/amazon/topaz/RenderSegment;ILcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 468
    invoke-virtual {p0}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    .line 515
    :goto_0
    return v0

    .line 474
    :cond_1
    invoke-virtual {p1, v4}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    .line 477
    if-gez p2, :cond_5

    .line 479
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v0

    sub-int/2addr v0, v5

    .line 481
    :goto_1
    invoke-virtual {p1, v0}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v0

    .line 482
    iget-object v1, p0, Lcom/amazon/topaz/RenderSegment;->engine:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    iget-object v2, p1, Lcom/amazon/topaz/RenderSegment;->engine:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/LayoutEngine;->getRootBlock()Lcom/amazon/topaz/internal/layout/Block;

    move-result-object v2

    new-instance v3, Lcom/amazon/topaz/RenderSegment$4;

    invoke-direct {v3, p0, v0}, Lcom/amazon/topaz/RenderSegment$4;-><init>(Lcom/amazon/topaz/RenderSegment;Lcom/amazon/topaz/internal/layout/LayoutLine;)V

    invoke-virtual {v1, v2, p3, v3}, Lcom/amazon/topaz/internal/layout/LayoutEngine;->append(Lcom/amazon/topaz/internal/layout/Block;Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;)V

    .line 496
    invoke-virtual {p0}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {p0, v1}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v1

    .line 498
    if-eq v1, v0, :cond_3

    .line 511
    :cond_2
    :goto_2
    if-ne v1, v0, :cond_4

    move v0, v5

    goto :goto_0

    .line 503
    :cond_3
    iget-object v2, p0, Lcom/amazon/topaz/RenderSegment;->canvas:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    if-nez v2, :cond_2

    .line 506
    iget-object v2, p1, Lcom/amazon/topaz/RenderSegment;->canvas:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    iput-object v2, p0, Lcom/amazon/topaz/RenderSegment;->canvas:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    .line 507
    iget v2, p1, Lcom/amazon/topaz/RenderSegment;->bRenderedTopY:I

    iput v2, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedTopY:I

    .line 508
    iget v2, p1, Lcom/amazon/topaz/RenderSegment;->bRenderedHeight:I

    iput v2, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 515
    :catchall_0
    move-exception v0

    throw v0

    :cond_4
    move v0, v4

    .line 511
    goto :goto_0

    :cond_5
    move v0, p2

    goto :goto_1
.end method

.method public containsBeginning()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/amazon/topaz/RenderSegment;->containsBeginning:Z

    return v0
.end method

.method public containsEnd()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/amazon/topaz/RenderSegment;->containsEnd:Z

    return v0
.end method

.method public containsLocation(I)Z
    .locals 4
    .parameter "location"

    .prologue
    const/4 v3, 0x0

    .line 193
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/amazon/topaz/RenderSegment;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 195
    iget-object v2, p0, Lcom/amazon/topaz/RenderSegment;->lines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 196
    .local v1, line:Lcom/amazon/topaz/internal/layout/LayoutLine;
    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v2

    if-ge p1, v2, :cond_0

    move v2, v3

    .line 206
    .end local v1           #line:Lcom/amazon/topaz/internal/layout/LayoutLine;
    :goto_1
    return v2

    .line 200
    .restart local v1       #line:Lcom/amazon/topaz/internal/layout/LayoutLine;
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getEndID()I

    move-result v2

    if-gt p1, v2, :cond_1

    .line 202
    const/4 v2, 0x1

    goto :goto_1

    .line 193
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #line:Lcom/amazon/topaz/internal/layout/LayoutLine;
    :cond_2
    move v2, v3

    .line 206
    goto :goto_1
.end method

.method public discardLayoutDataOutside(II)V
    .locals 1
    .parameter "firstIndex"
    .parameter "lastIndex"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->layoutDataDiscarder:Lcom/amazon/topaz/RenderSegment$Discarder;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/topaz/RenderSegment;->discardDataOutside(IILcom/amazon/topaz/RenderSegment$Discarder;)V

    .line 235
    return-void
.end method

.method public discardRenderDataOutside(II)V
    .locals 1
    .parameter "firstIndex"
    .parameter "lastIndex"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->renderDataDiscarder:Lcom/amazon/topaz/RenderSegment$Discarder;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/topaz/RenderSegment;->discardDataOutside(IILcom/amazon/topaz/RenderSegment$Discarder;)V

    .line 230
    return-void
.end method

.method public findLineForID(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 289
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/amazon/topaz/RenderSegment;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 291
    iget-object v2, p0, Lcom/amazon/topaz/RenderSegment;->lines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 292
    .local v1, line:Lcom/amazon/topaz/internal/layout/LayoutLine;
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 294
    const/4 v2, 0x1

    sub-int v2, v0, v2

    .line 302
    .end local v1           #line:Lcom/amazon/topaz/internal/layout/LayoutLine;
    :goto_1
    return v2

    .line 296
    .restart local v1       #line:Lcom/amazon/topaz/internal/layout/LayoutLine;
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getEndID()I

    move-result v2

    if-gt p1, v2, :cond_1

    move v2, v0

    .line 298
    goto :goto_1

    .line 289
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    .end local v1           #line:Lcom/amazon/topaz/internal/layout/LayoutLine;
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;
    .locals 1
    .parameter "index"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/internal/layout/LayoutLine;

    return-object p0
.end method

.method public getLineForID(I)Lcom/amazon/topaz/internal/layout/LayoutLine;
    .locals 2
    .parameter "id"

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/RenderSegment;->findLineForID(I)I

    move-result v0

    .line 309
    .local v0, index:I
    if-gez v0, :cond_0

    .line 311
    const/4 v1, 0x0

    .line 314
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v1

    goto :goto_0
.end method

.method public getLineForYCoordinate(I)Lcom/amazon/topaz/internal/layout/LayoutLine;
    .locals 5
    .parameter "coordinate"

    .prologue
    const/4 v4, 0x0

    .line 211
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/amazon/topaz/RenderSegment;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 213
    iget-object v2, p0, Lcom/amazon/topaz/RenderSegment;->lines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 214
    .local v1, line:Lcom/amazon/topaz/internal/layout/LayoutLine;
    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopY()I

    move-result v2

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopMargin()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge p1, v2, :cond_0

    move-object v2, v4

    .line 224
    .end local v1           #line:Lcom/amazon/topaz/internal/layout/LayoutLine;
    :goto_1
    return-object v2

    .line 218
    .restart local v1       #line:Lcom/amazon/topaz/internal/layout/LayoutLine;
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getBottomY()I

    move-result v2

    if-ge p1, v2, :cond_1

    move-object v2, v1

    .line 220
    goto :goto_1

    .line 211
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #line:Lcom/amazon/topaz/internal/layout/LayoutLine;
    :cond_2
    move-object v2, v4

    .line 224
    goto :goto_1
.end method

.method public getWholeBuffer()Lcom/amazon/system/drawing/BufferedImageExtended;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 531
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->engine:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->lines:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 534
    iget-object v1, p0, Lcom/amazon/topaz/RenderSegment;->lines:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/topaz/RenderSegment;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 535
    iget-object v2, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v2, v2, Lcom/amazon/topaz/RenderContext;->zoomFactor:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getBottomY()I

    move-result v1

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopY()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopMargin()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->bookToScreen(I)I

    move-result v1

    .line 536
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopY()I

    move-result v2

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopMargin()I

    move-result v3

    sub-int/2addr v2, v3

    new-instance v3, Lcom/amazon/foundation/internal/SimpleCanceler;

    invoke-direct {v3}, Lcom/amazon/foundation/internal/SimpleCanceler;-><init>()V

    invoke-virtual {p0, v2, v1, v3}, Lcom/amazon/topaz/RenderSegment;->preRender(IILcom/amazon/foundation/internal/ICancelRequester;)Z

    .line 538
    new-instance v2, Lcom/amazon/topaz/internal/drawing/WritableImage;

    iget-object v3, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v3, v3, Lcom/amazon/topaz/RenderContext;->session:Lcom/amazon/topaz/internal/Session;

    iget v3, v3, Lcom/amazon/topaz/internal/Session;->width:I

    invoke-direct {v2, v3, v1, v4}, Lcom/amazon/topaz/internal/drawing/WritableImage;-><init>(III)V

    .line 539
    iget-object v3, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v3, v3, Lcom/amazon/topaz/RenderContext;->session:Lcom/amazon/topaz/internal/Session;

    iget-object v3, v3, Lcom/amazon/topaz/internal/Session;->textColor:Lcom/amazon/system/drawing/Color;

    iget v3, v3, Lcom/amazon/system/drawing/Color;->color:I

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/drawing/WritableImage;->setColor(I)V

    .line 540
    iget-object v3, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v3, v3, Lcom/amazon/topaz/RenderContext;->session:Lcom/amazon/topaz/internal/Session;

    iget-object v3, v3, Lcom/amazon/topaz/internal/Session;->backgroundColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/drawing/WritableImage;->setBackground(Lcom/amazon/system/drawing/Color;)V

    .line 541
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/drawing/WritableImage;->clear()V

    .line 542
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getBufferedImage()Lcom/amazon/system/drawing/BufferedImageExtended;

    move-result-object v2

    .line 543
    iget-object v3, p0, Lcom/amazon/topaz/RenderSegment;->canvas:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    invoke-interface {v2}, Lcom/amazon/system/drawing/BufferedImageExtended;->createGraphics()Lcom/amazon/system/drawing/GraphicsExtended;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/topaz/RenderSegment;->canvas:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopY()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->bookToScreen(I)I

    move-result v0

    invoke-virtual {v3, v4, v0, v1, v6}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->draw(Lcom/amazon/system/drawing/GraphicsExtended;III)V

    move-object v0, v2

    .line 548
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReflowFriendly()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/amazon/topaz/RenderSegment;->reflowFriendly:Z

    return v0
.end method

.method public layout(Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/RenderSegment$LayoutCallback;)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 319
    iget-boolean v0, p0, Lcom/amazon/topaz/RenderSegment;->containsEnd:Z

    if-eqz v0, :cond_0

    move v0, v4

    .line 360
    :goto_0
    return v0

    .line 324
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amazon/foundation/internal/ListeningCanceler;

    new-instance v1, Lcom/amazon/foundation/internal/SimpleCanceler;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/SimpleCanceler;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/amazon/foundation/internal/ListeningCanceler;-><init>(Lcom/amazon/foundation/internal/ICanceler;Lcom/amazon/foundation/internal/ICancelRequester;)V

    .line 329
    iget-object v1, p0, Lcom/amazon/topaz/RenderSegment;->lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 331
    iget-object v2, p0, Lcom/amazon/topaz/RenderSegment;->engine:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    new-instance v3, Lcom/amazon/topaz/RenderSegment$3;

    invoke-direct {v3, p0, p2, v0}, Lcom/amazon/topaz/RenderSegment$3;-><init>(Lcom/amazon/topaz/RenderSegment;Lcom/amazon/topaz/RenderSegment$LayoutCallback;Lcom/amazon/foundation/internal/ICanceler;)V

    invoke-virtual {v2, v0, v3}, Lcom/amazon/topaz/internal/layout/LayoutEngine;->reflow(Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;)V

    .line 350
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 351
    if-eq v1, v0, :cond_1

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TOPAZ RENDER SEGMENT: Laid out locations "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getEndID()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    :cond_1
    invoke-interface {p1}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public markAsBeginning()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/topaz/RenderSegment;->containsBeginning:Z

    .line 179
    return-void
.end method

.method public numLines()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public preRender(IILcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 376
    iget v0, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedTopY:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedTopY:I

    iget v1, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedHeight:I

    add-int/2addr v0, v1

    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    move v0, v6

    .line 447
    :goto_0
    return v0

    .line 382
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/topaz/RenderSegment;->initCanvas()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :try_start_1
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->engine:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutEngine;->getRootBlock()Lcom/amazon/topaz/internal/layout/Block;

    move-result-object v0

    .line 396
    iget v1, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedHeight:I

    if-nez v1, :cond_1

    .line 398
    iput p1, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedTopY:I

    .line 401
    :cond_1
    new-instance v1, Lcom/amazon/system/drawing/Rectangle;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 402
    iget v2, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedTopY:I

    if-ge p1, v2, :cond_3

    .line 404
    iget v2, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedTopY:I

    sub-int/2addr v2, p1

    iput v2, v1, Lcom/amazon/system/drawing/Rectangle;->height:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 405
    :try_start_2
    iget-object v2, p0, Lcom/amazon/topaz/RenderSegment;->canvas:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    iget-object v3, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v3, v3, Lcom/amazon/topaz/RenderContext;->markerArrow:Lcom/amazon/topaz/internal/book/Drawable;

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/amazon/topaz/internal/layout/Block;->draw(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/topaz/internal/drawing/Canvas;Lcom/amazon/topaz/internal/book/Drawable;Lcom/amazon/foundation/internal/ICancelRequester;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    if-nez v2, :cond_2

    move v0, v5

    .line 415
    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 447
    :catchall_1
    move-exception v0

    throw v0

    .line 415
    :catchall_2
    move-exception v0

    :try_start_4
    throw v0

    .line 417
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TOPAZ RENDER SEGMENT: Rendered y coordinates "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 418
    iget v2, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedHeight:I

    iget v3, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedHeight:I

    .line 419
    iget v2, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedTopY:I

    iget v3, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedTopY:I

    .line 422
    :cond_3
    iget v2, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedTopY:I

    iget v3, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedHeight:I

    add-int/2addr v2, v3

    .line 423
    add-int v3, p1, p2

    if-ge v2, v3, :cond_5

    .line 425
    iput v2, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 426
    add-int v3, p1, p2

    sub-int/2addr v3, v2

    iput v3, v1, Lcom/amazon/system/drawing/Rectangle;->height:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 427
    :try_start_5
    iget-object v3, p0, Lcom/amazon/topaz/RenderSegment;->canvas:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    iget-object v4, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v4, v4, Lcom/amazon/topaz/RenderContext;->markerArrow:Lcom/amazon/topaz/internal/book/Drawable;

    invoke-virtual {v0, v1, v3, v4, p3}, Lcom/amazon/topaz/internal/layout/Block;->draw(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/topaz/internal/drawing/Canvas;Lcom/amazon/topaz/internal/book/Drawable;Lcom/amazon/foundation/internal/ICancelRequester;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result v0

    if-nez v0, :cond_4

    move v0, v5

    .line 437
    goto :goto_0

    :catchall_3
    move-exception v0

    :try_start_6
    throw v0

    .line 439
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TOPAZ RENDER SEGMENT: Rendered y coordinates "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 440
    iget v0, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedHeight:I

    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedHeight:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_5
    move v0, v6

    .line 447
    goto/16 :goto_0
.end method

.method public render(IILcom/amazon/system/drawing/GraphicsExtended;ILcom/amazon/foundation/internal/ICancelRequester;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    invoke-virtual {p0, p1, p2, p5}, Lcom/amazon/topaz/RenderSegment;->preRender(IILcom/amazon/foundation/internal/ICancelRequester;)Z

    .line 368
    invoke-interface {p5}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->canvas:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    iget-object v1, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v1, v1, Lcom/amazon/topaz/RenderContext;->zoomFactor:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    invoke-virtual {v1, p1}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->bookToScreen(I)I

    move-result v1

    iget-object v2, p0, Lcom/amazon/topaz/RenderSegment;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v2, v2, Lcom/amazon/topaz/RenderContext;->zoomFactor:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    invoke-virtual {v2, p2}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->bookToScreen(I)I

    move-result v2

    invoke-virtual {v0, p3, v1, v2, p4}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->draw(Lcom/amazon/system/drawing/GraphicsExtended;III)V

    .line 372
    :cond_0
    return-void
.end method

.method public shiftCoordinates(I)V
    .locals 1
    .parameter "deltaY"

    .prologue
    .line 521
    iget v0, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedTopY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/topaz/RenderSegment;->bRenderedTopY:I

    .line 522
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->engine:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutEngine;->getRootBlock()Lcom/amazon/topaz/internal/layout/Block;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/layout/Block;->shiftCoordinates(I)V

    .line 523
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->canvas:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment;->canvas:Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->shiftCoordinates(I)V

    .line 527
    :cond_0
    return-void
.end method
