.class public Lcom/amazon/kcp/library/ui/ReadingProgressView;
.super Landroid/view/View;
.source "ReadingProgressView.java"


# static fields
.field private static final MIN_NUM_PROGRESS_DOTS:I = 0x3


# instance fields
.field private bookSizePercentage:F

.field private distanceBetweenDots:I

.field private dotSpacing:I

.field private height:I

.field private numDots:I

.field private numDotsRead:I

.field private percentageRead:F

.field private readingDot:Landroid/graphics/drawable/Drawable;

.field private readingDotEmpty:Landroid/graphics/drawable/Drawable;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v1, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->numDots:I

    .line 21
    iput v1, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->numDotsRead:I

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->readingDot:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->readingDotEmpty:Landroid/graphics/drawable/Drawable;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->distanceBetweenDots:I

    .line 46
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->readingDot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->readingDotEmpty:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->readingDot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    move v0, v1

    .line 50
    .local v0, widestDotWidth:I
    :goto_0
    iget v1, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->distanceBetweenDots:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->dotSpacing:I

    .line 51
    return-void

    .line 46
    .end local v0           #widestDotWidth:I
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->readingDotEmpty:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method private calculateNumDots()V
    .locals 5

    .prologue
    .line 88
    iget v1, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->width:I

    iget v2, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->dotSpacing:I

    div-int v0, v1, v2

    .line 91
    .local v0, maxDots:I
    const/4 v1, 0x3

    int-to-float v2, v0

    iget v3, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->bookSizePercentage:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->numDots:I

    .line 94
    const-wide/high16 v1, 0x3fe0

    iget v3, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->numDots:I

    int-to-float v3, v3

    iget v4, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->percentageRead:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    add-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->numDotsRead:I

    .line 95
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    const/4 v3, 0x0

    .line 105
    .local v3, left:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v7, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->numDots:I

    if-ge v2, v7, :cond_1

    .line 110
    iget v7, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->numDotsRead:I

    if-ge v2, v7, :cond_0

    .line 112
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->readingDot:Landroid/graphics/drawable/Drawable;

    .line 120
    .local v1, dot:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget v7, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->dotSpacing:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int v4, v3, v7

    .line 121
    .local v4, leftEdge:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int v5, v4, v7

    .line 122
    .local v5, rightEdge:I
    iget v7, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->height:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v6, v7, 0x2

    .line 123
    .local v6, topEdge:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int v0, v6, v7

    .line 126
    .local v0, bottomEdge:I
    invoke-virtual {v1, v4, v6, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 127
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 129
    iget v7, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->dotSpacing:I

    add-int/2addr v3, v7

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v0           #bottomEdge:I
    .end local v1           #dot:Landroid/graphics/drawable/Drawable;
    .end local v4           #leftEdge:I
    .end local v5           #rightEdge:I
    .end local v6           #topEdge:I
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->readingDotEmpty:Landroid/graphics/drawable/Drawable;

    .restart local v1       #dot:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 131
    .end local v1           #dot:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->width:I

    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->readingDot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->readingDotEmpty:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->readingDot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->height:I

    .line 76
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/ReadingProgressView;->calculateNumDots()V

    .line 78
    iget v0, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->width:I

    iget v1, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/ui/ReadingProgressView;->setMeasuredDimension(II)V

    .line 79
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->readingDotEmpty:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public updateProgressBar(FF)V
    .locals 2
    .parameter "bookSizePercentage"
    .parameter "percentageRead"

    .prologue
    .line 62
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->bookSizePercentage:F

    .line 63
    iput p2, p0, Lcom/amazon/kcp/library/ui/ReadingProgressView;->percentageRead:F

    .line 64
    return-void
.end method
