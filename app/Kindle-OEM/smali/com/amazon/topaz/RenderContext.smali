.class public Lcom/amazon/topaz/RenderContext;
.super Ljava/lang/Object;
.source "RenderContext.java"


# instance fields
.field public final bMarginL:I

.field public final bMarginR:I

.field public final markerArrow:Lcom/amazon/topaz/internal/book/Drawable;

.field public final popupItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field public final renderer:Lcom/amazon/topaz/Renderer;

.field public final session:Lcom/amazon/topaz/internal/Session;

.field public final zoomFactor:Lcom/amazon/topaz/internal/layout/ZoomFactor;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/Renderer;Ljava/util/List;Lcom/amazon/topaz/internal/Session;III)V
    .locals 3
    .parameter "renderer"
    .parameter
    .parameter "session"
    .parameter "screenDPI"
    .parameter "sMarginL"
    .parameter "sMarginR"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/topaz/Renderer;",
            "Ljava/util/List",
            "<*>;",
            "Lcom/amazon/topaz/internal/Session;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, popupItems:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/topaz/RenderContext;->renderer:Lcom/amazon/topaz/Renderer;

    .line 35
    iput-object p2, p0, Lcom/amazon/topaz/RenderContext;->popupItems:Ljava/util/List;

    .line 36
    iput-object p3, p0, Lcom/amazon/topaz/RenderContext;->session:Lcom/amazon/topaz/internal/Session;

    .line 37
    invoke-direct {p0, p4, p2}, Lcom/amazon/topaz/RenderContext;->computeZoomFactor(ILjava/util/List;)Lcom/amazon/topaz/internal/layout/ZoomFactor;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/RenderContext;->zoomFactor:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    .line 38
    iget-object v0, p0, Lcom/amazon/topaz/RenderContext;->zoomFactor:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    invoke-virtual {v0, p5}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenToBook(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/RenderContext;->bMarginL:I

    .line 39
    iget-object v0, p0, Lcom/amazon/topaz/RenderContext;->zoomFactor:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    invoke-virtual {v0, p6}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenToBook(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/RenderContext;->bMarginR:I

    .line 40
    iget-object v0, p0, Lcom/amazon/topaz/RenderContext;->session:Lcom/amazon/topaz/internal/Session;

    iget-object v1, p0, Lcom/amazon/topaz/RenderContext;->zoomFactor:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    iget-object v2, p0, Lcom/amazon/topaz/RenderContext;->session:Lcom/amazon/topaz/internal/Session;

    iget v2, v2, Lcom/amazon/topaz/internal/Session;->width:I

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenToBook(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/Session;->getMarkerIcon(I)Lcom/amazon/topaz/internal/book/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/RenderContext;->markerArrow:Lcom/amazon/topaz/internal/book/Drawable;

    .line 41
    return-void
.end method

.method private computeZoomFactor(ILjava/util/List;)Lcom/amazon/topaz/internal/layout/ZoomFactor;
    .locals 10
    .parameter "screenDPI"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;)",
            "Lcom/amazon/topaz/internal/layout/ZoomFactor;"
        }
    .end annotation

    .prologue
    .local p2, popupItems:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v9, 0x0

    .line 45
    iget-object v6, p0, Lcom/amazon/topaz/RenderContext;->renderer:Lcom/amazon/topaz/Renderer;

    iget-object v6, v6, Lcom/amazon/topaz/Renderer;->book:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v6}, Lcom/amazon/topaz/TPZBook;->getDPI()I

    move-result v0

    .line 46
    .local v0, bookDPI:I
    if-eqz p2, :cond_0

    .line 48
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {v6}, Lcom/amazon/topaz/internal/book/Container;->getStyleRule()Lcom/amazon/topaz/styles/MatchRule;

    move-result-object v6

    sget-object v7, Lcom/amazon/topaz/internal/TopazStrings;->MATCHRULEKEY_TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/amazon/topaz/styles/MatchRule;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, popupType:Ljava/lang/String;
    iget-object v6, p0, Lcom/amazon/topaz/RenderContext;->renderer:Lcom/amazon/topaz/Renderer;

    iget-object v6, v6, Lcom/amazon/topaz/Renderer;->book:Lcom/amazon/topaz/TPZBook;

    sget-object v7, Lcom/amazon/topaz/internal/TopazStrings;->METADATA_FONTSIZE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, fontSizeStr:Ljava/lang/String;
    iget-object v6, p0, Lcom/amazon/topaz/RenderContext;->renderer:Lcom/amazon/topaz/Renderer;

    iget-object v6, v6, Lcom/amazon/topaz/Renderer;->book:Lcom/amazon/topaz/TPZBook;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/amazon/topaz/internal/TopazStrings;->METADATA_POPUPSIZE_SUFFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, popSizeStr:Ljava/lang/String;
    sget-object v6, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v9

    .line 53
    .local v2, fontsize:I
    :goto_0
    sget-object v6, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v9

    .line 55
    .local v4, popsize:I
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 57
    mul-int/2addr p1, v2

    .line 58
    mul-int/2addr v0, v4

    .line 62
    .end local v1           #fontSizeStr:Ljava/lang/String;
    .end local v2           #fontsize:I
    .end local v3           #popSizeStr:Ljava/lang/String;
    .end local v4           #popsize:I
    .end local v5           #popupType:Ljava/lang/String;
    :cond_0
    new-instance v6, Lcom/amazon/topaz/internal/layout/ZoomFactor;

    invoke-direct {v6, p1, v0}, Lcom/amazon/topaz/internal/layout/ZoomFactor;-><init>(II)V

    return-object v6

    .line 52
    .restart local v1       #fontSizeStr:Ljava/lang/String;
    .restart local v3       #popSizeStr:Ljava/lang/String;
    .restart local v5       #popupType:Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    goto :goto_0

    .line 53
    .restart local v2       #fontsize:I
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v4, v6

    goto :goto_1
