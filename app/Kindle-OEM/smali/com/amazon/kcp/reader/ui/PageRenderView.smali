.class public Lcom/amazon/kcp/reader/ui/PageRenderView;
.super Landroid/view/View;
.source "PageRenderView.java"


# instance fields
.field private page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

.field private pageShift:I

.field private renderedEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private rightMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v0, p0, Lcom/amazon/kcp/reader/ui/PageRenderView;->pageShift:I

    .line 21
    iput v0, p0, Lcom/amazon/kcp/reader/ui/PageRenderView;->rightMargin:I

    .line 26
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/PageRenderView;->renderedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 36
    return-void
.end method


# virtual methods
.method public getPage()Lcom/amazon/kcp/reader/pages/internal/CReaderPage;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PageRenderView;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    return-object v0
.end method

.method public getPageShift()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/amazon/kcp/reader/ui/PageRenderView;->pageShift:I

    return v0
.end method

.method public getRenderedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PageRenderView;->renderedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/PageRenderView;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    if-eqz v1, :cond_0

    .line 116
    new-instance v0, Lcom/amazon/android/system/drawing/AndroidGraphics;

    invoke-direct {v0, p1}, Lcom/amazon/android/system/drawing/AndroidGraphics;-><init>(Landroid/graphics/Canvas;)V

    .line 117
    .local v0, graphics:Lcom/amazon/android/system/drawing/AndroidGraphics;
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/PageRenderView;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v1

    iget v2, p0, Lcom/amazon/kcp/reader/ui/PageRenderView;->pageShift:I

    invoke-interface {v1, v0, v2}, Lcom/amazon/kcp/reader/models/IBookDisplay;->render(Lcom/amazon/system/drawing/GraphicsExtended;I)V

    .line 119
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/PageRenderView;->renderedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 121
    .end local v0           #graphics:Lcom/amazon/android/system/drawing/AndroidGraphics;
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PageRenderView;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PageRenderView;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/reader/ui/PageRenderView;->rightMargin:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1, p2}, Lcom/amazon/kcp/reader/models/IBookDisplay;->setSize(II)V

    .line 109
    :cond_0
    return-void
.end method

.method public setPage(Lcom/amazon/kcp/reader/pages/internal/CReaderPage;)V
    .locals 3
    .parameter "page"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/PageRenderView;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PageRenderView;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PageRenderView;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/amazon/kcp/reader/ui/PageRenderView;->rightMargin:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/reader/models/IBookDisplay;->setSize(II)V

    .line 60
    :cond_0
    return-void
.end method

.method public setPageShift(I)V
    .locals 0
    .parameter "shift"

    .prologue
    .line 87
    iput p1, p0, Lcom/amazon/kcp/reader/ui/PageRenderView;->pageShift:I

    .line 88
    return-void
.end method

.method public setRightMargin(I)V
    .locals 0
    .parameter "rightMargin"

    .prologue
    .line 98
    iput p1, p0, Lcom/amazon/kcp/reader/ui/PageRenderView;->rightMargin:I

    .line 99
    return-void
.end method
