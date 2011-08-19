.class public Lcom/google/android/voicesearch/CountdownDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CountdownDrawable.java"


# static fields
.field private static final COLORS_FIRST_THREE_QUADRANTS:[I = null

.field private static final COLORS_LAST_QUADRANT:[I = null

.field private static final COLOR_CLEAR:I = 0xffffff

.field private static final COLOR_TRANSLUCENT_GRAY:I = 0x40888888

.field public static final MAX_LEVEL:I = 0x2710

.field private static final POSITIONS_FIRST_THREE_QUADRANTS:[F

.field private static final POSITIONS_LAST_QUADRANT:[F


# instance fields
.field private mBackground:Landroid/graphics/drawable/NinePatchDrawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:F

.field private final mRectRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/voicesearch/CountdownDrawable;->COLORS_FIRST_THREE_QUADRANTS:[I

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/voicesearch/CountdownDrawable;->COLORS_LAST_QUADRANT:[I

    .line 57
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/voicesearch/CountdownDrawable;->POSITIONS_FIRST_THREE_QUADRANTS:[F

    .line 66
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/voicesearch/CountdownDrawable;->POSITIONS_LAST_QUADRANT:[F

    return-void

    .line 39
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0x0t
        0x88t 0x88t 0x88t 0x40t
        0x88t 0x88t 0x88t 0x40t
        0xfft 0xfft 0xfft 0x0t
        0xfft 0xfft 0xfft 0x0t
    .end array-data

    .line 48
    :array_1
    .array-data 0x4
        0x88t 0x88t 0x88t 0x40t
        0x88t 0x88t 0x88t 0x40t
        0xfft 0xfft 0xfft 0x0t
        0xfft 0xfft 0xfft 0x0t
        0x88t 0x88t 0x88t 0x40t
    .end array-data

    .line 57
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 66
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mBackground:Landroid/graphics/drawable/NinePatchDrawable;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mRectRadius:I

    .line 85
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const/high16 v6, 0x3f40

    const/high16 v5, 0x3e80

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/CountdownDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 96
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 97
    iget-object v2, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mBackground:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 98
    iget-object v2, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 99
    iget-object v2, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 102
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 103
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 104
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 114
    iget v1, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mProgress:F

    cmpg-float v1, v1, v5

    if-gez v1, :cond_0

    .line 115
    sget-object v1, Lcom/google/android/voicesearch/CountdownDrawable;->COLORS_LAST_QUADRANT:[I

    .line 116
    sget-object v2, Lcom/google/android/voicesearch/CountdownDrawable;->POSITIONS_LAST_QUADRANT:[F

    .line 117
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mProgress:F

    add-float/2addr v4, v6

    aput v4, v2, v3

    .line 118
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mProgress:F

    add-float/2addr v4, v6

    aput v4, v2, v3

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    .line 125
    :goto_0
    iget-object v3, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/SweepGradient;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    invoke-direct {v4, v5, v6, v2, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 130
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mRectRadius:I

    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mRectRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 131
    return-void

    .line 120
    :cond_0
    sget-object v1, Lcom/google/android/voicesearch/CountdownDrawable;->COLORS_FIRST_THREE_QUADRANTS:[I

    .line 121
    sget-object v2, Lcom/google/android/voicesearch/CountdownDrawable;->POSITIONS_FIRST_THREE_QUADRANTS:[F

    .line 122
    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mProgress:F

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 123
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mProgress:F

    sub-float/2addr v4, v5

    aput v4, v2, v3

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public onLevelChange(I)Z
    .locals 2
    .parameter

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    .line 141
    int-to-float v0, p1

    const v1, 0x461c4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mProgress:F

    .line 142
    invoke-virtual {p0}, Lcom/google/android/voicesearch/CountdownDrawable;->invalidateSelf()V

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter

    .prologue
    .line 147
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    return-void
.end method
