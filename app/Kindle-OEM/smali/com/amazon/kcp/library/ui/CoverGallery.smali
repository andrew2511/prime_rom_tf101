.class public Lcom/amazon/kcp/library/ui/CoverGallery;
.super Landroid/widget/Gallery;
.source "CoverGallery.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mCoveflowCenter:I

.field private mMaxZoom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGallery;->mCamera:Landroid/graphics/Camera;

    .line 24
    const/16 v0, 0x78

    iput v0, p0, Lcom/amazon/kcp/library/ui/CoverGallery;->mMaxZoom:I

    .line 37
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGallery;->initialize()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGallery;->mCamera:Landroid/graphics/Camera;

    .line 24
    const/16 v0, 0x78

    iput v0, p0, Lcom/amazon/kcp/library/ui/CoverGallery;->mMaxZoom:I

    .line 47
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGallery;->initialize()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGallery;->mCamera:Landroid/graphics/Camera;

    .line 24
    const/16 v0, 0x78

    iput v0, p0, Lcom/amazon/kcp/library/ui/CoverGallery;->mMaxZoom:I

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/CoverGallery;->setStaticTransformationsEnabled(Z)V

    .line 59
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGallery;->initialize()V

    .line 60
    return-void
.end method

.method private getCenterOfCoverflow()I
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/CoverGallery;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/CoverGallery;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/CoverGallery;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/CoverGallery;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private initialize()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/CoverGallery;->setStaticTransformationsEnabled(Z)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/CoverGallery;->setChildrenDrawingOrderEnabled(Z)V

    .line 66
    return-void
.end method

.method private transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 131
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 136
    int-to-float v3, p3

    const/high16 v4, 0x41a0

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget v5, p0, Lcom/amazon/kcp/library/ui/CoverGallery;->mMaxZoom:I

    int-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    .line 139
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4004

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 140
    if-lez p3, :cond_0

    .line 142
    const/high16 v5, -0x4080

    mul-float/2addr v4, v5

    .line 145
    :cond_0
    iget-object v5, p0, Lcom/amazon/kcp/library/ui/CoverGallery;->mCamera:Landroid/graphics/Camera;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Camera;->translate(FFF)V

    .line 146
    iget-object v3, p0, Lcom/amazon/kcp/library/ui/CoverGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 147
    div-int/lit8 v3, v2, 0x2

    neg-int v3, v3

    int-to-float v3, v3

    div-int/lit8 v4, v1, 0x2

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 148
    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 150
    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 7
    .parameter "childViewCount"
    .parameter "childViewIndex"

    .prologue
    const/4 v6, 0x1

    .line 163
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/CoverGallery;->getSelectedItemPosition()I

    move-result v4

    .line 164
    .local v4, selectedItemIndex:I
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/CoverGallery;->getCount()I

    move-result v5

    .line 165
    .local v5, totalItems:I
    sub-int v0, p1, v6

    .line 166
    .local v0, maxChildIndex:I
    sub-int v1, v5, v6

    .line 170
    .local v1, maxItemIndex:I
    div-int/lit8 v2, p1, 0x2

    .line 171
    .local v2, middleChildIndex:I
    if-ge v4, v2, :cond_2

    .line 173
    move v2, v4

    .line 180
    :cond_0
    :goto_0
    move v3, p2

    .line 181
    .local v3, result:I
    if-lt p2, v2, :cond_1

    .line 184
    sub-int v6, v0, p2

    add-int v3, v2, v6

    .line 186
    :cond_1
    return v3

    .line 175
    .end local v3           #result:I
    :cond_2
    sub-int v6, v1, v2

    if-le v4, v6, :cond_0

    .line 177
    sub-int v6, v1, v4

    sub-int v2, v0, v6

    goto :goto_0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 2
    .parameter "child"
    .parameter "t"

    .prologue
    .line 94
    invoke-static {p1}, Lcom/amazon/kcp/library/ui/CoverGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    .line 96
    .local v0, childCenter:I
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 97
    sget v1, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 98
    iget v1, p0, Lcom/amazon/kcp/library/ui/CoverGallery;->mCoveflowCenter:I

    sub-int/2addr v1, v0

    invoke-direct {p0, p1, p2, v1}, Lcom/amazon/kcp/library/ui/CoverGallery;->transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;I)V

    .line 100
    const/4 v1, 0x1

    return v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 116
    const/16 v0, 0x190

    div-int/lit8 v1, p2, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/ui/CoverGallery;->mMaxZoom:I

    .line 117
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGallery;->getCenterOfCoverflow()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/ui/CoverGallery;->mCoveflowCenter:I

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onSizeChanged(IIII)V

    .line 119
    return-void
.end method
