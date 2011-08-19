.class public Lcom/google/android/finsky/layout/HorizontalStrip;
.super Lcom/google/android/finsky/layout/DraggableHorizontalStrip;
.source "HorizontalStrip.java"


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

.field private final mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

.field protected mLayoutMargin:I

.field private final mMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attributeSet"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    sget-object v1, Lcom/google/android/finsky/R$styleable;->HorizontalStrip:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, a:Landroid/content/res/TypedArray;
    const v1, 0x7fffffff

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mMaxHeight:I

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/HorizontalStrip;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->syncChildViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/HorizontalStrip;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->recreateChildViews()V

    return-void
.end method

.method private computeTotalImagesWidth(I)F
    .locals 9
    .parameter "stripHeight"

    .prologue
    .line 173
    const/4 v2, 0x0

    .line 174
    .local v2, childrenWidth:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 175
    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildWidth(I)I

    move-result v1

    .line 176
    .local v1, childWidth:I
    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildHeight(I)I

    move-result v0

    .line 177
    .local v0, childHeight:I
    int-to-float v5, p1

    int-to-float v6, v0

    div-float v4, v5, v6

    .line 178
    .local v4, scalingFactor:F
    float-to-double v5, v4

    const-wide/high16 v7, 0x3ff0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    .line 181
    int-to-float v5, v1

    mul-float/2addr v5, v4

    float-to-int v1, v5

    .line 183
    :cond_0
    int-to-float v5, v1

    add-float/2addr v2, v5

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    .end local v0           #childHeight:I
    .end local v1           #childWidth:I
    .end local v4           #scalingFactor:F
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v5

    iget v6, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v2, v5

    .line 188
    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    .line 190
    :cond_2
    return v2
.end method

