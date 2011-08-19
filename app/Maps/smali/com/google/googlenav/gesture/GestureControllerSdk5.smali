.class public Lcom/google/googlenav/gesture/GestureControllerSdk5;
.super Lcom/google/googlenav/gesture/C;

# interfaces
.implements Lcom/google/googlenav/gesture/t;
.implements Lcom/google/googlenav/gesture/z;


# instance fields
.field private a:Landroid/view/GestureDetector$OnGestureListener;

.field private b:Lcom/google/googlenav/gesture/q;

.field private c:Landroid/view/GestureDetector$OnDoubleTapListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/gesture/C;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/gesture/GestureControllerSdk5;->a:Landroid/view/GestureDetector$OnGestureListener;

    iput-object v0, p0, Lcom/google/googlenav/gesture/GestureControllerSdk5;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 2

    iput-object p2, p0, Lcom/google/googlenav/gesture/GestureControllerSdk5;->a:Landroid/view/GestureDetector$OnGestureListener;

    iput-object p3, p0, Lcom/google/googlenav/gesture/GestureControllerSdk5;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    new-instance v0, Lcom/google/googlenav/gesture/q;

    invoke-direct {v0, p1, p0}, Lcom/google/googlenav/gesture/q;-><init>(Landroid/content/Context;Lcom/google/googlenav/gesture/t;)V

    iput-object v0, p0, Lcom/google/googlenav/gesture/GestureControllerSdk5;->b:Lcom/google/googlenav/gesture/q;

    iget-object v0, p0, Lcom/google/googlenav/gesture/GestureControllerSdk5;->b:Lcom/google/googlenav/gesture/q;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/gesture/q;->a(Lcom/google/googlenav/gesture/z;)V

    iget-object v0, p0, Lcom/google/googlenav/gesture/GestureControllerSdk5;->b:Lcom/google/googlenav/gesture/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/gesture/q;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/gesture/GestureControllerSdk5;->b:Lcom/google/googlenav/gesture/q;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/gesture/q;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/gesture/GestureControllerSdk5;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/gesture/GestureControllerSdk5;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/gesture/GestureControllerSdk5;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/gesture/GestureControllerSdk5;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/gesture/GestureControllerSdk5;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public e(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/gesture/GestureControllerSdk5;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public f(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/gesture/GestureControllerSdk5;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public g(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/gesture/GestureControllerSdk5;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public h(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/gesture/GestureControllerSdk5;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method
