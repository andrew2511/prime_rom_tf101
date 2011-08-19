.class public Lcom/android/contacts/widget/InterpolatingLayout;
.super Landroid/view/ViewGroup;
.source "InterpolatingLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mInRect:Landroid/graphics/Rect;

.field private mOutRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/InterpolatingLayout;->mInRect:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/InterpolatingLayout;->mOutRect:Landroid/graphics/Rect;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/InterpolatingLayout;->mInRect:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/InterpolatingLayout;->mOutRect:Landroid/graphics/Rect;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/InterpolatingLayout;->mInRect:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/InterpolatingLayout;->mOutRect:Landroid/graphics/Rect;

    .line 54
    return-void
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/contacts/widget/InterpolatingLayout;->generateDefaultLayoutParams()Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 200
    new-instance v0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/contacts/widget/InterpolatingLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 195
    new-instance v0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/contacts/widget/InterpolatingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 280
    const/4 v11, 0x0

    .line 281
    .local v11, offset:I
    sub-int v15, p4, p2

    .line 282
    .local v15, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/widget/InterpolatingLayout;->getChildCount()I

    move-result v6

    .line 283
    .local v6, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v6, :cond_5

    .line 284
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/InterpolatingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 286
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;

    .line 287
    .local v12, params:Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;
    iget v7, v12, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->gravity:I

    .line 288
    .local v7, gravity:I
    const/16 v16, -0x1

    move v0, v7

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 289
    const/16 v7, 0x33

    .line 292
    :cond_0
    move-object v0, v12

    iget v0, v0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingLeft:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    move-object v0, v12

    iget v0, v0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingRight:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    .line 293
    :cond_1
    move-object v0, v12

    iget v0, v0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingLeft:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v16

    move/from16 v10, v16

    .line 295
    .local v10, leftPadding:I
    :goto_1
    move-object v0, v12

    iget v0, v0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingRight:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v16

    move/from16 v14, v16

    .line 297
    .local v14, rightPadding:I
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v16

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v17

    move-object v0, v5

    move v1, v10

    move/from16 v2, v16

    move v3, v14

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 301
    .end local v10           #leftPadding:I
    .end local v14           #rightPadding:I
    :cond_2
    invoke-virtual {v12, v15}, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->resolveLeftMargin(I)I

    move-result v9

    .line 302
    .local v9, leftMargin:I
    invoke-virtual {v12, v15}, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->resolveRightMargin(I)I

    move-result v13

    .line 304
    .local v13, rightMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/widget/InterpolatingLayout;->mInRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    add-int v17, v11, v9

    move-object v0, v12

    iget v0, v0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    sub-int v19, p4, v13

    move-object v0, v12

    iget v0, v0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v20, p5, v20

    invoke-virtual/range {v16 .. v20}, Landroid/graphics/Rect;->set(IIII)V

    .line 307
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/widget/InterpolatingLayout;->mInRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/widget/InterpolatingLayout;->mOutRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move v0, v7

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/widget/InterpolatingLayout;->mOutRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/widget/InterpolatingLayout;->mOutRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/widget/InterpolatingLayout;->mOutRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/widget/InterpolatingLayout;->mOutRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object v0, v5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/widget/InterpolatingLayout;->mOutRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    add-int v11, v16, v13

    .line 283
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 293
    .end local v9           #leftMargin:I
    .end local v13           #rightMargin:I
    :cond_3
    invoke-virtual {v12, v15}, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->resolveLeftPadding(I)I

    move-result v16

    move/from16 v10, v16

    goto/16 :goto_1

    .line 295
    .restart local v10       #leftPadding:I
    :cond_4
    invoke-virtual {v12, v15}, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->resolveRightPadding(I)I

    move-result v16

    move/from16 v14, v16

    goto/16 :goto_2

    .line 313
    .end local v5           #child:Landroid/view/View;
    .end local v7           #gravity:I
    .end local v10           #leftPadding:I
    .end local v12           #params:Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 205
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 206
    .local v14, parentWidth:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 208
    .local v13, parentHeight:I
    const/16 v16, 0x0

    .line 209
    .local v16, width:I
    const/4 v10, 0x0

    .line 211
    .local v10, height:I
    const/4 v9, 0x0

    .line 212
    .local v9, fillChild:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/widget/InterpolatingLayout;->getChildCount()I

    move-result v8

    .line 213
    .local v8, count:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v8, :cond_3

    .line 214
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/InterpolatingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 215
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 213
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;

    .line 220
    .local v12, params:Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;
    move-object v0, v12

    iget v0, v0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->width:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 221
    if-eqz v9, :cond_1

    .line 222
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "Interpolating layout allows at most one child with layout_width=\'match_parent\'"

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 226
    :cond_1
    move-object v9, v3

    .line 261
    :goto_2
    invoke-virtual {v12, v14}, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->resolveLeftMargin(I)I

    move-result v17

    invoke-virtual {v12, v14}, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->resolveRightMargin(I)I

    move-result v18

    add-int v17, v17, v18

    add-int v16, v16, v17

    goto :goto_1

    .line 228
    :cond_2
    invoke-virtual {v12, v14}, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->resolveWidth(I)I

    move-result v6

    .line 230
    .local v6, childWidth:I
    packed-switch v6, :pswitch_data_0

    .line 235
    const/high16 v17, 0x4000

    move v0, v6

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 241
    .local v7, childWidthMeasureSpec:I
    :goto_3
    move-object v0, v12

    iget v0, v0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->height:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_1

    .line 251
    move-object v0, v12

    iget v0, v0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->height:I

    move/from16 v17, v0

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 256
    .local v4, childHeightMeasureSpec:I
    :goto_4
    invoke-virtual {v3, v7, v4}, Landroid/view/View;->measure(II)V

    .line 257
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v16, v16, v17

    .line 258
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    move v1, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_2

    .line 232
    .end local v4           #childHeightMeasureSpec:I
    .end local v7           #childWidthMeasureSpec:I
    :pswitch_0
    const/4 v7, 0x0

    .line 233
    .restart local v7       #childWidthMeasureSpec:I
    goto :goto_3

    .line 243
    :pswitch_1
    const/4 v4, 0x0

    .line 244
    .restart local v4       #childHeightMeasureSpec:I
    goto :goto_4

    .line 246
    .end local v4           #childHeightMeasureSpec:I
    :pswitch_2
    move-object v0, v12

    iget v0, v0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object v0, v12

    iget v0, v0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 249
    .restart local v4       #childHeightMeasureSpec:I
    goto :goto_4

    .line 264
    .end local v3           #child:Landroid/view/View;
    .end local v4           #childHeightMeasureSpec:I
    .end local v6           #childWidth:I
    .end local v7           #childWidthMeasureSpec:I
    .end local v12           #params:Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;
    :cond_3
    if-eqz v9, :cond_4

    .line 265
    sub-int v15, v14, v16

    .line 266
    .local v15, remainder:I
    if-lez v15, :cond_5

    const/high16 v17, 0x4000

    move v0, v15

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v5, v17

    .line 269
    .local v5, childMeasureSpec:I
    :goto_5
    move-object v0, v9

    move v1, v5

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 270
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v16, v16, v17

    .line 271
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    move v1, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 274
    .end local v5           #childMeasureSpec:I
    .end local v15           #remainder:I
    :cond_4
    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/contacts/widget/InterpolatingLayout;->resolveSize(II)I

    move-result v17

    move v0, v10

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/contacts/widget/InterpolatingLayout;->resolveSize(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/widget/InterpolatingLayout;->setMeasuredDimension(II)V

    .line 276
    return-void

    .line 266
    .restart local v15       #remainder:I
    :cond_5
    const/16 v17, 0x0

    move/from16 v5, v17

    goto :goto_5

    .line 230
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
    .end packed-switch

    .line 241
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