.method private getChildHeight(I)I
    .locals 2
    .parameter "childIndex"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getDimensionAt(ILcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getHeight()I

    move-result v0

    return v0
.end method

.method private getChildWidth(I)I
    .locals 2
    .parameter "childIndex"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getDimensionAt(ILcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getWidth()I

    move-result v0

    return v0
.end method

.method private layoutImages(IIII)V
    .locals 11
    .parameter "childLeft"
    .parameter "childTop"
    .parameter "stripWidth"
    .parameter "stripHeight"

    .prologue
    .line 194
    const/4 v4, 0x0

    .line 195
    .local v4, middleOffset:I
    int-to-float v7, p1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getScrollPosition()F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v6, v7

    .line 196
    .local v6, x:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 197
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 198
    .local v0, child:Landroid/widget/ImageView;
    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildWidth(I)I

    move-result v2

    .line 199
    .local v2, childWidth:I
    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildHeight(I)I

    move-result v1

    .line 200
    .local v1, childHeight:I
    int-to-float v7, p4

    int-to-float v8, v1

    div-float v5, v7, v8

    .line 201
    .local v5, scalingFactor:F
    float-to-double v7, v5

    const-wide/high16 v9, 0x3ff0

    cmpg-double v7, v7, v9

    if-gez v7, :cond_0

    .line 204
    int-to-float v7, v2

    mul-float/2addr v7, v5

    float-to-int v2, v7

    .line 205
    move v1, p4

    .line 208
    :cond_0
    sub-int v7, v6, v4

    sub-int v8, p4, v1

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, p2

    add-int v9, v6, v2

    sub-int/2addr v9, v4

    add-int v10, p4, v1

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, p2

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/widget/ImageView;->layout(IIII)V

    .line 212
    add-int/2addr v6, v2

    .line 213
    iget v7, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v6, v7

    .line 214
    sub-int v7, v6, v4

    if-lt v7, p3, :cond_1

    .line 215
    int-to-float v7, v6

    iget v8, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    sub-float/2addr v7, v8

    float-to-int v6, v7

    .line 196
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    .end local v0           #child:Landroid/widget/ImageView;
    .end local v1           #childHeight:I
    .end local v2           #childWidth:I
    .end local v5           #scalingFactor:F
    :cond_2
    return-void
.end method

.method private recreateChildViews()V
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->removeAllViews()V

    .line 101
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v2}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 102
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, childView:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 104
    const v2, 0x7f02000a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->addView(Landroid/view/View;)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v0           #childView:Landroid/widget/ImageView;
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->syncChildViews()V

    .line 108
    return-void
.end method

.method private syncChildViews()V
    .locals 5

    .prologue
    .line 111
    const/4 v2, 0x1

    .line 112
    .local v2, hasAllImages:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v4}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 113
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 114
    .local v0, childView:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageAt(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 116
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 117
    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->setImageDrawableWithFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 121
    :goto_1
    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getTagAt(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 123
    .end local v0           #childView:Landroid/widget/ImageView;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz v2, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->requestLayout()V

    .line 126
    :cond_2
    return-void
.end method


# virtual methods
.method protected getLeftEdgeOfChildOnLeft(F)F
    .locals 6
    .parameter "xOffset"

    .prologue
    .line 234
    const/4 v3, 0x0

    .line 235
    .local v3, result:I
    const/4 v1, 0x0

    .line 236
    .local v1, currLeft:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 237
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 238
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 239
    int-to-float v4, v1

    cmpl-float v4, v4, p1

    if-lez v4, :cond_0

    .line 240
    int-to-float v4, v3

    .line 244
    .end local v0           #childView:Landroid/view/View;
    :goto_1
    return v4

    .line 242
    .restart local v0       #childView:Landroid/view/View;
    :cond_0
    move v3, v1

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v0           #childView:Landroid/view/View;
    :cond_1
    int-to-float v4, v3

    goto :goto_1
.end method

.method protected getLeftEdgeOfChildOnRight(F)F
    .locals 6
    .parameter "xOffset"

    .prologue
    .line 249
    const/4 v3, 0x0

    .line 250
    .local v3, result:I
    const/4 v1, 0x0

    .line 251
    .local v1, currLeft:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 252
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 254
    move v3, v1

    .line 255
    int-to-float v4, v1

    cmpl-float v4, v4, p1

    if-lez v4, :cond_0

    .line 256
    int-to-float v4, v3

    .line 259
    .end local v0           #childView:Landroid/view/View;
    :goto_1
    return v4

    .line 251
    .restart local v0       #childView:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    .end local v0           #childView:Landroid/view/View;
    :cond_1
    int-to-float v4, v3

    goto :goto_1
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 268
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getScrollPosition()F

    move-result v2

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    move v2, v3

    .line 276
    :goto_0
    return v2

    .line 271
    :cond_0
    const/high16 v2, -0x4080

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getScrollPosition()F

    move-result v3

    mul-float v1, v2, v3

    .line 272
    .local v1, pixelsBeyondLeft:F
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 273
    .local v0, fadeLength:I
    int-to-float v2, v0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 274
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 276
    :cond_1
    int-to-float v2, v0

    div-float v2, v1, v2

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 285
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getScrollPosition()F

    move-result v2

    iget v3, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 286
    .local v1, pixelsBeyondRight:F
    cmpg-float v2, v1, v4

    if-gtz v2, :cond_0

    move v2, v4

    .line 293
    :goto_0
    return v2

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 290
    .local v0, fadeLength:I
    int-to-float v2, v0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 291
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 293
    :cond_1
    int-to-float v2, v0

    div-float v2, v1, v2

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 222
    sub-int v0, p5, p3

    .line 223
    .local v0, h:I
    sub-int v1, p4, p2

    .line 226
    .local v1, w:I
    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->computeTotalImagesWidth(I)F

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    .line 229
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getPaddingTop()I

    move-result v3

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->layoutImages(IIII)V

    .line 230
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 130
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 132
    .local v4, mode:I
    const/high16 v5, 0x4000

    if-ne v4, v5, :cond_0

    .line 134
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/google/android/finsky/layout/HorizontalStrip;->setMeasuredDimension(II)V

    .line 156
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v3, 0x0

    .line 143
    .local v3, maxChildHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v2

    .local v2, len:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 144
    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildHeight(I)I

    move-result v0

    .line 145
    .local v0, childHeight:I
    if-ge v3, v0, :cond_1

    .line 146
    move v3, v0

    .line 149
    :cond_1
    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mMaxHeight:I

    if-le v3, v5, :cond_3

    .line 151
    iget v3, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mMaxHeight:I

    .line 155
    .end local v0           #childHeight:I
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-virtual {p0, v5, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->setMeasuredDimension(II)V

    goto :goto_0

    .line 143
    .restart local v0       #childHeight:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setAdapter(Lcom/google/android/finsky/adapters/ImageStripAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    .line 60
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    new-instance v1, Lcom/google/android/finsky/layout/HorizontalStrip$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/HorizontalStrip$1;-><init>(Lcom/google/android/finsky/layout/HorizontalStrip;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 71
    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->recreateChildViews()V

    .line 72
    return-void
.end method

.method public setLayoutMargin(I)V
    .locals 0
    .parameter "layoutMargin"

    .prologue
    .line 159
    iput p1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    .line 160
    return-void
.end method
