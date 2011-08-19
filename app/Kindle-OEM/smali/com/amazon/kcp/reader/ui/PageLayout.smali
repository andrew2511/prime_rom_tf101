.class public abstract Lcom/amazon/kcp/reader/ui/PageLayout;
.super Landroid/widget/FrameLayout;
.source "PageLayout.java"

# interfaces
.implements Lcom/amazon/kcp/reader/IDocumentTitleController;


# static fields
.field static final BUILTIN_PAGE_MARGIN:I = 0x8


# instance fields
.field protected colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

.field protected fontSize:I

.field private objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

.field protected pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

.field private titleView:Landroid/widget/TextView;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->fontSize:I

    .line 58
    return-void
.end method


# virtual methods
.method protected applyMargins()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 224
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->getCalculatedHorizontalMargins()I

    move-result v1

    .line 225
    .local v1, horizontalMargin:I
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->getTopMarginValue()I

    move-result v4

    .line 226
    .local v4, topMargin:I
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0038

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 227
    .local v0, bottomMargin:I
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 228
    .local v2, pageRenderLayout:Landroid/widget/FrameLayout$LayoutParams;
    sub-int v5, v1, v7

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 229
    sub-int v5, v4, v7

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 230
    sub-int v5, v0, v7

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 234
    const/4 v5, 0x0

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 235
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Lcom/amazon/kcp/reader/ui/PageRenderView;->setRightMargin(I)V

    .line 239
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v6, v7}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->setContentMargins(II)V

    .line 240
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->titleView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 242
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->titleView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 243
    .local v3, titleParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0036

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 244
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 245
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 247
    .end local v3           #titleParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public getCalculatedHorizontalMargins()I
    .locals 5

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 210
    .local v1, horizontalMargin:I
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 211
    .local v2, maxLineWidth:I
    iget v0, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->width:I

    .line 213
    .local v0, currentWidth:I
    mul-int/lit8 v3, v1, 0x2

    sub-int v3, v0, v3

    if-le v3, v2, :cond_0

    .line 215
    sub-int v3, v0, v2

    div-int/lit8 v1, v3, 0x2

    .line 218
    :cond_0
    return v1
.end method

.method public getLeftMargin()I
    .locals 2

    .prologue
    .line 262
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 263
    .local v0, layout:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    return v1
.end method

.method public getObjectSelectionView()Lcom/amazon/kcp/reader/ui/ObjectSelectionView;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    return-object v0
.end method

.method public getPage()Lcom/amazon/kcp/reader/pages/internal/CReaderPage;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getPage()Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    move-result-object v0

    return-object v0
.end method

.method public getPageShift()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getPageShift()I

    move-result v0

    return v0
.end method

.method protected getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTopMargin()I
    .locals 2

    .prologue
    .line 271
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 272
    .local v0, layout:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return v1
.end method

.method protected abstract getTopMarginValue()I
.end method

.method protected onColorModeUpdate()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/PageLayout;->setBackgroundColor(I)V

    .line 255
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 154
    const v1, 0x7f0c002b

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/PageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->titleView:Landroid/widget/TextView;

    .line 156
    const v1, 0x7f0c0026

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/PageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/PageRenderView;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    .line 157
    const v1, 0x7f0c0028

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/PageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    .line 160
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 161
    .local v0, settings:Lcom/amazon/kcp/application/SettingsController;
    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/reader/ui/color/AndroidColorModeFactory;->getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    .line 162
    sget-object v1, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getFontSizeIndex()I

    move-result v2

    aget v1, v1, v2

    iput v1, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->fontSize:I

    .line 163
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    iget v2, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->fontSize:I

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->setFontSize(I)V

    .line 164
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    invoke-virtual {v1, p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->setDocumentTitleController(Lcom/amazon/kcp/reader/IDocumentTitleController;)V

    .line 167
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->onColorModeUpdate()V

    .line 170
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->applyMargins()V

    .line 171
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 176
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 177
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 178
    .local v1, pageRenderLayout:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->getWidth()I

    move-result v5

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->getHeight()I

    move-result v6

    iget v7, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/amazon/kcp/reader/ui/PageRenderView;->layout(IIII)V

    .line 180
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 181
    .local v0, objectSelectionLayout:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->getWidth()I

    move-result v5

    iget v6, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->getHeight()I

    move-result v6

    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->layout(IIII)V

    .line 183
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 187
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 188
    .local v0, newWidth:I
    iget v1, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->width:I

    if-eq v1, v0, :cond_0

    .line 190
    iput v0, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->width:I

    .line 191
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->applyMargins()V

    .line 193
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 194
    return-void
.end method

.method public setBookmarkOverlayVisibility(ZZ)Z
    .locals 1
    .parameter "desiredVisibility"
    .parameter "animated"

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public setPage(Lcom/amazon/kcp/reader/pages/internal/CReaderPage;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getPage()Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/PageRenderView;->setPage(Lcom/amazon/kcp/reader/pages/internal/CReaderPage;)V

    .line 78
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->updateDisplay()Z

    .line 80
    :cond_0
    return-void
.end method

.method public setPageShift(I)V
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getPageShift()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/PageRenderView;->setPageShift(I)V

    .line 102
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->updateDisplay()Z

    .line 104
    :cond_0
    return-void
.end method

.method public setTitleVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    :cond_0
    return-void
.end method

.method public updateDisplay()Z
    .locals 4

    .prologue
    .line 122
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getPage()Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    move-result-object v2

    if-nez v2, :cond_0

    .line 124
    const/4 v2, 0x0

    .line 145
    :goto_0
    return v2

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getPage()Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDisplay;->getColorMode()Lcom/amazon/kcp/reader/models/ColorMode;

    move-result-object v1

    .line 129
    .local v1, pageColorMode:Lcom/amazon/kcp/reader/models/ColorMode;
    if-eqz v1, :cond_1

    sget-object v2, Lcom/amazon/kcp/reader/models/ColorMode;->EMPTY_COLOR_MODE:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v2, v1}, Lcom/amazon/kcp/reader/models/ColorMode;->isEqual(Lcom/amazon/kcp/reader/models/ColorMode;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/models/ColorMode;->isEqual(Lcom/amazon/kcp/reader/models/ColorMode;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    check-cast v1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    .end local v1           #pageColorMode:Lcom/amazon/kcp/reader/models/ColorMode;
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    .line 132
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PageLayout;->onColorModeUpdate()V

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/PageRenderView;->getPage()Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDisplay;->getFontSize()I

    move-result v0

    .line 137
    .local v0, fontSize:I
    iget v2, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->fontSize:I

    if-eq v0, v2, :cond_2

    .line 139
    iput v0, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->fontSize:I

    .line 140
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    iget v3, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->fontSize:I

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->setFontSize(I)V

    .line 144
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/PageLayout;->pageRenderView:Lcom/amazon/kcp/reader/ui/PageRenderView;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/PageRenderView;->invalidate()V

    .line 145
    const/4 v2, 0x1

    goto :goto_0
.end method
