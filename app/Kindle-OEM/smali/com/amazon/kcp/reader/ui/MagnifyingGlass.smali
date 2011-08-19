.class public Lcom/amazon/kcp/reader/ui/MagnifyingGlass;
.super Landroid/widget/FrameLayout;
.source "MagnifyingGlass.java"


# instance fields
.field private final frameView:Landroid/widget/ImageView;

.field private final magnifyingView:Lcom/amazon/kcp/reader/ui/MagnifyingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v1, Lcom/amazon/kcp/reader/ui/MagnifyingView;

    invoke-direct {v1, p1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->magnifyingView:Lcom/amazon/kcp/reader/ui/MagnifyingView;

    .line 39
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->magnifyingView:Lcom/amazon/kcp/reader/ui/MagnifyingView;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->setVisibility(I)V

    .line 41
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 42
    .local v0, fillLayout:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->magnifyingView:Lcom/amazon/kcp/reader/ui/MagnifyingView;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->frameView:Landroid/widget/ImageView;

    .line 45
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->frameView:Landroid/widget/ImageView;

    const v2, 0x7f02009a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->frameView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getMagnifyingView()Lcom/amazon/kcp/reader/ui/MagnifyingView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->magnifyingView:Lcom/amazon/kcp/reader/ui/MagnifyingView;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 88
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 90
    sub-int v2, p4, p2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->magnifyingView:Lcom/amazon/kcp/reader/ui/MagnifyingView;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 91
    .local v0, magLeft:I
    sub-int v2, p5, p3

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->magnifyingView:Lcom/amazon/kcp/reader/ui/MagnifyingView;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 92
    .local v1, magTop:I
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->magnifyingView:Lcom/amazon/kcp/reader/ui/MagnifyingView;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->magnifyingView:Lcom/amazon/kcp/reader/ui/MagnifyingView;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->magnifyingView:Lcom/amazon/kcp/reader/ui/MagnifyingView;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->layout(IIII)V

    .line 93
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->frameView:Landroid/widget/ImageView;

    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 94
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/high16 v8, 0x4000

    .line 70
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 73
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->frameView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    .local v0, frameImage:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 75
    .local v4, width:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 76
    .local v1, height:I
    invoke-virtual {p0, v4, v1}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->setMeasuredDimension(II)V

    .line 79
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0046

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 80
    .local v3, magWidth:I
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0045

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v2, v1, v5

    .line 81
    .local v2, magHeight:I
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->magnifyingView:Lcom/amazon/kcp/reader/ui/MagnifyingView;

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->measure(II)V

    .line 82
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->frameView:Landroid/widget/ImageView;

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/ImageView;->measure(II)V

    .line 83
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->magnifyingView:Lcom/amazon/kcp/reader/ui/MagnifyingView;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->setVisibility(I)V

    .line 65
    return-void
.end method
