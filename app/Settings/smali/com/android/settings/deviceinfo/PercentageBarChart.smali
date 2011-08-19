.class public Lcom/android/settings/deviceinfo/PercentageBarChart;
.super Landroid/view/View;
.source "PercentageBarChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    }
.end annotation


# instance fields
.field private final mEmptyPaint:Landroid/graphics/Paint;

.field private mEntries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mMinTickWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    .line 39
    iput v3, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    .line 54
    sget-object v2, Lcom/android/settings/R$styleable;->PercentageBarChart:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    .line 56
    const/4 v2, 0x0

    const/high16 v3, -0x100

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 57
    .local v1, emptyColor:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    return-void
.end method

.method public static createEntry(FI)Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    .locals 2
    .parameter "percentage"
    .parameter "color"

    .prologue
    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 116
    .local v0, p:Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    new-instance v1, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;-><init>(FLandroid/graphics/Paint;)V

    return-object v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 65
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingLeft()I

    move-result v12

    .line 68
    .local v12, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingRight()I

    move-result v2

    sub-int v14, v1, v2

    .line 69
    .local v14, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingTop()I

    move-result v15

    .line 70
    .local v15, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingBottom()I

    move-result v2

    sub-int v7, v1, v2

    .line 72
    .local v7, bottom:I
    sub-int v16, v14, v12

    .line 74
    .local v16, width:I
    move v11, v12

    .line 76
    .local v11, lastX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    move-object v1, v0

    if-eqz v1, :cond_0

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    .line 79
    .local v8, e:Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    iget v1, v8, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 80
    const/4 v9, 0x0

    .line 85
    .local v9, entryWidth:I
    :goto_1
    add-int v13, v11, v9

    .line 86
    .local v13, nextX:I
    if-lt v13, v14, :cond_2

    .line 95
    .end local v8           #e:Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    .end local v9           #entryWidth:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #nextX:I
    :cond_0
    int-to-float v2, v11

    int-to-float v3, v15

    add-int v1, v11, v16

    int-to-float v4, v1

    int-to-float v5, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 96
    return-void

    .line 82
    .restart local v8       #e:Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    move v1, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move v2, v0

    iget v3, v8, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    .restart local v9       #entryWidth:I
    goto :goto_1

    .line 90
    .restart local v13       #nextX:I
    :cond_2
    int-to-float v2, v11

    int-to-float v3, v15

    int-to-float v4, v13

    int-to-float v5, v7

    iget-object v6, v8, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 91
    move v11, v13

    .line 92
    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    return-void
.end method

.method public setEntries(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, entries:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;>;"
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    .line 124
    return-void
.end method
