.class public Lcom/google/android/voicesearch/DividerSpinner;
.super Landroid/widget/ImageView;
.source "DividerSpinner.java"


# static fields
.field private static final COLORS:[I


# instance fields
.field private mEndX:I

.field private mInc:I

.field private mIncX:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPointX:I

.field private mPointY:I

.field private mStartX:I

.field private mStarted:Z

.field private mXHistory:[I

.field private mXHistoryPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/voicesearch/DividerSpinner;->COLORS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0xfft 0x0t 0x40t
        0x0t 0xfft 0x0t 0x80t
        0x0t 0xfft 0x0t 0xb0t
        0x0t 0xfft 0x0t 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mPaint:Landroid/graphics/Paint;

    .line 39
    sget-object v0, Lcom/google/android/voicesearch/DividerSpinner;->COLORS:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mXHistory:[I

    .line 46
    iget-object v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4120

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mInc:I

    .line 48
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 68
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/voicesearch/DividerSpinner;->getWidth()I

    move-result v0

    .line 70
    iget-boolean v1, p0, Lcom/google/android/voicesearch/DividerSpinner;->mStarted:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/voicesearch/DividerSpinner;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    move v6, v9

    move v5, v9

    move v3, v0

    .line 71
    :goto_0
    sget-object v0, Lcom/google/android/voicesearch/DividerSpinner;->COLORS:[I

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/google/android/voicesearch/DividerSpinner;->COLORS:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mXHistory:[I

    iget v1, p0, Lcom/google/android/voicesearch/DividerSpinner;->mXHistoryPosition:I

    add-int/2addr v1, v6

    rem-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    .line 74
    iget v1, p0, Lcom/google/android/voicesearch/DividerSpinner;->mInc:I

    add-int v4, v0, v1

    .line 75
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 76
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 77
    int-to-float v1, v0

    iget v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mPointY:I

    int-to-float v2, v0

    int-to-float v3, v4

    iget v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mPointY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/android/voicesearch/DividerSpinner;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 71
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v8

    move v3, v7

    goto :goto_0

    .line 79
    :cond_0
    const-wide/16 v1, 0x3c

    invoke-virtual {p0}, Lcom/google/android/voicesearch/DividerSpinner;->getHeight()I

    move-result v6

    move-object v0, p0

    move v4, v9

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/voicesearch/DividerSpinner;->postInvalidateDelayed(JIIII)V

    .line 80
    iget v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mPointX:I

    iget v1, p0, Lcom/google/android/voicesearch/DividerSpinner;->mIncX:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mPointX:I

    .line 81
    iget v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mPointX:I

    iget v1, p0, Lcom/google/android/voicesearch/DividerSpinner;->mEndX:I

    if-lt v0, v1, :cond_1

    .line 82
    iget v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mStartX:I

    iput v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mPointX:I

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mXHistory:[I

    iget v1, p0, Lcom/google/android/voicesearch/DividerSpinner;->mXHistoryPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/voicesearch/DividerSpinner;->mXHistoryPosition:I

    iget v2, p0, Lcom/google/android/voicesearch/DividerSpinner;->mPointX:I

    aput v2, v0, v1

    .line 85
    iget v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mXHistoryPosition:I

    iget-object v1, p0, Lcom/google/android/voicesearch/DividerSpinner;->mXHistory:[I

    array-length v1, v1

    if-ne v0, v1, :cond_2

    iput v9, p0, Lcom/google/android/voicesearch/DividerSpinner;->mXHistoryPosition:I

    .line 87
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    div-int/lit8 v0, p1, 0x32

    iput v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mIncX:I

    .line 92
    iget v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mIncX:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mStartX:I

    .line 93
    iget v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mStartX:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mEndX:I

    .line 94
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mPointY:I

    .line 95
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mStarted:Z

    .line 53
    iget v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mStartX:I

    iput v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mPointX:I

    move v0, v3

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/google/android/voicesearch/DividerSpinner;->mXHistory:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/google/android/voicesearch/DividerSpinner;->mXHistory:[I

    iget v2, p0, Lcom/google/android/voicesearch/DividerSpinner;->mPointX:I

    aput v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    iput v3, p0, Lcom/google/android/voicesearch/DividerSpinner;->mXHistoryPosition:I

    .line 58
    const-wide/16 v0, 0x3c

    invoke-virtual {p0, v0, v1}, Lcom/google/android/voicesearch/DividerSpinner;->postInvalidateDelayed(J)V

    .line 59
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/DividerSpinner;->mStarted:Z

    .line 64
    return-void
.end method
