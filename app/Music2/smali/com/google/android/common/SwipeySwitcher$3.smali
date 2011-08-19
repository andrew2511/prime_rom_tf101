.class Lcom/google/android/common/SwipeySwitcher$3;
.super Ljava/lang/Object;
.source "SwipeySwitcher.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/common/SwipeySwitcher;->makeGestureDetector()Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/common/SwipeySwitcher;


# direct methods
.method constructor <init>(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canGoLeft()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 374
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v1

    move v0, v1

    .line 375
    .local v0, count:I
    :goto_0
    if-le v0, v3, :cond_1

    move v1, v3

    :goto_1
    return v1

    .end local v0           #count:I
    :cond_0
    move v0, v2

    .line 374
    goto :goto_0

    .restart local v0       #count:I
    :cond_1
    move v1, v2

    .line 375
    goto :goto_1
.end method

.method private canGoRight()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 379
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v1

    move v0, v1

    .line 380
    .local v0, count:I
    :goto_0
    if-le v0, v3, :cond_1

    move v1, v3

    :goto_1
    return v1

    .end local v0           #count:I
    :cond_0
    move v0, v2

    .line 379
    goto :goto_0

    .restart local v0       #count:I
    :cond_1
    move v1, v2

    .line 380
    goto :goto_1
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/google/android/common/SwipeySwitcher;->access$202(Lcom/google/android/common/SwipeySwitcher;I)I

    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 385
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->access$400(Lcom/google/android/common/SwipeySwitcher;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 421
    :goto_0
    return v2

    .line 392
    :cond_0
    cmpl-float v2, p3, v3

    if-nez v2, :cond_1

    move v2, v4

    .line 395
    goto :goto_0

    .line 396
    :cond_1
    cmpl-float v2, p3, v3

    if-lez v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher$3;->canGoLeft()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    .line 397
    goto :goto_0

    .line 398
    :cond_2
    cmpg-float v2, p3, v3

    if-gez v2, :cond_3

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher$3;->canGoRight()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    .line 399
    goto :goto_0

    .line 407
    :cond_3
    cmpg-float v2, p3, v3

    if-gez v2, :cond_4

    move v0, v5

    .line 408
    .local v0, flingForward:Z
    :goto_1
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v2}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v3}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_5

    move v1, v5

    .line 410
    .local v1, scrolledForward:Z
    :goto_2
    if-eq v0, v1, :cond_6

    .line 411
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->access$500(Lcom/google/android/common/SwipeySwitcher;)V

    :goto_3
    move v2, v5

    .line 421
    goto :goto_0

    .end local v0           #flingForward:Z
    .end local v1           #scrolledForward:Z
    :cond_4
    move v0, v4

    .line 407
    goto :goto_1

    .restart local v0       #flingForward:Z
    :cond_5
    move v1, v4

    .line 408
    goto :goto_2

    .line 413
    .restart local v1       #scrolledForward:Z
    :cond_6
    if-eqz v0, :cond_7

    .line 414
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->access$600(Lcom/google/android/common/SwipeySwitcher;)V

    .line 419
    :goto_4
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2, v0}, Lcom/google/android/common/SwipeySwitcher;->access$800(Lcom/google/android/common/SwipeySwitcher;Z)V

    goto :goto_3

    .line 416
    :cond_7
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->access$700(Lcom/google/android/common/SwipeySwitcher;)V

    goto :goto_4
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 426
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 430
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v3}, Lcom/google/android/common/SwipeySwitcher;->access$400(Lcom/google/android/common/SwipeySwitcher;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v5

    .line 471
    :goto_0
    return v3

    .line 434
    :cond_0
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v3}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v3

    float-to-int v4, p3

    add-int v1, v3, v4

    .line 436
    .local v1, target:I
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v3}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher$3;->canGoLeft()Z

    move-result v3

    if-nez v3, :cond_4

    .line 437
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v3}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v1

    .line 442
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v3, v1, v5}, Lcom/google/android/common/SwipeySwitcher;->scrollTo(II)V

    .line 444
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v3}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v3}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, swap:Z
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v3}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v2

    .line 462
    .local v2, width:I
    if-ge v1, v2, :cond_5

    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v3}, Lcom/google/android/common/SwipeySwitcher;->access$900(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v3

    aget-object v3, v3, v5

    instance-of v3, v3, Lcom/google/android/common/SwipeySwitcher$ViewHolder;

    if-eqz v3, :cond_5

    .line 463
    const/4 v0, 0x1

    .line 467
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 468
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v3}, Lcom/google/android/common/SwipeySwitcher;->access$1000(Lcom/google/android/common/SwipeySwitcher;)V

    .line 471
    .end local v0           #swap:Z
    .end local v2           #width:I
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 438
    :cond_4
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v3}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v3

    if-le v1, v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher$3;->canGoRight()Z

    move-result v3

    if-nez v3, :cond_1

    .line 439
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v3}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v1

    goto :goto_1

    .line 464
    .restart local v0       #swap:Z
    .restart local v2       #width:I
    :cond_5
    if-le v1, v2, :cond_2

    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v3}, Lcom/google/android/common/SwipeySwitcher;->access$900(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v3

    aget-object v3, v3, v6

    instance-of v3, v3, Lcom/google/android/common/SwipeySwitcher$ViewHolder;

    if-eqz v3, :cond_2

    .line 465
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 475
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 478
    const/4 v0, 0x0

    return v0
.end method
