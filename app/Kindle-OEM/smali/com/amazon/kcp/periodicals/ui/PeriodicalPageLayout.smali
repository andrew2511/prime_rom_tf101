.class public Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;
.super Lcom/amazon/kcp/reader/ui/PageLayout;
.source "PeriodicalPageLayout.java"


# static fields
.field private static final SECTION_ARTICLE_TITLE_DIVIDER:Landroid/text/Spanned;


# instance fields
.field private currentPageRenderComplete:Lcom/amazon/foundation/ICallback;

.field private isPrevNextVisibility:Z

.field private menuitemArticles:Landroid/widget/Button;

.field private menuitemNextArticle:Landroid/widget/TextView;

.field private menuitemPrevArticle:Landroid/widget/TextView;

.field private periodicalHorizontalLine:Landroid/view/View;

.field private position:I

.field private prevNextAllArticles:Landroid/view/ViewGroup;

.field private topMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "&nbsp;&middot;&nbsp;"

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->SECTION_ARTICLE_TITLE_DIVIDER:Landroid/text/Spanned;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/PageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->isPrevNextVisibility:Z

    .line 39
    new-instance v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout$1;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->currentPageRenderComplete:Lcom/amazon/foundation/ICallback;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->updateTitleView()V

    return-void
.end method

.method private updateTitleView()V
    .locals 7

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->getPage()Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getTOC()Lcom/amazon/kcp/reader/models/IBookTOC;

    move-result-object v4

    .line 103
    .local v4, toc:Lcom/amazon/kcp/reader/models/IBookTOC;
    if-eqz v4, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->getPage()Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v6}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getPageShift()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getPageLastPosition(I)I

    move-result v1

    .line 107
    .local v1, currentPosition:I
    iget v5, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->position:I

    if-eq v5, v1, :cond_1

    .line 109
    iput v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->position:I

    .line 111
    iget-object v5, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getPageShift()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/amazon/kcp/reader/models/IBookTOC;->getArticleOnPage(I)Lcom/amazon/kcp/reader/models/IArticleTOCItem;

    move-result-object v0

    .line 114
    .local v0, article:Lcom/amazon/kcp/reader/models/IArticleTOCItem;
    if-eqz v0, :cond_2

    .line 116
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IArticleTOCItem;->getSection()Lcom/amazon/kcp/reader/models/ISectionTOCItem;

    move-result-object v2

    .line 123
    .local v2, section:Lcom/amazon/kcp/reader/models/ISectionTOCItem;
    :goto_0
    const-string v3, ""

    .line 125
    .local v3, title:Ljava/lang/String;
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 128
    iget-object v5, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getPageShift()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/amazon/kcp/reader/models/IBookTOC;->doesArticleStartOnPage(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 130
    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/ISectionTOCItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 145
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->getTitleView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .end local v0           #article:Lcom/amazon/kcp/reader/models/IArticleTOCItem;
    .end local v1           #currentPosition:I
    .end local v2           #section:Lcom/amazon/kcp/reader/models/ISectionTOCItem;
    .end local v3           #title:Ljava/lang/String;
    :cond_1
    return-void

    .line 120
    .restart local v0       #article:Lcom/amazon/kcp/reader/models/IArticleTOCItem;
    .restart local v1       #currentPosition:I
    :cond_2
    iget-object v5, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getPageShift()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/amazon/kcp/reader/models/IBookTOC;->getSectionOnPage(I)Lcom/amazon/kcp/reader/models/ISectionTOCItem;

    move-result-object v2

    .restart local v2       #section:Lcom/amazon/kcp/reader/models/ISectionTOCItem;
    goto :goto_0

    .line 134
    .restart local v3       #title:Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/ISectionTOCItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->SECTION_ARTICLE_TITLE_DIVIDER:Landroid/text/Spanned;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IArticleTOCItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 137
    :cond_4
    if-eqz v2, :cond_5

    .line 139
    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/ISectionTOCItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 141
    :cond_5
    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IArticleTOCItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method protected applyMargins()V
    .locals 4

    .prologue
    .line 174
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->applyMargins()V

    .line 176
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->prevNextAllArticles:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->getCalculatedHorizontalMargins()I

    move-result v0

    .line 179
    .local v0, horizontalMargin:I
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->prevNextAllArticles:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->topMargin:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 182
    .end local v0           #horizontalMargin:I
    :cond_0
    return-void
.end method

.method protected getTopMarginValue()I
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public isPrevNextVisibility()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->isPrevNextVisibility:Z

    return v0
.end method

.method protected onColorModeUpdate()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->onColorModeUpdate()V

    .line 79
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getSecondaryTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->prevNextAllArticles:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->periodicalHorizontalLine:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->menuitemPrevArticle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getSecondaryTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->menuitemArticles:Landroid/widget/Button;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getSecondaryTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->menuitemNextArticle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getSecondaryTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->periodicalHorizontalLine:Landroid/view/View;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getSecondaryTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 89
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->onFinishInflate()V

    .line 63
    const v0, 0x7f0c009d

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->prevNextAllArticles:Landroid/view/ViewGroup;

    .line 64
    const v0, 0x7f0c00a2

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->menuitemPrevArticle:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0c00a3

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->menuitemArticles:Landroid/widget/Button;

    .line 66
    const v0, 0x7f0c00a5

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->menuitemNextArticle:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0c00a0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->periodicalHorizontalLine:Landroid/view/View;

    .line 69
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->topMargin:I

    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getRenderedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->currentPageRenderComplete:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 73
    return-void
.end method

.method public setPrevNextVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->prevNextAllArticles:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->prevNextAllArticles:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->prevNextAllArticles:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 169
    :cond_0
    return-void
.end method

.method public setPrevNextVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->isPrevNextVisibility:Z

    .line 153
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 154
    .local v0, visibility:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->setPrevNextVisibility(I)V

    .line 155
    return-void

    .line 153
    .end local v0           #visibility:I
    :cond_0
    const/4 v1, 0x4

    move v0, v1

    goto :goto_0
.end method
