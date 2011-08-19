.class Lcom/android/inputmethod/keyboard/KeyboardView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mProcessingShiftDoubleTapEvent:Z

.field final synthetic this$0:Lcom/android/inputmethod/keyboard/KeyboardView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/keyboard/KeyboardView;)V
    .locals 1
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$1;->mProcessingShiftDoubleTapEvent:Z

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "firstDown"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 443
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$900(Lcom/android/inputmethod/keyboard/KeyboardView;)Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v3

    instance-of v3, v3, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$900(Lcom/android/inputmethod/keyboard/KeyboardView;)Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isAlphaKeyboard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 446
    .local v1, pointerIndex:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 447
    .local v0, id:I
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v3, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$1000(Lcom/android/inputmethod/keyboard/KeyboardView;I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v2

    .line 449
    .local v2, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->isOnShiftKey(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 450
    iput-boolean v6, p0, Lcom/android/inputmethod/keyboard/KeyboardView$1;->mProcessingShiftDoubleTapEvent:Z

    move v3, v6

    .line 455
    .end local v0           #id:I
    .end local v1           #pointerIndex:I
    .end local v2           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :goto_0
    return v3

    .line 454
    :cond_0
    iput-boolean v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView$1;->mProcessingShiftDoubleTapEvent:Z

    move v3, v5

    .line 455
    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "secondTap"

    .prologue
    .line 460
    iget-boolean v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView$1;->mProcessingShiftDoubleTapEvent:Z

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    .line 462
    move-object v3, p1

    .line 463
    .local v3, secondDown:Landroid/view/MotionEvent;
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 464
    .local v2, pointerIndex:I
    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 465
    .local v0, id:I
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v5, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$1000(Lcom/android/inputmethod/keyboard/KeyboardView;I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v4

    .line 467
    .local v4, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->isOnShiftKey(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 471
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v5}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$1100(Lcom/android/inputmethod/keyboard/KeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->isIgnoringDoubleTap()Z

    move-result v1

    .line 472
    .local v1, ignoringDoubleTap:Z
    if-nez v1, :cond_0

    .line 473
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v5, v4}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$1200(Lcom/android/inputmethod/keyboard/KeyboardView;Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 474
    :cond_0
    const/4 v5, 0x1

    .line 479
    .end local v0           #id:I
    .end local v1           #ignoringDoubleTap:Z
    .end local v2           #pointerIndex:I
    .end local v3           #secondDown:Landroid/view/MotionEvent;
    .end local v4           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :goto_0
    return v5

    .line 477
    .restart local v0       #id:I
    .restart local v2       #pointerIndex:I
    .restart local v3       #secondDown:Landroid/view/MotionEvent;
    .restart local v4       #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView$1;->mProcessingShiftDoubleTapEvent:Z

    .line 479
    .end local v0           #id:I
    .end local v2           #pointerIndex:I
    .end local v3           #secondDown:Landroid/view/MotionEvent;
    .end local v4           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_2
    iget-boolean v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView$1;->mProcessingShiftDoubleTapEvent:Z

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "me1"
    .parameter "me2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 426
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 427
    .local v0, absX:F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 428
    .local v1, absY:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float v2, v5, v6

    .line 429
    .local v2, deltaY:F
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 430
    .local v4, travelY:I
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v5}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$600(Lcom/android/inputmethod/keyboard/KeyboardView;)Lcom/android/inputmethod/keyboard/SwipeTracker;

    move-result-object v5

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/keyboard/SwipeTracker;->computeCurrentVelocity(I)V

    .line 431
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v5}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$600(Lcom/android/inputmethod/keyboard/KeyboardView;)Lcom/android/inputmethod/keyboard/SwipeTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/SwipeTracker;->getYVelocity()F

    move-result v3

    .line 432
    .local v3, endingVelocityY:F
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v5}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$700(Lcom/android/inputmethod/keyboard/KeyboardView;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p4, v5

    if-lez v5, :cond_0

    const/high16 v5, 0x4000

    div-float v5, v1, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_0

    int-to-float v5, v4

    cmpl-float v5, v2, v5

    if-lez v5, :cond_0

    .line 433
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v5}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$800(Lcom/android/inputmethod/keyboard/KeyboardView;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/high16 v5, 0x4080

    div-float v5, p4, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_0

    .line 434
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/KeyboardView;->onSwipeDown()V

    .line 435
    const/4 v5, 0x1

    .line 438
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