.end method

.method private getContainerForID(Lcom/amazon/topaz/internal/book/Page;I)Lcom/amazon/topaz/internal/book/Container;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Page;->lastID()I

    move-result v0

    move v1, p2

    .line 189
    :cond_0
    invoke-virtual {p1, v1}, Lcom/amazon/topaz/internal/book/Page;->getContainer(I)Lcom/amazon/topaz/internal/book/Container;

    move-result-object v2

    .line 190
    add-int/lit8 v1, v1, 0x1

    .line 192
    if-nez v2, :cond_1

    if-le v1, v0, :cond_0

    .line 194
    :cond_1
    return-object v2
.end method


# virtual methods
.method public createView(IIIIZ)Lcom/amazon/topaz/View;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    new-instance v0, Lcom/amazon/topaz/View;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/topaz/View;-><init>(Lcom/amazon/topaz/RenderContext;IIIIZ)V

    .line 70
    return-object v0
.end method

.method public findEarliestContainerInParagraph(IIZ)Lcom/amazon/topaz/internal/book/Container;
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
    .line 80
    if-gez p1, :cond_a

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/RenderContext;->renderer:Lcom/amazon/topaz/Renderer;

    iget-object v0, v0, Lcom/amazon/topaz/Renderer;->book:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v0, p2}, Lcom/amazon/topaz/TPZBook;->pageForID(I)I

    move-result v0

    .line 90
    :goto_0
    const/4 v1, -0x1

    move v5, v1

    move v1, v0

    move v0, v5

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/amazon/topaz/RenderContext;->renderer:Lcom/amazon/topaz/Renderer;

    iget-object v2, v2, Lcom/amazon/topaz/Renderer;->book:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v2, v1}, Lcom/amazon/topaz/TPZBook;->getPage(I)Lcom/amazon/topaz/internal/book/Page;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_2

    .line 99
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Page;->lastID()I

    move-result v0

    .line 100
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Page;->firstID()I

    move-result v3

    .line 101
    if-ltz v0, :cond_1

    if-ge p2, v3, :cond_2

    .line 105
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TOPAZ FIND PARAGRAPH: Reading previous page looking for ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    add-int/lit8 v1, v1, -0x1

    .line 110
    :cond_2
    if-eqz v2, :cond_3

    if-ltz v0, :cond_0

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Page;->firstID()I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 112
    :cond_3
    if-nez v2, :cond_5

    .line 115
    const/4 v0, 0x0

    .line 149
    :cond_4
    return-object v0

    .line 118
    :cond_5
    if-le p2, v0, :cond_9

    .line 123
    :goto_1
    invoke-virtual {v2, v0}, Lcom/amazon/topaz/internal/book/Page;->getContainer(I)Lcom/amazon/topaz/internal/book/Container;

    move-result-object v0

    .line 124
    :goto_2
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Container;->isContinuation()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 126
    if-nez p3, :cond_6

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Container;->continuesFrom()Lcom/amazon/topaz/internal/book/Container;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 131
    :cond_6
    :goto_3
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Container;->continuesFrom()Lcom/amazon/topaz/internal/book/Container;

    move-result-object v2

    if-nez v2, :cond_8

    .line 133
    :cond_7
    add-int/lit8 v1, v1, -0x1

    .line 137
    iget-object v2, p0, Lcom/amazon/topaz/RenderContext;->renderer:Lcom/amazon/topaz/Renderer;

    iget-object v2, v2, Lcom/amazon/topaz/Renderer;->book:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v2, v1}, Lcom/amazon/topaz/TPZBook;->getPage(I)Lcom/amazon/topaz/internal/book/Page;

    move-result-object v2

    .line 139
    if-eqz v2, :cond_7

    .line 140
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Page;->forceParaCont()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 149
    :catchall_0
    move-exception v0

    throw v0

    .line 142
    :cond_8
    :try_start_1
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Container;->continuesFrom()Lcom/amazon/topaz/internal/book/Container;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_2

    :cond_9
    move v0, p2

    goto :goto_1

    :cond_a
    move v0, p1

    goto :goto_0
.end method

.method public findStartOfPage(Lcom/amazon/topaz/internal/book/Container;)Lcom/amazon/topaz/internal/book/Container;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/amazon/topaz/RenderContext;->renderer:Lcom/amazon/topaz/Renderer;

    iget-object v0, v0, Lcom/amazon/topaz/Renderer;->book:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->pageNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/TPZBook;->getPage(I)Lcom/amazon/topaz/internal/book/Page;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Page;->firstID()I

    move-result v1

    .line 161
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/amazon/topaz/RenderContext;->getContainerForID(Lcom/amazon/topaz/internal/book/Page;I)Lcom/amazon/topaz/internal/book/Container;

    move-result-object v2

    .line 166
    if-eqz v2, :cond_1

    .line 168
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Container;->lastID()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 171
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Container;->isContinuation()Z

    move-result v3

    if-nez v3, :cond_0

    .line 173
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Container;->isContinuation()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move-object v0, p1

    .line 179
    :goto_0
    return-object v0

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method public findStartOfParagraph(II)Lcom/amazon/topaz/internal/book/Container;
    .locals 1
    .parameter "pageNum"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/topaz/RenderContext;->findEarliestContainerInParagraph(IIZ)Lcom/amazon/topaz/internal/book/Container;

    move-result-object v0

    return-object v0
.end method
