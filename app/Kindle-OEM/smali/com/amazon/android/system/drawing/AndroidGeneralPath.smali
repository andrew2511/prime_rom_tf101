.class Lcom/amazon/android/system/drawing/AndroidGeneralPath;
.super Ljava/lang/Object;
.source "AndroidGeneralPath.java"

# interfaces
.implements Lcom/amazon/system/drawing/GeneralPath;


# instance fields
.field final inner:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "numVerts"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGeneralPath;->inner:Landroid/graphics/Path;

    .line 15
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGeneralPath;->inner:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->incReserve(I)V

    .line 16
    return-void
.end method

.method public constructor <init>([I[III[III)V
    .locals 18
    .parameter "xCoords"
    .parameter "yCoords"
    .parameter "coordOffset"
    .parameter "numCoords"
    .parameter "contourEnds"
    .parameter "contourOffset"
    .parameter "numContours"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/android/system/drawing/AndroidGeneralPath;->inner:Landroid/graphics/Path;

    .line 20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/android/system/drawing/AndroidGeneralPath;->inner:Landroid/graphics/Path;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->incReserve(I)V

    .line 24
    add-int v3, p6, p7

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget v3, p5, v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p4

    move v1, v3

    if-eq v0, v1, :cond_0

    .line 26
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 29
    :cond_0
    move/from16 v17, p3

    .line 30
    .local v17, vertex:I
    move/from16 v10, p6

    .local v10, contour:I
    :goto_0
    add-int v3, p6, p7

    if-ge v10, v3, :cond_4

    .line 32
    aget v3, p5, v10

    add-int v14, v3, p3

    .line 33
    .local v14, maxVertex:I
    sub-int v3, v14, v17

    add-int/lit8 v11, v3, 0x1

    .line 34
    .local v11, contourLength:I
    rem-int/lit8 v3, v11, 0x3

    if-eqz v3, :cond_1

    .line 36
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Expected all cubic edges."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 39
    :cond_1
    aget v15, p1, v17

    .line 40
    .local v15, startX:I
    aget v16, p2, v17

    .line 41
    .local v16, startY:I
    int-to-float v3, v15

    move/from16 v0, v16

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/system/drawing/AndroidGeneralPath;->moveTo(FF)V

    .line 42
    add-int/lit8 v17, v17, 0x1

    .line 43
    :goto_1
    const/4 v3, 0x1

    sub-int v3, v14, v3

    move/from16 v0, v17

    move v1, v3

    if-gt v0, v1, :cond_3

    .line 47
    add-int/lit8 v3, v17, 0x2

    if-le v3, v14, :cond_2

    .line 50
    move v12, v15

    .line 51
    .local v12, lastX:I
    move/from16 v13, v16

    .line 59
    .local v13, lastY:I
    :goto_2
    aget v3, p1, v17

    int-to-float v4, v3

    aget v3, p2, v17

    int-to-float v5, v3

    add-int/lit8 v3, v17, 0x1

    aget v3, p1, v3

    int-to-float v6, v3

    add-int/lit8 v3, v17, 0x1

    aget v3, p2, v3

    int-to-float v7, v3

    int-to-float v8, v12

    int-to-float v9, v13

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/amazon/android/system/drawing/AndroidGeneralPath;->curveTo(FFFFFF)V

    .line 43
    add-int/lit8 v17, v17, 0x3

    goto :goto_1

    .line 55
    .end local v12           #lastX:I
    .end local v13           #lastY:I
    :cond_2
    add-int/lit8 v3, v17, 0x2

    aget v12, p1, v3

    .line 56
    .restart local v12       #lastX:I
    add-int/lit8 v3, v17, 0x2

    aget v13, p2, v3

    .restart local v13       #lastY:I
    goto :goto_2

    .line 63
    .end local v12           #lastX:I
    .end local v13           #lastY:I
    :cond_3
    add-int/lit8 v17, v17, -0x1

    .line 30
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 65
    .end local v11           #contourLength:I
    .end local v14           #maxVertex:I
    .end local v15           #startX:I
    .end local v16           #startY:I
    :cond_4
    return-void
.end method


# virtual methods
.method public curveTo(FFFFFF)V
    .locals 7
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "x3"
    .parameter "y3"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGeneralPath;->inner:Landroid/graphics/Path;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 71
    return-void
.end method

.method public getBounds()Lcom/amazon/system/drawing/Rectangle;
    .locals 7

    .prologue
    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 77
    .local v0, bounds:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/amazon/android/system/drawing/AndroidGeneralPath;->inner:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 79
    new-instance v1, Lcom/amazon/system/drawing/Rectangle;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    return-object v1
.end method

.method public moveTo(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGeneralPath;->inner:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 86
    return-void
.end method
