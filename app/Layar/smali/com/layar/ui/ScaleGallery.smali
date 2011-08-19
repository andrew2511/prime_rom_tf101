.class public Lcom/layar/ui/ScaleGallery;
.super Landroid/widget/Gallery;
.source "ScaleGallery.java"


# static fields
.field private static final DEFAULT_SELECTED_HEIGHT:I = 0x64

.field private static final DEFAULT_SELECTED_WIDTH:I = 0x64

.field private static final DEFAULT_UNSELECTED_ALPHA:I = 0xff


# instance fields
.field private mSelectedHeight:I

.field private mSelectedWidth:I

.field private mUnselectedAlpha:I

.field private final viewOffset:Landroid/graphics/Point;

.field private final viewRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/layar/ui/ScaleGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/layar/ui/ScaleGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x0

    const/16 v2, 0x64

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput v2, p0, Lcom/layar/ui/ScaleGallery;->mSelectedHeight:I

    .line 22
    iput v2, p0, Lcom/layar/ui/ScaleGallery;->mSelectedWidth:I

    .line 23
    iput v4, p0, Lcom/layar/ui/ScaleGallery;->mUnselectedAlpha:I

    .line 51
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/layar/ui/ScaleGallery;->viewRect:Landroid/graphics/Rect;

    .line 52
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/layar/ui/ScaleGallery;->viewOffset:Landroid/graphics/Point;

    .line 34
    sget-object v1, Lcom/layar/R$styleable;->ScaleGallery:[I

    .line 33
    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/layar/ui/ScaleGallery;->mSelectedHeight:I

    .line 38
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/layar/ui/ScaleGallery;->mSelectedWidth:I

    .line 40
    const/4 v1, 0x2

    .line 39
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/layar/ui/ScaleGallery;->mUnselectedAlpha:I

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void
.end method

.method private _getOffsetValues(ILandroid/graphics/Rect;)I
    .locals 12
    .parameter "xOffset"
    .parameter "result"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/layar/ui/ScaleGallery;->getWidth()I

    move-result v8

    div-int/lit8 v5, v8, 0x2

    .line 87
    .local v5, xCenter:I
    invoke-virtual {p0}, Lcom/layar/ui/ScaleGallery;->getHeight()I

    move-result v8

    div-int/lit8 v7, v8, 0x2

    .line 88
    .local v7, yCenter:I
    sub-int v8, p1, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 89
    .local v6, xCenterOffset:I
    int-to-float v8, v6

    int-to-float v9, v5

    div-float v3, v8, v9

    .line 90
    .local v3, offset:F
    invoke-virtual {p0, v3}, Lcom/layar/ui/ScaleGallery;->getScale(F)F

    move-result v4

    .line 91
    .local v4, scale:F
    iget v8, p0, Lcom/layar/ui/ScaleGallery;->mSelectedWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v8, v8

    shr-int/lit8 v1, v8, 0x1

    .line 92
    .local v1, dimX:I
    iget v8, p0, Lcom/layar/ui/ScaleGallery;->mSelectedHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v8, v8

    shr-int/lit8 v2, v8, 0x1

    .line 93
    .local v2, dimY:I
    if-nez p2, :cond_0

    .line 94
    new-instance p2, Landroid/graphics/Rect;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 95
    .restart local p2
    :cond_0
    sub-int v8, p1, v1

    sub-int v9, v7, v2

    .line 96
    add-int v10, p1, v1

    add-int v11, v7, v2

    .line 95
    invoke-virtual {p2, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 98
    invoke-virtual {p0, v3}, Lcom/layar/ui/ScaleGallery;->getAlpha(F)I

    move-result v0

    .line 99
    .local v0, alpha:I
    iget v8, p0, Lcom/layar/ui/ScaleGallery;->mUnselectedAlpha:I

    add-int/2addr v8, v0

    return v8
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/layar/ui/ScaleGallery;->getFirstVisiblePosition()I

    move-result v2

    .line 56
    .local v2, first:I
    invoke-virtual {p0}, Lcom/layar/ui/ScaleGallery;->getLastVisiblePosition()I

    move-result v4

    .line 58
    .local v4, last:I
    move v3, v2

    .local v3, i:I
    :goto_0
    if-le v3, v4, :cond_0

    .line 80
    return-void

    .line 59
    :cond_0
    sub-int v6, v3, v2

    invoke-virtual {p0, v6}, Lcom/layar/ui/ScaleGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 60
    .local v5, view:Landroid/widget/ImageView;
    if-nez v5, :cond_2

    .line 58
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 63
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 66
    iget-object v6, p0, Lcom/layar/ui/ScaleGallery;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 67
    iget-object v6, p0, Lcom/layar/ui/ScaleGallery;->viewOffset:Landroid/graphics/Point;

    invoke-virtual {v6, v8, v8}, Landroid/graphics/Point;->set(II)V

    .line 68
    iget-object v6, p0, Lcom/layar/ui/ScaleGallery;->viewRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/layar/ui/ScaleGallery;->viewOffset:Landroid/graphics/Point;

    invoke-virtual {p0, v5, v6, v7}, Lcom/layar/ui/ScaleGallery;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 69
    iget-object v6, p0, Lcom/layar/ui/ScaleGallery;->viewOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/layar/ui/ScaleGallery;->mSelectedWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/layar/ui/ScaleGallery;->viewRect:Landroid/graphics/Rect;

    invoke-direct {p0, v6, v7}, Lcom/layar/ui/ScaleGallery;->_getOffsetValues(ILandroid/graphics/Rect;)I

    move-result v0

    .line 70
    .local v0, alpha:I
    iget-object v6, p0, Lcom/layar/ui/ScaleGallery;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_1

    .line 71
    iget-object v6, p0, Lcom/layar/ui/ScaleGallery;->viewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-lez v6, :cond_1

    .line 72
    iget-object v6, p0, Lcom/layar/ui/ScaleGallery;->viewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/layar/ui/ScaleGallery;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 73
    iget-object v6, p0, Lcom/layar/ui/ScaleGallery;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_1

    .line 76
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 77
    iget-object v6, p0, Lcom/layar/ui/ScaleGallery;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 78
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected getAlpha(F)I
    .locals 2
    .parameter "offset"

    .prologue
    .line 108
    const/16 v0, 0xff

    iget v1, p0, Lcom/layar/ui/ScaleGallery;->mUnselectedAlpha:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getScale(F)F
    .locals 2
    .parameter "offset"

    .prologue
    .line 104
    const/high16 v0, 0x3f80

    const/high16 v1, 0x3e80

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public setSelectedSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 45
    invoke-virtual {p0, p2}, Lcom/layar/ui/ScaleGallery;->setMinimumHeight(I)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/layar/ui/ScaleGallery;->setMinimumWidth(I)V

    .line 47
    iput p1, p0, Lcom/layar/ui/ScaleGallery;->mSelectedWidth:I

    .line 48
    iput p2, p0, Lcom/layar/ui/ScaleGallery;->mSelectedHeight:I

    .line 49
    return-void
.end method
