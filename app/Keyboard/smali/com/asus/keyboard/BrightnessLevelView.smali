.class public Lcom/asus/keyboard/BrightnessLevelView;
.super Landroid/view/View;
.source "BrightnessLevelView.java"


# instance fields
.field private mLevel:I

.field private mLevelEmptyBitmap:Landroid/graphics/Bitmap;

.field private mLevelFullBitmap:Landroid/graphics/Bitmap;

.field private mLevelH:I

.field private mLevelInterval:I

.field private mLevelW:I

.field private mMax:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method private measureHeight(I)I
    .locals 5
    .parameter "measureSpec"

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 83
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 85
    .local v2, specSize:I
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_1

    .line 86
    move v0, v2

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    iget v3, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevelH:I

    invoke-virtual {p0}, Lcom/asus/keyboard/BrightnessLevelView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/asus/keyboard/BrightnessLevelView;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .line 89
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_0

    .line 90
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 6
    .parameter "measureSpec"

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 67
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 69
    .local v2, specSize:I
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_1

    .line 70
    move v0, v2

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    iget v3, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevelW:I

    iget v4, p0, Lcom/asus/keyboard/BrightnessLevelView;->mMax:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/asus/keyboard/BrightnessLevelView;->mMax:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevelInterval:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/asus/keyboard/BrightnessLevelView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/asus/keyboard/BrightnessLevelView;->getPaddingRight()I

    move-result v4

    add-int v0, v3, v4

    .line 73
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_0

    .line 74
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 45
    invoke-virtual {p0}, Lcom/asus/keyboard/BrightnessLevelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevelFullBitmap:Landroid/graphics/Bitmap;

    .line 46
    invoke-virtual {p0}, Lcom/asus/keyboard/BrightnessLevelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevelEmptyBitmap:Landroid/graphics/Bitmap;

    .line 48
    iget-object v0, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevelFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevelEmptyBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevelFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevelW:I

    .line 53
    iget-object v0, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevelFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevelH:I

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevelInterval:I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    iget-object v4, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevelFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevelEmptyBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 106
    invoke-virtual {p0}, Lcom/asus/keyboard/BrightnessLevelView;->getPaddingLeft()I

    move-result v1

    .line 107
    .local v1, left:I
    invoke-virtual {p0}, Lcom/asus/keyboard/BrightnessLevelView;->getPaddingTop()I

    move-result v2

    .line 108
    .local v2, top:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v4, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevel:I

    if-ge v0, v4, :cond_2

    .line 109
    iget v4, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevelW:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    add-int/lit8 v3, v4, 0x1

    .line 110
    .local v3, x:I
    iget-object v4, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevelFullBitmap:Landroid/graphics/Bitmap;

    int-to-float v5, v3

    int-to-float v6, v2

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    .end local v3           #x:I
    :cond_2
    iget v0, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevel:I

    :goto_2
    iget v4, p0, Lcom/asus/keyboard/BrightnessLevelView;->mMax:I

    if-ge v0, v4, :cond_3

    .line 113
    iget v4, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevelW:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    add-int/lit8 v3, v4, 0x1

    .line 114
    .restart local v3       #x:I
    iget-object v4, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevelEmptyBitmap:Landroid/graphics/Bitmap;

    int-to-float v5, v3

    int-to-float v6, v2

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 117
    .end local v3           #x:I
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/asus/keyboard/BrightnessLevelView;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/asus/keyboard/BrightnessLevelView;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/asus/keyboard/BrightnessLevelView;->setMeasuredDimension(II)V

    .line 62
    return-void
.end method

.method public setLevel(I)V
    .locals 2
    .parameter "level"

    .prologue
    .line 31
    iput p1, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevel:I

    .line 32
    iget v0, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevel:I

    if-gez v0, :cond_1

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevel:I

    .line 37
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/asus/keyboard/BrightnessLevelView;->requestLayout()V

    .line 38
    invoke-virtual {p0}, Lcom/asus/keyboard/BrightnessLevelView;->invalidate()V

    .line 39
    return-void

    .line 34
    :cond_1
    iget v0, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevel:I

    iget v1, p0, Lcom/asus/keyboard/BrightnessLevelView;->mMax:I

    if-le v0, v1, :cond_0

    .line 35
    iget v0, p0, Lcom/asus/keyboard/BrightnessLevelView;->mMax:I

    iput v0, p0, Lcom/asus/keyboard/BrightnessLevelView;->mLevel:I

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 27
    iput p1, p0, Lcom/asus/keyboard/BrightnessLevelView;->mMax:I

    .line 28
    return-void
.end method
