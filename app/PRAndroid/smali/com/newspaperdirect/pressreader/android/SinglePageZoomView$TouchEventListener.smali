.class Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;
.super Ljava/lang/Object;
.source "SinglePageZoomView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchEventListener"
.end annotation


# instance fields
.field private d:F

.field private point:Landroid/graphics/PointF;

.field private scaling:Z

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;


# direct methods
.method private constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V
    .locals 0
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "event"

    .prologue
    .line 480
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    iget-boolean v7, v7, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->processOnTouchEvents:Z

    if-nez v7, :cond_0

    const/4 v7, 0x0

    .line 524
    :goto_0
    return v7

    .line 481
    :cond_0
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;Z)V

    .line 482
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    .line 483
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    sub-float v5, v7, v8

    .line 484
    .local v5, x:F
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sub-float v6, v7, v8

    .line 485
    .local v6, y:F
    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    iput v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->d:F

    .line 486
    iget v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->d:F

    const/high16 v8, 0x4200

    cmpl-float v7, v7, v8

    if-lez v7, :cond_6

    .line 487
    new-instance v7, Landroid/graphics/PointF;

    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->point:Landroid/graphics/PointF;

    .line 488
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->scaling:Z

    .line 489
    const/4 v7, 0x1

    goto :goto_0

    .line 492
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    iget-boolean v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->scaling:Z

    if-eqz v7, :cond_5

    .line 493
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    sub-float v5, v7, v8

    .line 494
    .restart local v5       #x:F
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sub-float v6, v7, v8

    .line 495
    .restart local v6       #y:F
    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    .line 496
    .local v2, newd:F
    const/high16 v7, 0x4200

    cmpl-float v7, v2, v7

    if-lez v7, :cond_2

    .line 497
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$1(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v7

    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->d:F

    sub-float v9, v2, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    iget v10, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->d:F

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    mul-float v4, v7, v8

    .line 498
    .local v4, newscale:F
    new-instance v3, Landroid/graphics/PointF;

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    invoke-direct {v3, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 499
    .local v3, newpoint:Landroid/graphics/PointF;
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$2(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v7

    div-float v7, v4, v7

    const/high16 v8, 0x3f80

    sub-float/2addr v7, v8

    const v8, 0x3e99999a

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    .line 500
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->scaling:Z

    .line 501
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$3(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V

    .line 514
    .end local v3           #newpoint:Landroid/graphics/PointF;
    .end local v4           #newscale:F
    :cond_2
    :goto_1
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 503
    .restart local v3       #newpoint:Landroid/graphics/PointF;
    .restart local v4       #newscale:F
    :cond_3
    const/high16 v7, 0x40a0

    cmpg-float v7, v4, v7

    if-gez v7, :cond_2

    .line 504
    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->point:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$4(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, v4

    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$1(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v9

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$4(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v8

    sub-float v0, v7, v8

    .line 505
    .local v0, dx:F
    iget v7, v3, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->point:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$5(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, v4

    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$1(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v9

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$5(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v8

    sub-float v1, v7, v8

    .line 506
    .local v1, dy:F
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$1(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v7

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$2(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f80

    sub-float/2addr v7, v8

    const v8, 0x3e99999a

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_4

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$2(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F

    move-result v7

    div-float v7, v4, v7

    const/high16 v8, 0x3f80

    sub-float/2addr v7, v8

    const v8, 0x3e99999a

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    .line 507
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$6(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->recycleBitmaps()V

    .line 508
    :cond_4
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v7, v4}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$7(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;F)V

    .line 509
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v7, v0, v1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$8(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;FF)V

    .line 510
    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->point:Landroid/graphics/PointF;

    .line 511
    iput v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->d:F

    goto/16 :goto_1

    .line 516
    .end local v0           #dx:F
    .end local v1           #dy:F
    .end local v2           #newd:F
    .end local v3           #newpoint:Landroid/graphics/PointF;
    .end local v4           #newscale:F
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x6

    if-ne v7, v8, :cond_6

    iget-boolean v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->scaling:Z

    if-eqz v7, :cond_6

    .line 517
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->scaling:Z

    .line 518
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$9(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)Z

    .line 519
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    const-wide/16 v8, 0x80

    invoke-virtual {v7, v8, v9}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->disableOnTouchEvents(J)V

    .line 520
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 522
    :cond_6
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$10(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)Landroid/view/GestureDetector;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$10(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)Landroid/view/GestureDetector;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 523
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$9(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 524
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0
.end method
