.class Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$6;
.super Ljava/lang/Object;
.source "SinglePageZoomView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->initGestures()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$6;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$6;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$3(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V

    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "e"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 404
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$6;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    iget-object v5, v5, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    if-nez v5, :cond_0

    move v5, v9

    .line 426
    :goto_0
    return v5

    .line 405
    :cond_0
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$6;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    iget-boolean v5, v5, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mHightlightArticles:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$6;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    iget-object v5, v5, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mOnArticleClickedListener:Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnArticleClickedListener;

    if-eqz v5, :cond_2

    .line 406
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$6;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    iget-object v5, v5, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getArticles()Ljava/util/List;

    move-result-object v1

    .line 407
    .local v1, articles:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/layout/Article;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$6;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v6}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$15(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$6;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v6}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$1(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v6

    div-float v3, v5, v6

    .line 409
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$6;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v6}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$16(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$6;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v6}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$1(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v6

    div-float v4, v5, v6

    .line 410
    .local v4, y:F
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 422
    .end local v1           #articles:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/layout/Article;>;"
    .end local v3           #x:F
    .end local v4           #y:F
    :cond_2
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$6;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    iget-object v5, v5, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mOnPageClickedListener:Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnPageClickedListener;

    if-eqz v5, :cond_5

    .line 423
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$6;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    iget-object v5, v5, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mOnPageClickedListener:Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnPageClickedListener;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$6;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    iget-object v6, v6, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-interface {v5, v6}, Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnPageClickedListener;->onPageClicked(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    move v5, v10

    .line 424
    goto :goto_0

    .line 410
    .restart local v1       #articles:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/layout/Article;>;"
    .restart local v3       #x:F
    .restart local v4       #y:F
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    .line 411
    .local v0, article:Lcom/newspaperdirect/pressreader/android/core/layout/Article;
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getTitle()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getTitle()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->getRects()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getTitle()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->getRects()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 413
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getTitle()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->getRects()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    .line 414
    .local v2, rect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;
    iget v7, v2, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->x:I

    int-to-float v7, v7

    cmpg-float v7, v3, v7

    if-ltz v7, :cond_4

    iget v7, v2, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->x:I

    iget v8, v2, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v7, v3, v7

    if-gtz v7, :cond_4

    iget v7, v2, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->y:I

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-ltz v7, :cond_4

    iget v7, v2, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->y:I

    iget v8, v2, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v7, v4, v7

    if-gtz v7, :cond_4

    .line 416
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$6;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    iget-object v5, v5, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mOnArticleClickedListener:Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnArticleClickedListener;

    invoke-interface {v5, v0}, Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnArticleClickedListener;->onArticleClicked(Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V

    move v5, v10

    .line 417
    goto/16 :goto_0

    .end local v0           #article:Lcom/newspaperdirect/pressreader/android/core/layout/Article;
    .end local v1           #articles:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/layout/Article;>;"
    .end local v2           #rect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;
    .end local v3           #x:F
    .end local v4           #y:F
    :cond_5
    move v5, v9

    .line 426
    goto/16 :goto_0
.end method
