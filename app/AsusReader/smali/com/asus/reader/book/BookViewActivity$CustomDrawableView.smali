.class Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;
.super Landroid/widget/ImageView;
.source "BookViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/BookViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomDrawableView"
.end annotation


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/asus/reader/book/BookViewActivity;


# direct methods
.method public constructor <init>(Lcom/asus/reader/book/BookViewActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 2473
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->this$0:Lcom/asus/reader/book/BookViewActivity;

    .line 2474
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2472
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->mPaint:Landroid/graphics/Paint;

    .line 2475
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 2478
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->this$0:Lcom/asus/reader/book/BookViewActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/asus/reader/book/BookViewActivity;->access$4300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    move-result-object v13

    sget-object v14, Lcom/asus/reader/book/BookViewActivity$SelectionState;->NONE:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    if-eq v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->this$0:Lcom/asus/reader/book/BookViewActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/asus/reader/book/BookViewActivity;->access$4300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    move-result-object v13

    sget-object v14, Lcom/asus/reader/book/BookViewActivity$SelectionState;->PRESS_ON_HIGHLIGHT:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    if-eq v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->this$0:Lcom/asus/reader/book/BookViewActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/asus/reader/book/BookViewActivity;->access$4300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    move-result-object v13

    sget-object v14, Lcom/asus/reader/book/BookViewActivity$SelectionState;->PRESS_ON_NOTE:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    if-eq v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->this$0:Lcom/asus/reader/book/BookViewActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/asus/reader/book/BookViewActivity;->access$4600(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 2482
    const/4 v5, 0x0

    .line 2483
    .local v5, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->mPaint:Landroid/graphics/Paint;

    move-object v13, v0

    const/16 v14, -0x100

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 2484
    const/4 v6, 0x0

    .local v6, cutsor_point_X1:I
    const/4 v7, 0x0

    .local v7, cutsor_point_X2:I
    const/4 v8, 0x0

    .local v8, cutsor_point_Y1:I
    const/4 v9, 0x0

    .line 2485
    .local v9, cutsor_point_Y2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->this$0:Lcom/asus/reader/book/BookViewActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/asus/reader/book/BookViewActivity;->access$4600(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/ShapeDrawable;

    .line 2486
    .local v12, rectShape:Landroid/graphics/drawable/ShapeDrawable;
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2487
    invoke-virtual {v12}, Landroid/graphics/drawable/ShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 2488
    .local v11, rect:Landroid/graphics/Rect;
    if-nez v5, :cond_0

    .line 2489
    iget v6, v11, Landroid/graphics/Rect;->left:I

    .line 2490
    iget v8, v11, Landroid/graphics/Rect;->top:I

    .line 2492
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->this$0:Lcom/asus/reader/book/BookViewActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/asus/reader/book/BookViewActivity;->access$4600(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    if-ne v5, v13, :cond_1

    .line 2493
    iget v7, v11, Landroid/graphics/Rect;->right:I

    .line 2494
    iget v9, v11, Landroid/graphics/Rect;->bottom:I

    .line 2496
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 2497
    goto :goto_0

    .line 2499
    .end local v11           #rect:Landroid/graphics/Rect;
    .end local v12           #rectShape:Landroid/graphics/drawable/ShapeDrawable;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->this$0:Lcom/asus/reader/book/BookViewActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/asus/reader/book/BookViewActivity;->access$7100(Lcom/asus/reader/book/BookViewActivity;)[Landroid/graphics/RectF;

    move-result-object v13

    const/4 v14, 0x0

    new-instance v15, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->this$0:Lcom/asus/reader/book/BookViewActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/asus/reader/book/BookViewActivity;->access$7200(Lcom/asus/reader/book/BookViewActivity;)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    sub-int v16, v6, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->this$0:Lcom/asus/reader/book/BookViewActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/asus/reader/book/BookViewActivity;->access$7200(Lcom/asus/reader/book/BookViewActivity;)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    sub-int v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v8

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-direct/range {v15 .. v19}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v15, v13, v14

    .line 2502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->this$0:Lcom/asus/reader/book/BookViewActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/asus/reader/book/BookViewActivity;->access$7200(Lcom/asus/reader/book/BookViewActivity;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->this$0:Lcom/asus/reader/book/BookViewActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/asus/reader/book/BookViewActivity;->access$7200(Lcom/asus/reader/book/BookViewActivity;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    sub-int v14, v6, v14

    add-int/lit8 v14, v14, 0x14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->this$0:Lcom/asus/reader/book/BookViewActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/asus/reader/book/BookViewActivity;->access$7200(Lcom/asus/reader/book/BookViewActivity;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sub-int v15, v8, v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object v1, v13

    move v2, v14

    move v3, v15

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->this$0:Lcom/asus/reader/book/BookViewActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/asus/reader/book/BookViewActivity;->access$7100(Lcom/asus/reader/book/BookViewActivity;)[Landroid/graphics/RectF;

    move-result-object v13

    const/4 v14, 0x1

    new-instance v15, Landroid/graphics/RectF;

    move v0, v7

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v9

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->this$0:Lcom/asus/reader/book/BookViewActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/asus/reader/book/BookViewActivity;->access$7300(Lcom/asus/reader/book/BookViewActivity;)Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    add-int v18, v18, v7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->this$0:Lcom/asus/reader/book/BookViewActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/asus/reader/book/BookViewActivity;->access$7300(Lcom/asus/reader/book/BookViewActivity;)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    add-int v19, v19, v9

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-direct/range {v15 .. v19}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v15, v13, v14

    .line 2506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->this$0:Lcom/asus/reader/book/BookViewActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/asus/reader/book/BookViewActivity;->access$7300(Lcom/asus/reader/book/BookViewActivity;)Landroid/graphics/Bitmap;

    move-result-object v13

    const/16 v14, 0x14

    sub-int v14, v7, v14

    int-to-float v14, v14

    int-to-float v15, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object v1, v13

    move v2, v14

    move v3, v15

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2508
    .end local v5           #count:I
    .end local v6           #cutsor_point_X1:I
    .end local v7           #cutsor_point_X2:I
    .end local v8           #cutsor_point_Y1:I
    .end local v9           #cutsor_point_Y2:I
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method
