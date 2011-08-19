.class Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;
.super Ljava/lang/Object;
.source "SinglePageNewspaperView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchEventListener"
.end annotation


# instance fields
.field private d:F

.field private point:Landroid/graphics/PointF;

.field private savedX:F

.field private savedY:F

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;


# direct methods
.method private constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 24
    .parameter "v"
    .parameter "event"

    .prologue
    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->processOnTouchEvents:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)[Landroid/graphics/Bitmap;

    move-result-object v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)[Landroid/graphics/Bitmap;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v18, v18, v19

    if-nez v18, :cond_1

    :cond_0
    const/16 v18, 0x0

    .line 481
    :goto_0
    return v18

    .line 405
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 406
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrent()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasZooms()Z

    move-result v18

    if-nez v18, :cond_3

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mOnPageZoomInStartedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInStartedListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mOnPageZoomInStartedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInStartedListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInStartedListener;->onPageZoomInStarted(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    .line 408
    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    .line 410
    :cond_3
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    sub-float v16, v18, v19

    .line 411
    .local v16, x:F
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    sub-float v17, v18, v19

    .line 412
    .local v17, y:F
    mul-float v18, v16, v16

    mul-float v19, v17, v17

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->d:F

    .line 413
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->d:F

    move/from16 v18, v0

    const/high16 v19, 0x4200

    cmpl-float v18, v18, v19

    if-lez v18, :cond_f

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mOnPageZoomInStartedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInStartedListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mOnPageZoomInStartedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInStartedListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInStartedListener;->onPageZoomInStarted(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    .line 415
    :cond_4
    new-instance v18, Landroid/graphics/PointF;

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    add-float v19, v19, v20

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    const/16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v21

    add-float v20, v20, v21

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    invoke-direct/range {v18 .. v20}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->point:Landroid/graphics/PointF;

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$1(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;Z)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$2(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->savedX:F

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$3(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->savedY:F

    .line 419
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 422
    .end local v16           #x:F
    .end local v17           #y:F
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$4(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->point:Landroid/graphics/PointF;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 423
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    sub-float v16, v18, v19

    .line 424
    .restart local v16       #x:F
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    sub-float v17, v18, v19

    .line 425
    .restart local v17       #y:F
    mul-float v18, v16, v16

    mul-float v19, v17, v17

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move v10, v0

    .line 426
    .local v10, newd:F
    const/high16 v18, 0x4200

    cmpl-float v18, v10, v18

    if-lez v18, :cond_8

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$5(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v18

    const/high16 v19, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->d:F

    move/from16 v20, v0

    sub-float v20, v10, v20

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->d:F

    move/from16 v21, v0

    div-float v20, v20, v21

    add-float v19, v19, v20

    mul-float v12, v18, v19

    .line 428
    .local v12, newscale:F
    new-instance v11, Landroid/graphics/PointF;

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    add-float v18, v18, v19

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    add-float v19, v19, v20

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    move-object v0, v11

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 429
    .local v11, newpoint:Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v18

    cmpl-float v18, v12, v18

    if-ltz v18, :cond_8

    .line 430
    move-object v0, v11

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->point:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$2(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v20

    sub-float v19, v19, v20

    mul-float v19, v19, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$5(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v20

    div-float v19, v19, v20

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$2(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v19

    sub-float v7, v18, v19

    .line 431
    .local v7, dx:F
    move-object v0, v11

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->point:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$3(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v20

    sub-float v19, v19, v20

    mul-float v19, v19, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$5(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v20

    div-float v19, v19, v20

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$3(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v19

    sub-float v8, v18, v19

    .line 432
    .local v8, dy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v12

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$7(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;F)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$5(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v19

    div-float v14, v18, v19

    .line 434
    .local v14, scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)[Landroid/graphics/Bitmap;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 435
    .local v6, bmw:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)[Landroid/graphics/Bitmap;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 436
    .local v5, bmh:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getWidth()I

    move-result v15

    .line 437
    .local v15, w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getPaddingTop()I

    move-result v19

    sub-int v9, v18, v19

    .line 438
    .local v9, h:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$2(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v19

    add-float v19, v19, v7

    invoke-static/range {v18 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$8(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;F)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$9(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$2(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v18

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$8(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;F)V

    .line 443
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$3(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v19

    add-float v19, v19, v8

    invoke-static/range {v18 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$10(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;F)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$3(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v18

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$10(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;F)V

    .line 446
    :cond_7
    :goto_2
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->point:Landroid/graphics/PointF;

    .line 447
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->d:F

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->invalidate()V

    .line 451
    .end local v5           #bmh:I
    .end local v6           #bmw:I
    .end local v7           #dx:F
    .end local v8           #dy:F
    .end local v9           #h:I
    .end local v11           #newpoint:Landroid/graphics/PointF;
    .end local v12           #newscale:F
    .end local v14           #scale:F
    .end local v15           #w:I
    :cond_8
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 441
    .restart local v5       #bmh:I
    .restart local v6       #bmw:I
    .restart local v7       #dx:F
    .restart local v8       #dy:F
    .restart local v9       #h:I
    .restart local v11       #newpoint:Landroid/graphics/PointF;
    .restart local v12       #newscale:F
    .restart local v14       #scale:F
    .restart local v15       #w:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$2(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v18

    move v0, v15

    int-to-float v0, v0

    move/from16 v19, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v14

    sub-float v19, v19, v20

    cmpg-float v18, v18, v19

    if-gez v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v19, v15, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$8(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;F)V

    goto :goto_1

    .line 445
    :cond_a
    if-le v5, v9, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$3(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v18

    move v0, v9

    int-to-float v0, v0

    move/from16 v19, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v14

    sub-float v19, v19, v20

    cmpg-float v18, v18, v19

    if-gez v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v19, v9, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$10(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;F)V

    goto/16 :goto_2

    .line 453
    .end local v5           #bmh:I
    .end local v6           #bmw:I
    .end local v7           #dx:F
    .end local v8           #dy:F
    .end local v9           #h:I
    .end local v10           #newd:F
    .end local v11           #newpoint:Landroid/graphics/PointF;
    .end local v12           #newscale:F
    .end local v14           #scale:F
    .end local v15           #w:I
    .end local v16           #x:F
    .end local v17           #y:F
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$4(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$1(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;Z)V

    .line 455
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->point:Landroid/graphics/PointF;

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$5(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v19

    div-float v18, v18, v19

    const/high16 v19, 0x3f80

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fb999999999999aL

    cmpl-double v18, v18, v20

    if-lez v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mOnPageZoomInFinishedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInFinishedListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)[Landroid/graphics/Bitmap;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 458
    .restart local v6       #bmw:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)[Landroid/graphics/Bitmap;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 459
    .restart local v5       #bmh:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getWidth()I

    move-result v18

    sub-int v18, v18, v6

    div-int/lit8 v7, v18, 0x2

    .line 460
    .local v7, dx:I
    new-instance v13, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$2(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v18

    move v0, v7

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$3(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getPaddingTop()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$2(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v20

    move v0, v7

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    move v0, v6

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$5(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v22

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v22

    div-float v21, v21, v22

    add-float v20, v20, v21

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$3(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v21

    move v0, v5

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$5(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v23

    mul-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v23

    div-float v22, v22, v23

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getPaddingTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    .line 460
    move-object v0, v13

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 462
    .local v13, position:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->savedX:F

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$8(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;F)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->savedY:F

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$10(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;F)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v19

    invoke-static/range {v18 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$7(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;F)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$11(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$12(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v20

    invoke-static/range {v18 .. v20}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$13(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;FF)Z

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mOnPageZoomInFinishedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInFinishedListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mOnPageZoomInFinishedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInFinishedListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInFinishedListener;->onPageZoomInFinished(Lcom/newspaperdirect/pressreader/android/core/layout/Page;Landroid/graphics/RectF;)V

    .line 467
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->processOnTouchEvents:Z

    .line 476
    .end local v5           #bmh:I
    .end local v6           #bmw:I
    .end local v7           #dx:I
    .end local v13           #position:Landroid/graphics/RectF;
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x80

    invoke-virtual/range {v18 .. v20}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->disableOnTouchEvents(J)V

    .line 477
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 470
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->savedX:F

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$8(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;F)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->savedY:F

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$10(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;F)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v19

    invoke-static/range {v18 .. v19}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$7(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;F)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$14(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)Z

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mOnPageZoomInCanceledListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInCanceledListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mOnPageZoomInCanceledListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInCanceledListener;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInCanceledListener;->onPageZoomInCanceled()V

    goto :goto_3

    .line 479
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$15(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)Landroid/view/GestureDetector;

    move-result-object v18

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$15(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)Landroid/view/GestureDetector;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_10

    const/16 v18, 0x1

    goto/16 :goto_0

    .line 480
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$14(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)Z

    move-result v18

    if-eqz v18, :cond_11

    const/16 v18, 0x1

    goto/16 :goto_0

    .line 481
    :cond_11
    const/16 v18, 0x0

    goto/16 :goto_0
.end method
