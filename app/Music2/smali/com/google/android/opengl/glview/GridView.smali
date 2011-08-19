.class public Lcom/google/android/opengl/glview/GridView;
.super Lcom/google/android/opengl/glview/GLView;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/glview/GridView$Adapter;
    }
.end annotation


# static fields
.field public static final VISIT_CLEAR_CHILDREN:I = 0xc8


# instance fields
.field private mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

.field private mColumnMajor:Z

.field private mGapH:F

.field private mGapW:F

.field private mMarginH:F

.field private mMarginW:F

.field private mMinorAxisLength:F

.field private mOldCellSizeH:F

.field private mOldCellSizeW:F

.field private mOldViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/opengl/glview/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/opengl/glview/GLView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/opengl/glview/GridView$Adapter;ZFFFFF)V
    .locals 1
    .parameter "id"
    .parameter "adapter"
    .parameter "columnMajor"
    .parameter "gapW"
    .parameter "gapH"
    .parameter "marginW"
    .parameter "marginH"
    .parameter "minorAxisLength"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLView;-><init>(I)V

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mOldViews:Landroid/util/SparseArray;

    .line 38
    iput-boolean p3, p0, Lcom/google/android/opengl/glview/GridView;->mColumnMajor:Z

    .line 39
    iput p4, p0, Lcom/google/android/opengl/glview/GridView;->mGapW:F

    .line 40
    iput p5, p0, Lcom/google/android/opengl/glview/GridView;->mGapH:F

    .line 41
    iput p6, p0, Lcom/google/android/opengl/glview/GridView;->mMarginW:F

    .line 42
    iput p7, p0, Lcom/google/android/opengl/glview/GridView;->mMarginH:F

    .line 43
    iput-object p2, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    .line 44
    iput p8, p0, Lcom/google/android/opengl/glview/GridView;->mMinorAxisLength:F

    .line 45
    return-void
.end method

.method private clearOldViews()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mOldViews:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GridView;->clearViews(Landroid/util/SparseArray;)V

    .line 260
    return-void
.end method

