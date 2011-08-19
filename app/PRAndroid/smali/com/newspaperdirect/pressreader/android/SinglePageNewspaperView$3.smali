.class Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;
.super Ljava/lang/Object;
.source "SinglePageNewspaperView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->initGestures()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "e"

    .prologue
    const/4 v7, 0x1

    .line 382
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mOnPageDoubleClickedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageDoubleClickedListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)[Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)[Landroid/graphics/Bitmap;

    move-result-object v2

    aget-object v2, v2, v7

    if-eqz v2, :cond_0

    .line 383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)[Landroid/graphics/Bitmap;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)[Landroid/graphics/Bitmap;

    move-result-object v2

    aget-object v2, v2, v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 386
    .local v1, w:I
    int-to-float v2, v1

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    iget-object v3, v3, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v3

    iget v3, v3, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 387
    .local v0, scale:F
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mOnPageDoubleClickedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageDoubleClickedListener;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    iget-object v3, v3, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v0

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-static {v6}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$3(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v0

    .line 387
    invoke-interface {v2, v3, v4, v5}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageDoubleClickedListener;->onPageDoubleClicked(Lcom/newspaperdirect/pressreader/android/core/layout/Page;FF)V

    move v2, v7

    .line 391
    .end local v0           #scale:F
    .end local v1           #w:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "e"

    .prologue
    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object v13, v0

    iget-boolean v13, v13, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mHightlightArticles:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object v13, v0

    iget-object v13, v13, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mOnArticleClickedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnArticleClickedListener;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object v13, v0

    invoke-static {v13}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)[Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object v13, v0

    invoke-static {v13}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)[Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    if-eqz v13, :cond_1

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getWidth()I

    move-result v10

    .line 348
    .local v10, w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object v13, v0

    invoke-static {v13}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)[Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 349
    .local v3, bw:I
    sub-int v13, v10, v3

    div-int/lit8 v4, v13, 0x2

    .line 350
    .local v4, dx:I
    int-to-float v13, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object v14, v0

    iget-object v14, v14, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v14}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v14

    iget v14, v14, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    int-to-float v14, v14

    div-float v8, v13, v14

    .line 351
    .local v8, scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object v13, v0

    iget-object v13, v13, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v13}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getArticles()Ljava/util/List;

    move-result-object v2

    .line 352
    .local v2, articles:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/layout/Article;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_1

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    int-to-float v14, v4

    sub-float/2addr v13, v14

    div-float v11, v13, v8

    .line 354
    .local v11, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getPaddingTop()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object v14, v0

    invoke-static {v14}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$3(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v14

    sub-float/2addr v13, v14

    div-float v12, v13, v8

    .line 355
    .local v12, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object v13, v0

    invoke-static {v13}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$17(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v13

    div-float v6, v13, v8

    .line 356
    .local v6, minArticleTitleHeight:F
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_2

    .line 370
    .end local v2           #articles:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/layout/Article;>;"
    .end local v3           #bw:I
    .end local v4           #dx:I
    .end local v6           #minArticleTitleHeight:F
    .end local v8           #scale:F
    .end local v10           #w:I
    .end local v11           #x:F
    .end local v12           #y:F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object v13, v0

    iget-object v13, v13, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mOnPageClickedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageClickedListener;

    if-eqz v13, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getPaddingTop()I

    move-result v14

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_5

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object v13, v0

    iget-object v13, v13, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mOnPageClickedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageClickedListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object v14, v0

    iget-object v14, v14, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-interface {v13, v14}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageClickedListener;->onPageClicked(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    .line 372
    const/4 v13, 0x1

    .line 374
    :goto_0
    return v13

    .line 356
    .restart local v2       #articles:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/layout/Article;>;"
    .restart local v3       #bw:I
    .restart local v4       #dx:I
    .restart local v6       #minArticleTitleHeight:F
    .restart local v8       #scale:F
    .restart local v10       #w:I
    .restart local v11       #x:F
    .restart local v12       #y:F
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    .line 357
    .local v1, article:Lcom/newspaperdirect/pressreader/android/core/layout/Article;
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getTitle()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v9

    .line 358
    .local v9, title:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->getRects()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v9}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->getRects()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-eqz v14, :cond_0

    .line 360
    invoke-virtual {v9}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->getRects()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    .line 361
    .local v7, rect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;
    iget v15, v7, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    int-to-float v15, v15

    cmpl-float v15, v15, v6

    if-lez v15, :cond_4

    const/4 v15, 0x0

    move v5, v15

    .line 362
    .local v5, dy:F
    :goto_1
    iget v15, v7, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->x:I

    int-to-float v15, v15

    cmpg-float v15, v11, v15

    if-ltz v15, :cond_3

    iget v15, v7, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->x:I

    move-object v0, v7

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    move/from16 v16, v0

    add-int v15, v15, v16

    int-to-float v15, v15

    cmpl-float v15, v11, v15

    if-gtz v15, :cond_3

    iget v15, v7, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->y:I

    int-to-float v15, v15

    sub-float/2addr v15, v5

    cmpg-float v15, v12, v15

    if-ltz v15, :cond_3

    iget v15, v7, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->y:I

    move-object v0, v7

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    move/from16 v16, v0

    add-int v15, v15, v16

    int-to-float v15, v15

    add-float/2addr v15, v5

    cmpl-float v15, v12, v15

    if-gtz v15, :cond_3

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object v13, v0

    iget-object v13, v13, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mOnArticleClickedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnArticleClickedListener;

    invoke-interface {v13, v1}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnArticleClickedListener;->onArticleClicked(Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V

    .line 365
    const/4 v13, 0x1

    goto :goto_0

    .line 361
    .end local v5           #dy:F
    :cond_4
    iget v15, v7, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    int-to-float v15, v15

    sub-float v15, v6, v15

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    move v5, v15

    goto :goto_1

    .line 374
    .end local v1           #article:Lcom/newspaperdirect/pressreader/android/core/layout/Article;
    .end local v2           #articles:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/layout/Article;>;"
    .end local v3           #bw:I
    .end local v4           #dx:I
    .end local v6           #minArticleTitleHeight:F
    .end local v7           #rect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;
    .end local v8           #scale:F
    .end local v9           #title:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;
    .end local v10           #w:I
    .end local v11           #x:F
    .end local v12           #y:F
    :cond_5
    const/4 v13, 0x0

    goto :goto_0
.end method
