.class Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;
.super Ljava/lang/Object;
.source "GLView.java"

# interfaces
.implements Lcom/google/android/opengl/glview/GLView$EventTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultClickTracker"
.end annotation


# static fields
.field private static final SCROLL_SAFETYZONE_SQUARED:F = 50.0f


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/glview/GLView;


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;)V
    .locals 1
    .parameter
    .parameter "view"

    .prologue
    .line 485
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    .line 487
    return-void
.end method

.method private distanceSquared(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F
    .locals 9
    .parameter "e0"
    .parameter "e1"

    .prologue
    .line 524
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 525
    .local v3, x0:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 526
    .local v5, y0:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 527
    .local v4, x1:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 528
    .local v6, y1:F
    sub-float v0, v3, v4

    .line 529
    .local v0, dx:F
    sub-float v1, v5, v6

    .line 530
    .local v1, dy:F
    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float v2, v7, v8

    .line 531
    .local v2, result:F
    return v2
.end method


# virtual methods
.method public trackEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)I
    .locals 6
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 491
    packed-switch p1, :pswitch_data_0

    move v0, v4

    .line 520
    :goto_0
    return v0

    .line 493
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v4}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    .line 494
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v1}, Lcom/google/android/opengl/glview/GLView;->getId()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/opengl/glview/GLView;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    move v0, v5

    .line 495
    goto :goto_0

    .line 498
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v4}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    .line 499
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v1}, Lcom/google/android/opengl/glview/GLView;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v3, v1, p2, v2}, Lcom/google/android/opengl/glview/GLView;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    move v0, v5

    .line 500
    goto :goto_0

    .line 503
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v4}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    move v0, v3

    .line 504
    goto :goto_0

    .line 507
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->testAndFlags(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->distanceSquared(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F

    move-result v0

    const/high16 v1, 0x4248

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v4}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    :cond_0
    move v0, v4

    .line 510
    goto :goto_0

    .line 513
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v4}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    move v0, v4

    .line 514
    goto :goto_0

    .line 517
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;->this$0:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v4}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    move v0, v5

    .line 518
    goto :goto_0

    .line 491
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