.method private clearViews(Landroid/util/SparseArray;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/opengl/glview/GLView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, views:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/opengl/glview/GLView;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 264
    .local v1, oldSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 265
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/opengl/glview/GLView;

    .line 266
    .local v2, view:Lcom/google/android/opengl/glview/GLView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/opengl/glview/GLView;->setParent(Lcom/google/android/opengl/glview/GLView;)V

    .line 267
    iget-object v3, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-interface {v3, v2, v4}, Lcom/google/android/opengl/glview/GridView$Adapter;->recycle(Lcom/google/android/opengl/glview/GLView;I)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    .end local v2           #view:Lcom/google/android/opengl/glview/GLView;
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 270
    return-void
.end method

.method private indexToColumn(III)I
    .locals 1
    .parameter "index"
    .parameter "rows"
    .parameter "cols"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GridView;->mColumnMajor:Z

    if-eqz v0, :cond_0

    .line 131
    div-int v0, p1, p2

    .line 133
    :goto_0
    return v0

    :cond_0
    div-int v0, p1, p3

    mul-int/2addr v0, p3

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method private indexToRow(III)I
    .locals 1
    .parameter "index"
    .parameter "rows"
    .parameter "cols"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GridView;->mColumnMajor:Z

    if-eqz v0, :cond_0

    .line 123
    div-int v0, p1, p2

    mul-int/2addr v0, p2

    sub-int v0, p1, v0

    .line 125
    :goto_0
    return v0

    :cond_0
    div-int v0, p1, p3

    goto :goto_0
.end method

.method private majorCount(IFF)I
    .locals 3
    .parameter "itemCount"
    .parameter "cellWidth"
    .parameter "cellHeight"

    .prologue
    .line 106
    invoke-direct {p0, p2, p3}, Lcom/google/android/opengl/glview/GridView;->minorCount(FF)I

    move-result v0

    .line 107
    .local v0, minorCount:I
    if-nez v0, :cond_0

    .line 108
    const/4 v1, 0x0

    .line 110
    :goto_0
    return v1

    :cond_0
    add-int v1, p1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    div-int/2addr v1, v0

    goto :goto_0
.end method

.method private minorCount(FF)I
    .locals 3
    .parameter "cellWidth"
    .parameter "cellHeight"

    .prologue
    const/high16 v2, 0x4000

    .line 98
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GridView;->mColumnMajor:Z

    if-eqz v0, :cond_0

    .line 99
    iget v0, p0, Lcom/google/android/opengl/glview/GridView;->mMinorAxisLength:F

    iget v1, p0, Lcom/google/android/opengl/glview/GridView;->mMarginH:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/opengl/glview/GridView;->mGapH:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/opengl/glview/GridView;->mGapH:F

    add-float/2addr v1, p2

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 101
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/opengl/glview/GridView;->mMinorAxisLength:F

    iget v1, p0, Lcom/google/android/opengl/glview/GridView;->mMarginW:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/opengl/glview/GridView;->mGapW:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/opengl/glview/GridView;->mGapW:F

    add-float/2addr v1, p1

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private updateViews(Lcom/google/android/opengl/glview/GLCanvas;)V
    .locals 41
    .parameter "glCanvas"

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    move-object v6, v0

    invoke-interface {v6}, Lcom/google/android/opengl/glview/GridView$Adapter;->count()I

    move-result v30

    .line 178
    .local v30, itemCount:I
    if-gtz v30, :cond_0

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->clearChildren()V

    .line 252
    :goto_0
    return-void

    .line 182
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/google/android/opengl/glview/GridView$Adapter;->getCellLength(Z)F

    move-result v8

    .line 183
    .local v8, cellSizeW:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/google/android/opengl/glview/GridView$Adapter;->getCellLength(Z)F

    move-result v12

    .line 185
    .local v12, cellSizeH:F
    move-object/from16 v0, p0

    move/from16 v1, v30

    move v2, v8

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/opengl/glview/GridView;->cols(IFF)I

    move-result v24

    .line 186
    .local v24, cols:I
    move-object/from16 v0, p0

    move/from16 v1, v30

    move v2, v8

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/opengl/glview/GridView;->rows(IFF)I

    move-result v35

    .line 188
    .local v35, rows:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->x()F

    move-result v25

    .line 189
    .local v25, drawX:F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->y()F

    move-result v27

    .line 190
    .local v27, drawY:F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->width()F

    move-result v6

    add-float v26, v25, v6

    .line 191
    .local v26, drawX2:F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->height()F

    move-result v6

    add-float v28, v27, v6

    .line 193
    .local v28, drawY2:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->x()F

    move-result v37

    .line 194
    .local v37, x:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->y()F

    move-result v39

    .line 195
    .local v39, y:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->width()F

    move-result v6

    add-float v38, v37, v6

    .line 196
    .local v38, x2:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->height()F

    move-result v6

    add-float v40, v39, v6

    .line 198
    .local v40, y2:F
    move/from16 v0, v37

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 199
    .local v17, clippedX:F
    move/from16 v0, v39

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .line 200
    .local v19, clippedY:F
    move/from16 v0, v38

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 201
    .local v18, clippedX2:F
    move/from16 v0, v40

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 203
    .local v20, clippedY2:F
    cmpl-float v6, v17, v18

    if-gez v6, :cond_1

    cmpl-float v6, v19, v20

    if-ltz v6, :cond_2

    .line 204
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->clearOldViews()V

    goto :goto_0

    .line 208
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/GridView;->mGapW:F

    move v6, v0

    add-float v16, v8, v6

    .line 209
    .local v16, cellW:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/GridView;->mGapH:F

    move v6, v0

    add-float v15, v12, v6

    .line 212
    .local v15, cellH:F
    sub-float v6, v17, v37

    div-float v6, v6, v16

    move v0, v6

    float-to-int v0, v0

    move/from16 v22, v0

    .line 213
    .local v22, col0:I
    sub-float v6, v19, v39

    div-float/2addr v6, v15

    move v0, v6

    float-to-int v0, v0

    move/from16 v33, v0

    .line 214
    .local v33, row0:I
    sub-float v6, v18, v37

    div-float v6, v6, v16

    float-to-int v6, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v24

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 215
    .local v23, col1:I
    sub-float v6, v20, v39

    div-float/2addr v6, v15

    float-to-int v6, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v35

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v34

    .line 217
    .local v34, row1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GridView;->mOldViews:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    .line 218
    .local v36, temp:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/opengl/glview/GLView;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/opengl/glview/GridView;->mOldViews:Landroid/util/SparseArray;

    .line 219
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    .line 221
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/GridView;->mOldCellSizeW:F

    move v6, v0

    cmpl-float v6, v6, v8

    if-nez v6, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/GridView;->mOldCellSizeH:F

    move v6, v0

    cmpl-float v6, v6, v12

    if-eqz v6, :cond_5

    :cond_3
    const/4 v6, 0x1

    move/from16 v31, v6

    .line 223
    .local v31, needRelayout:Z
    :goto_1
    move/from16 v32, v33

    .local v32, row:I
    :goto_2
    move/from16 v0, v32

    move/from16 v1, v34

    if-ge v0, v1, :cond_a

    .line 224
    move/from16 v21, v22

    .local v21, col:I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 225
    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v24

    move/from16 v3, v32

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/glview/GridView;->getChildIndex(IIII)I

    move-result v29

    .line 226
    .local v29, index:I
    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_6

    .line 224
    :cond_4
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 221
    .end local v21           #col:I
    .end local v29           #index:I
    .end local v31           #needRelayout:Z
    .end local v32           #row:I
    :cond_5
    const/4 v6, 0x0

    move/from16 v31, v6

    goto :goto_1

    .line 229
    .restart local v21       #col:I
    .restart local v29       #index:I
    .restart local v31       #needRelayout:Z
    .restart local v32       #row:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GridView;->mOldViews:Landroid/util/SparseArray;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/opengl/glview/GLView;

    .line 230
    .local v5, view:Lcom/google/android/opengl/glview/GLView;
    if-eqz v5, :cond_8

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GridView;->mOldViews:Landroid/util/SparseArray;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 232
    if-eqz v31, :cond_7

    .line 233
    const/4 v6, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move v7, v0

    mul-float v7, v7, v16

    add-float v7, v7, v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/GridView;->mMarginW:F

    move v9, v0

    add-float/2addr v7, v9

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    .line 234
    const/4 v10, 0x0

    move/from16 v0, v32

    int-to-float v0, v0

    move v6, v0

    mul-float/2addr v6, v15

    add-float v6, v6, v39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/GridView;->mMarginH:F

    move v7, v0

    add-float v11, v6, v7

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v13

    const/4 v14, 0x0

    move-object v9, v5

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    .line 236
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v29

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_4

    .line 238
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/google/android/opengl/glview/GridView$Adapter;->viewAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v5

    .line 239
    if-eqz v5, :cond_4

    .line 240
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->setParent(Lcom/google/android/opengl/glview/GLView;)V

    .line 241
    const/4 v6, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move v7, v0

    mul-float v7, v7, v16

    add-float v7, v7, v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/GridView;->mMarginW:F

    move v9, v0

    add-float/2addr v7, v9

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    .line 242
    const/4 v10, 0x0

    move/from16 v0, v32

    int-to-float v0, v0

    move v6, v0

    mul-float/2addr v6, v15

    add-float v6, v6, v39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/GridView;->mMarginH:F

    move v7, v0

    add-float v11, v6, v7

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v13

    const/4 v14, 0x0

    move-object v9, v5

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v29

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 223
    .end local v5           #view:Lcom/google/android/opengl/glview/GLView;
    .end local v29           #index:I
    :cond_9
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_2

    .line 249
    .end local v21           #col:I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->clearOldViews()V

    .line 250
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/opengl/glview/GridView;->mOldCellSizeW:F

    .line 251
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/opengl/glview/GridView;->mOldCellSizeH:F

    goto/16 :goto_0
.end method


# virtual methods
.method public addView(Lcom/google/android/opengl/glview/GLView;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 275
    return-void
.end method

.method public childExtentChanged(Lcom/google/android/opengl/glview/GLView;)V
    .locals 10
    .parameter "child"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 139
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLView;->x()F

    move-result v2

    .line 140
    .local v2, x:F
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLView;->y()F

    move-result v6

    .line 141
    .local v6, y:F
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    invoke-interface {v0, v1}, Lcom/google/android/opengl/glview/GridView$Adapter;->getCellLength(Z)F

    move-result v3

    .line 142
    .local v3, cellSizeW:F
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    invoke-interface {v0, v5}, Lcom/google/android/opengl/glview/GridView$Adapter;->getCellLength(Z)F

    move-result v7

    .line 143
    .local v7, cellSizeH:F
    invoke-virtual {p1, v1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    .line 144
    invoke-virtual {p1, v5}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v8

    move-object v4, p1

    move v9, v5

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    .line 145
    return-void
.end method

.method public clearChildren()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GridView;->clearViews(Landroid/util/SparseArray;)V

    .line 256
    return-void
.end method

.method protected cols(IFF)I
    .locals 1
    .parameter "itemCount"
    .parameter "cellWidth"
    .parameter "cellHeight"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GridView;->mColumnMajor:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/GridView;->majorCount(IFF)I

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/opengl/glview/GridView;->minorCount(FF)I

    move-result v0

    goto :goto_0
.end method

.method public final columnMajor()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GridView;->mColumnMajor:Z

    return v0
.end method

.method public final gapH()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/opengl/glview/GridView;->mGapH:F

    return v0
.end method

.method public final gapW()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/google/android/opengl/glview/GridView;->mGapW:F

    return v0
.end method

.method protected getAdapter()Lcom/google/android/opengl/glview/GridView$Adapter;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    return-object v0
.end method

.method public getChildAt(I)Lcom/google/android/opengl/glview/GLView;
    .locals 1
    .parameter "index"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/opengl/glview/GLView;

    return-object p0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method protected getChildIndex(IIII)I
    .locals 1
    .parameter "rows"
    .parameter "cols"
    .parameter "row"
    .parameter "col"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GridView;->mColumnMajor:Z

    if-eqz v0, :cond_0

    .line 115
    mul-int v0, p4, p1

    add-int/2addr v0, p3

    .line 117
    :goto_0
    return v0

    :cond_0
    mul-int v0, p3, p2

    add-int/2addr v0, p4

    goto :goto_0
.end method

.method public getMinLength(Z)F
    .locals 9
    .parameter "horizontal"

    .prologue
    const/high16 v8, 0x4000

    const/4 v7, 0x1

    .line 149
    iget-object v5, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    invoke-interface {v5, v7}, Lcom/google/android/opengl/glview/GridView$Adapter;->getCellLength(Z)F

    move-result v1

    .line 150
    .local v1, cellW:F
    iget-object v5, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/google/android/opengl/glview/GridView$Adapter;->getCellLength(Z)F

    move-result v0

    .line 151
    .local v0, cellH:F
    iget-object v5, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    invoke-interface {v5}, Lcom/google/android/opengl/glview/GridView$Adapter;->count()I

    move-result v3

    .line 152
    .local v3, itemCount:I
    invoke-virtual {p0, v3, v1, v0}, Lcom/google/android/opengl/glview/GridView;->cols(IFF)I

    move-result v2

    .line 153
    .local v2, cols:I
    invoke-virtual {p0, v3, v1, v0}, Lcom/google/android/opengl/glview/GridView;->rows(IFF)I

    move-result v4

    .line 154
    .local v4, rows:I
    if-lez v2, :cond_1

    if-lez v4, :cond_1

    .line 155
    if-eqz p1, :cond_0

    .line 156
    int-to-float v5, v2

    mul-float/2addr v5, v1

    iget v6, p0, Lcom/google/android/opengl/glview/GridView;->mGapW:F

    sub-int v7, v2, v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/google/android/opengl/glview/GridView;->mMarginW:F

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    .line 161
    :goto_0
    return v5

    .line 158
    :cond_0
    int-to-float v5, v4

    mul-float/2addr v5, v0

    iget v6, p0, Lcom/google/android/opengl/glview/GridView;->mGapH:F

    sub-int v7, v4, v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/google/android/opengl/glview/GridView;->mMarginH:F

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    goto :goto_0

    .line 161
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public indexOfChild(Lcom/google/android/opengl/glview/GLView;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public layout(ZFF)V
    .locals 2
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GridView;->getMinLength(Z)F

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 167
    .local v0, actualLength:F
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/opengl/glview/GridView;->internalLayout(ZFF)V

    .line 168
    return-void
.end method

.method public listen(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "msg"
    .parameter "senderId"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/GridView$Adapter;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const/4 v0, 0x1

    .line 312
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/GLView;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .locals 1
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GridView;->updateViews(Lcom/google/android/opengl/glview/GLCanvas;)V

    .line 173
    invoke-super {p0, p1, p2}, Lcom/google/android/opengl/glview/GLView;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v0

    return v0
.end method

.method public removeView(Lcom/google/android/opengl/glview/GLView;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 280
    iget-object v2, p0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 281
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 284
    iget-object v2, p0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 285
    .local v1, key:I
    iget-object v2, p0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 286
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/android/opengl/glview/GLView;->setParent(Lcom/google/android/opengl/glview/GLView;)V

    .line 288
    .end local v1           #key:I
    :cond_0
    return-void
.end method

.method protected rows(IFF)I
    .locals 1
    .parameter "itemCount"
    .parameter "cellWidth"
    .parameter "cellHeight"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GridView;->mColumnMajor:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0, p2, p3}, Lcom/google/android/opengl/glview/GridView;->minorCount(FF)I

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/GridView;->majorCount(IFF)I

    move-result v0

    goto :goto_0
.end method

.method public setColumnMajor(Z)V
    .locals 0
    .parameter "columnMajor"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/android/opengl/glview/GridView;->mColumnMajor:Z

    .line 57
    return-void
.end method

.method public final setGap(FF)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 69
    iput p1, p0, Lcom/google/android/opengl/glview/GridView;->mGapW:F

    .line 70
    iput p2, p0, Lcom/google/android/opengl/glview/GridView;->mGapH:F

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/opengl/glview/GLView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    invoke-interface {v1}, Lcom/google/android/opengl/glview/GridView$Adapter;->count()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visit(ILjava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "visitor"

    .prologue
    .line 317
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GridView;->clearChildren()V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/opengl/glview/GLView;->visit(ILjava/lang/Object;)V

    goto :goto_0
.end method
