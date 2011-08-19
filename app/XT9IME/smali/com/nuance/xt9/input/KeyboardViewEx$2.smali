.class Lcom/nuance/xt9/input/KeyboardViewEx$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KeyboardViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/xt9/input/KeyboardViewEx;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/KeyboardViewEx;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/KeyboardViewEx;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$2;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "me1"
    .parameter "me2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v6, 0x4448

    const/high16 v5, 0x43fa

    const/high16 v4, -0x3c06

    const/4 v3, 0x1

    .line 475
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 476
    .local v0, absX:F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 477
    .local v1, absY:F
    cmpl-float v2, p3, v5

    if-lez v2, :cond_0

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    .line 478
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx$2;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/KeyboardViewEx;->swipeRight()V

    move v2, v3

    .line 492
    :goto_0
    return v2

    .line 480
    :cond_0
    cmpg-float v2, p3, v4

    if-gez v2, :cond_1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    .line 481
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx$2;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/KeyboardViewEx;->swipeLeft()V

    move v2, v3

    .line 482
    goto :goto_0

    .line 483
    :cond_1
    cmpg-float v2, p4, v4

    if-gez v2, :cond_2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    .line 484
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx$2;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/KeyboardViewEx;->swipeUp()V

    move v2, v3

    .line 485
    goto :goto_0

    .line 486
    :cond_2
    cmpl-float v2, p4, v5

    if-lez v2, :cond_3

    const/high16 v2, 0x4348

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    .line 487
    iget-object v2, p0, Lcom/nuance/xt9/input/KeyboardViewEx$2;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/KeyboardViewEx;->swipeDown()V

    move v2, v3

    .line 488
    goto :goto_0

    .line 489
    :cond_3
    cmpl-float v2, v0, v6

    if-gtz v2, :cond_4

    cmpl-float v2, v1, v6

    if-lez v2, :cond_5

    :cond_4
    move v2, v3

    .line 490
    goto :goto_0

    .line 492
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method
