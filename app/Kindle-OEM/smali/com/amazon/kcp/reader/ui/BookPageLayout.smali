.class public Lcom/amazon/kcp/reader/ui/BookPageLayout;
.super Lcom/amazon/kcp/reader/ui/PageLayout;
.source "BookPageLayout.java"


# instance fields
.field private bookmarkFrame:Lcom/amazon/kcp/reader/ui/BookmarkFrame;

.field private bookmarkView:Landroid/widget/ImageView;

.field private currentPageRenderComplete:Lcom/amazon/foundation/ICallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/PageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Lcom/amazon/kcp/reader/ui/BookPageLayout$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/BookPageLayout$1;-><init>(Lcom/amazon/kcp/reader/ui/BookPageLayout;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout;->currentPageRenderComplete:Lcom/amazon/foundation/ICallback;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/BookPageLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/BookPageLayout;->updateTitle()V

    return-void
.end method

.method private shouldShowBookmark()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getPageShift()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getPage()Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getAnnotationsManager()Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->hasBookmark()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookPageLayout;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    .line 123
    .local v0, titleView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getPage()Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method protected getTopMarginValue()I
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookPageLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected onColorModeUpdate()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->onColorModeUpdate()V

    .line 101
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout;->bookmarkFrame:Lcom/amazon/kcp/reader/ui/BookmarkFrame;

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout;->bookmarkFrame:Lcom/amazon/kcp/reader/ui/BookmarkFrame;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->updateColorMode(Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookPageLayout;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    .line 111
    .local v0, titleView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getSecondaryTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    :cond_0
    return-void

    .line 107
    .end local v0           #titleView:Landroid/widget/TextView;
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout;->bookmarkView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getBookmarkResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 82
    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BookPageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout;->bookmarkView:Landroid/widget/ImageView;

    .line 83
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BookPageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout;->bookmarkFrame:Lcom/amazon/kcp/reader/ui/BookmarkFrame;

    .line 85
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->onFinishInflate()V

    .line 89
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookPageLayout;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getRenderedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout;->currentPageRenderComplete:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 94
    :cond_0
    return-void
.end method

.method public setBookmarkOverlayVisibility(ZZ)Z
    .locals 1
    .parameter "visible"
    .parameter "animated"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout;->bookmarkFrame:Lcom/amazon/kcp/reader/ui/BookmarkFrame;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout;->bookmarkFrame:Lcom/amazon/kcp/reader/ui/BookmarkFrame;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->setOverlaysVisible(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public updateDisplay()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->updateDisplay()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 69
    :goto_0
    return v1

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/BookPageLayout;->shouldShowBookmark()Z

    move-result v0

    .line 60
    .local v0, showBookmark:Z
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout;->bookmarkFrame:Lcom/amazon/kcp/reader/ui/BookmarkFrame;

    if-nez v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout;->bookmarkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 62
    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout;->bookmarkFrame:Lcom/amazon/kcp/reader/ui/BookmarkFrame;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->showBookmark(Z)V

    goto :goto_2
.end method
