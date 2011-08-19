.class Landroid/widget/StackView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "StackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutParams"
.end annotation


# instance fields
.field private final globalInvalidateRect:Landroid/graphics/Rect;

.field horizontalOffset:I

.field private final invalidateRect:Landroid/graphics/Rect;

.field private final invalidateRectf:Landroid/graphics/RectF;

.field mView:Landroid/view/View;

.field private final parentRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/StackView;

.field verticalOffset:I


# direct methods
.method constructor <init>(Landroid/widget/StackView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 1247
    iput-object p1, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    .line 1248
    invoke-direct {p0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1233
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    .line 1234
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    .line 1235
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 1236
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 1249
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 1250
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 1251
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1252
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->height:I

    .line 1253
    return-void
.end method

.method constructor <init>(Landroid/widget/StackView;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 1238
    iput-object p1, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    .line 1239
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1233
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    .line 1234
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    .line 1235
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 1236
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 1240
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1241
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->height:I

    .line 1242
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 1243
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 1244
    iput-object p2, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    .line 1245
    return-void
.end method


# virtual methods
.method getInvalidateRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1285
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 12
    .parameter "v"
    .parameter "r"

    .prologue
    const/4 v6, 0x0

    .line 1257
    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1258
    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    invoke-virtual {v4}, Landroid/widget/StackView;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    invoke-virtual {v5}, Landroid/widget/StackView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 1259
    move-object v2, p1

    .line 1260
    .local v2, p:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_26

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-nez v3, :cond_27

    .line 1282
    :cond_26
    :goto_26
    return-void

    .line 1262
    :cond_27
    const/4 v1, 0x1

    .line 1263
    .local v1, firstPass:Z
    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1264
    const/4 v0, 0x0

    .line 1266
    .local v0, depth:I
    :goto_2e
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_9b

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_9b

    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_9b

    .line 1267
    if-nez v1, :cond_61

    .line 1268
    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1270
    add-int/lit8 v0, v0, 0x1

    .line 1272
    :cond_61
    const/4 v1, 0x0

    .line 1273
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #p:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 1274
    .restart local v2       #p:Landroid/view/View;
    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1276
    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_2e

    .line 1280
    :cond_9b
    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_26
.end method

.method resetInvalidateRect()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1289
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1290
    return-void
.end method

.method public setHorizontalOffset(I)V
    .registers 3
    .parameter "newHorizontalOffset"

    .prologue
    .line 1298
    iget v0, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    invoke-virtual {p0, p1, v0}, Landroid/widget/StackView$LayoutParams;->setOffsets(II)V

    .line 1299
    return-void
.end method

.method public setOffsets(II)V
    .registers 20
    .parameter "newHorizontalOffset"
    .parameter "newVerticalOffset"

    .prologue
    .line 1302
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    move v11, v0

    sub-int v4, p1, v11

    .line 1303
    .local v4, horizontalOffsetDelta:I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 1304
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    move v11, v0

    sub-int v8, p2, v11

    .line 1305
    .local v8, verticalOffsetDelta:I
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    move-object v11, v0

    if-eqz v11, :cond_111

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/view/View;->requestLayout()V

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    add-int/2addr v11, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1310
    .local v5, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    add-int/2addr v11, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1311
    .local v6, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    add-int/2addr v11, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1312
    .local v7, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1314
    .local v3, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    move-object v11, v0

    int-to-float v12, v5

    int-to-float v13, v7

    int-to-float v14, v6

    int-to-float v15, v3

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    move-object v11, v0

    iget v11, v11, Landroid/graphics/RectF;->left:F

    neg-float v9, v11

    .line 1317
    .local v9, xoffset:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    move-object v11, v0

    iget v11, v11, Landroid/graphics/RectF;->top:F

    neg-float v10, v11

    .line 1318
    .local v10, yoffset:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    move-object v11, v0

    invoke-virtual {v11, v9, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    move-object v12, v0

    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    move-object v11, v0

    neg-float v12, v9

    neg-float v13, v10

    invoke-virtual {v11, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    move-object v12, v0

    iget v12, v12, Landroid/graphics/RectF;->left:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    move-object v13, v0

    iget v13, v13, Landroid/graphics/RectF;->top:F

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    move-object v14, v0

    iget v14, v14, Landroid/graphics/RectF;->right:F

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    move-object v15, v0

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v15

    double-to-int v15, v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    move-object v12, v0

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/widget/StackView$LayoutParams;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1329
    .end local v3           #bottom:I
    .end local v5           #left:I
    .end local v6           #right:I
    .end local v7           #top:I
    .end local v9           #xoffset:F
    .end local v10           #yoffset:F
    :cond_111
    return-void
.end method

.method public setVerticalOffset(I)V
    .registers 3
    .parameter "newVerticalOffset"

    .prologue
    .line 1294
    iget v0, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/StackView$LayoutParams;->setOffsets(II)V

    .line 1295
    return-void
.end method
