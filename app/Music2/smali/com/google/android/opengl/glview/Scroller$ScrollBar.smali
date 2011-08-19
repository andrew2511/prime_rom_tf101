.class Lcom/google/android/opengl/glview/Scroller$ScrollBar;
.super Lcom/google/android/opengl/glview/Scroller$BaseBar;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/Scroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollBar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/glview/Scroller;


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/glview/Scroller;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/Scroller$BaseBar;-><init>(Lcom/google/android/opengl/glview/Scroller;)V

    .line 367
    return-void
.end method

.method static synthetic access$500(Lcom/google/android/opengl/glview/Scroller$ScrollBar;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->setU(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private getScrollBarUnitPosition()F
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 470
    iget-object v6, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    invoke-static {v6}, Lcom/google/android/opengl/glview/Scroller;->access$400(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/android/opengl/glview/Transformer;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v4

    .line 471
    .local v4, transformerChild:Lcom/google/android/opengl/glview/GLView;
    if-nez v4, :cond_0

    move v6, v8

    .line 483
    :goto_0
    return v6

    .line 474
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    .line 475
    .local v1, horizontal:Z
    invoke-virtual {v4, v1}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v0

    .line 476
    .local v0, childLength:F
    iget-object v6, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    invoke-static {v6}, Lcom/google/android/opengl/glview/Scroller;->access$400(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/android/opengl/glview/Transformer;->length(Z)F

    move-result v5

    .line 477
    .local v5, transformerLength:F
    sub-float v3, v0, v5

    .line 478
    .local v3, scrollSize:F
    cmpg-float v6, v3, v8

    if-gtz v6, :cond_1

    move v6, v8

    .line 479
    goto :goto_0

    .line 481
    :cond_1
    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    invoke-static {v6}, Lcom/google/android/opengl/glview/Scroller;->access$400(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/opengl/glview/Transformer;->offsetX()F

    move-result v6

    move v2, v6

    .line 483
    .local v2, offset:F
    :goto_1
    const/high16 v6, 0x3f80

    neg-float v7, v2

    div-float/2addr v7, v3

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_0

    .line 481
    .end local v2           #offset:F
    :cond_2
    iget-object v6, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    invoke-static {v6}, Lcom/google/android/opengl/glview/Scroller;->access$400(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/opengl/glview/Transformer;->offsetY()F

    move-result v6

    move v2, v6

    goto :goto_1
.end method

.method private setU(Landroid/view/MotionEvent;)V
    .locals 18
    .parameter "e"

    .prologue
    .line 415
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    move v4, v0

    .line 416
    .local v4, horizontal:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/google/android/opengl/glview/GLView;->start(Z)F

    move-result v9

    .line 417
    .local v9, start:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v5

    .line 419
    .local v5, length:F
    if-eqz v4, :cond_2

    .line 420
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 424
    .local v11, u:F
    :goto_0
    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    sub-float v17, v11, v9

    div-float v17, v17, v5

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 428
    .local v12, unitU:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    move-object v15, v0

    invoke-static {v15}, Lcom/google/android/opengl/glview/Scroller;->access$400(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/opengl/glview/Transformer;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v10

    .line 429
    .local v10, transformerChild:Lcom/google/android/opengl/glview/GLView;
    if-eqz v10, :cond_1

    .line 430
    const/4 v2, 0x0

    .line 431
    .local v2, dx:F
    const/4 v3, 0x0

    .line 432
    .local v3, dy:F
    const/4 v1, 0x0

    .line 433
    .local v1, doScroll:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    move v15, v0

    if-eqz v15, :cond_4

    .line 434
    invoke-virtual {v10}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/android/opengl/glview/Scroller;->access$400(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/opengl/glview/Transformer;->width()F

    move-result v16

    sub-float v8, v15, v16

    .line 435
    .local v8, scrollSize:F
    const/4 v15, 0x0

    cmpl-float v15, v8, v15

    if-lez v15, :cond_3

    const/4 v15, 0x1

    move v1, v15

    .line 436
    :goto_1
    if-eqz v1, :cond_0

    .line 437
    mul-float v13, v12, v8

    .line 438
    .local v13, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    move-object v15, v0

    invoke-static {v15}, Lcom/google/android/opengl/glview/Scroller;->access$400(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/opengl/glview/Transformer;->offsetX()F

    move-result v6

    .line 439
    .local v6, offsetX:F
    add-float v2, v13, v6

    .line 450
    .end local v6           #offsetX:F
    .end local v13           #x:F
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    move-object v15, v0

    invoke-static {v15}, Lcom/google/android/opengl/glview/Scroller;->access$400(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Lcom/google/android/opengl/glview/Transformer;->adjustOffset(FF)V

    .line 455
    .end local v1           #doScroll:Z
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v8           #scrollSize:F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->updateThumbPosition()V

    .line 456
    return-void

    .line 422
    .end local v10           #transformerChild:Lcom/google/android/opengl/glview/GLView;
    .end local v11           #u:F
    .end local v12           #unitU:F
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .restart local v11       #u:F
    goto :goto_0

    .line 435
    .restart local v1       #doScroll:Z
    .restart local v2       #dx:F
    .restart local v3       #dy:F
    .restart local v8       #scrollSize:F
    .restart local v10       #transformerChild:Lcom/google/android/opengl/glview/GLView;
    .restart local v12       #unitU:F
    :cond_3
    const/4 v15, 0x0

    move v1, v15

    goto :goto_1

    .line 442
    .end local v8           #scrollSize:F
    :cond_4
    invoke-virtual {v10}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/android/opengl/glview/Scroller;->access$400(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/opengl/glview/Transformer;->height()F

    move-result v16

    sub-float v8, v15, v16

    .line 443
    .restart local v8       #scrollSize:F
    const/4 v15, 0x0

    cmpl-float v15, v8, v15

    if-lez v15, :cond_5

    const/4 v15, 0x1

    move v1, v15

    .line 444
    :goto_3
    if-eqz v1, :cond_0

    .line 445
    mul-float v14, v12, v8

    .line 446
    .local v14, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    move-object v15, v0

    invoke-static {v15}, Lcom/google/android/opengl/glview/Scroller;->access$400(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/opengl/glview/Transformer;->offsetY()F

    move-result v7

    .line 447
    .local v7, offsetY:F
    add-float v3, v14, v7

    goto :goto_2

    .line 443
    .end local v7           #offsetY:F
    .end local v14           #y:F
    :cond_5
    const/4 v15, 0x0

    move v1, v15

    goto :goto_3
.end method


# virtual methods
.method protected gestureDown(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 2
    .parameter "e0"

    .prologue
    const/4 v1, 0x1

    .line 403
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->visible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_1

    .line 404
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->setU(Landroid/view/MotionEvent;)V

    .line 405
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->setFlags(I)V

    .line 406
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->setFlags(I)V

    .line 409
    :cond_0
    new-instance v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;-><init>(Lcom/google/android/opengl/glview/Scroller$ScrollBar;)V

    .line 411
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinLength(Z)F
    .locals 4
    .parameter "horizontal"

    .prologue
    const/4 v3, 0x0

    .line 371
    iget-object v2, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v2, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v2

    move v0, v2

    .line 372
    .local v0, thumbLength:F
    :goto_0
    iget-object v2, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v2, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v2

    move v1, v2

    .line 373
    .local v1, trackLength:F
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    .end local v0           #thumbLength:F
    .end local v1           #trackLength:F
    :cond_0
    move v0, v3

    .line 371
    goto :goto_0

    .restart local v0       #thumbLength:F
    :cond_1
    move v1, v3

    .line 372
    goto :goto_1
.end method

.method public getThumbPosition()F
    .locals 8

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->getScrollBarUnitPosition()F

    move-result v5

    .line 461
    .local v5, unitU:F
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    .line 462
    .local v0, horizontal:Z
    iget-object v6, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v6, v0}, Lcom/google/android/opengl/glview/GLView;->start(Z)F

    move-result v2

    .line 463
    .local v2, start:F
    iget-object v6, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v6, v0}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v1

    .line 464
    .local v1, length:F
    iget-object v6, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v6, v0}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v3

    .line 465
    .local v3, thumbLength:F
    mul-float v6, v5, v1

    add-float/2addr v6, v2

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v3

    sub-float v4, v6, v7

    .line 466
    .local v4, thumbPos:F
    return v4
.end method

.method public layout(ZFF)V
    .locals 7
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 378
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->internalLayout(ZFF)V

    .line 379
    const/4 v6, 0x0

    .line 380
    .local v6, thumbLength:F
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v6

    .line 382
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    if-ne v0, p1, :cond_2

    .line 383
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->getThumbPosition()F

    move-result v1

    invoke-virtual {v0, p1, v1, v6}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 388
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_1

    .line 389
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    if-ne v0, p1, :cond_3

    .line 390
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    const/high16 v1, 0x3f00

    mul-float/2addr v1, v6

    add-float/2addr v1, p2

    sub-float v2, p3, v6

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 399
    :cond_1
    :goto_1
    return-void

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, p1, p2, v6}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    goto :goto_0

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    iget-object v1, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v4

    const/16 v5, 0x9

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    goto :goto_1
.end method
