.class public Lcom/amazon/kcp/library/ui/BackIssuesCoverView;
.super Landroid/widget/RelativeLayout;
.source "BackIssuesCoverView.java"


# static fields
.field private static final TITLE_WEIGHT:F = 0.55f


# instance fields
.field private backIssuesCountTag:Landroid/widget/TextView;

.field private cover:Lcom/amazon/kcp/library/ui/Cover;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private periodicalsTitleTag:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v1, Lcom/amazon/kcp/library/ui/Cover;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/library/ui/Cover;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    .line 44
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 45
    .local v0, layout:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/library/ui/Cover;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    sget-object v2, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->THIN_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/ui/Cover;->setPageEffects(Lcom/amazon/kcp/library/ui/Cover$PageEffects;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/ui/Cover;->unbindDrawables()V

    .line 120
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 121
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 64
    const v0, 0x7f0c0014

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->frameLayout:Landroid/widget/FrameLayout;

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 71
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/ui/Cover;->setCoverImage(Landroid/graphics/drawable/Drawable;F)V

    .line 72
    const v0, 0x7f0c0015

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->periodicalsTitleTag:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->backIssuesCountTag:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->setBackIssuesCount(I)V

    .line 76
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 94
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 97
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    iget-object v3, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/kcp/library/ui/Cover;->getCoverImageBounds(IIZ)Landroid/graphics/Rect;

    move-result-object v0

    .line 101
    .local v0, coverImageBoundsWithoutPages:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f0ccccd

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 102
    .local v1, titleViewHeight:I
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->periodicalsTitleTag:Landroid/widget/TextView;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 108
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->backIssuesCountTag:Landroid/widget/TextView;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 112
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 81
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 84
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    iget-object v2, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/library/ui/Cover;->getCoverImageBounds(IIZ)Landroid/graphics/Rect;

    move-result-object v0

    .line 85
    .local v0, coverImageBounds:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->periodicalsTitleTag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f0ccccd

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 87
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->backIssuesCountTag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ee66666

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 89
    return-void
.end method

.method public setBackIssuesCount(I)V
    .locals 6
    .parameter "numBackIssues"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0048

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, countText:Ljava/lang/String;
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->backIssuesCountTag:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
