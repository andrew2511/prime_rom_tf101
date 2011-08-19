.class public Lcom/google/googlenav/ui/android/AndroidView;
.super Lcom/google/googlenav/ui/android/BaseAndroidView;

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/google/googlenav/gesture/p;
.implements Lcom/google/googlenav/ui/S;


# instance fields
.field private final e:LaB/h;

.field private f:LQ/g;

.field private g:Lcom/google/googlenav/ui/android/E;

.field private h:Lcom/google/googlenav/ui/android/ad;

.field private i:Lcom/google/googlenav/ui/android/ad;

.field private final j:LaF/a;

.field private k:Z

.field private l:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/BaseAndroidView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, LaB/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LaB/h;-><init>(Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->e:LaB/h;

    new-instance v0, LaF/a;

    invoke-direct {v0}, LaF/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->j:LaF/a;

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/android/AndroidView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/android/AndroidView;->setFocusableInTouchMode(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/AndroidView;->setWillNotDraw(Z)V

    invoke-static {}, Lcom/google/googlenav/gesture/C;->b()Lcom/google/googlenav/gesture/C;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p0}, Lcom/google/googlenav/gesture/C;->a(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/view/GestureDetector$OnDoubleTapListener;)V

    invoke-static {}, Lcom/google/googlenav/gesture/A;->c()Lcom/google/googlenav/gesture/A;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/google/googlenav/gesture/A;->a(Landroid/content/Context;Lcom/google/googlenav/gesture/p;)V

    sget-object v0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    invoke-virtual {v0}, Lcom/google/googlenav/android/af;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->l()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/AndroidView;)F
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->n()F

    move-result v0

    return v0
.end method

.method private a(Landroid/view/MotionEvent;IIJ)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/google/googlenav/gesture/A;->c()Lcom/google/googlenav/gesture/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/A;->b()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->h:Lcom/google/googlenav/ui/android/ad;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/ad;->a(Landroid/view/MotionEvent;)V

    new-instance v0, Lax/b;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->h:Lcom/google/googlenav/ui/android/ad;

    iget v3, v1, Lcom/google/googlenav/ui/android/ad;->a:I

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->h:Lcom/google/googlenav/ui/android/ad;

    iget v4, v1, Lcom/google/googlenav/ui/android/ad;->b:I

    move v1, p2

    move v2, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v7}, Lax/b;-><init>(IIIIJLaF/a;)V

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v1}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->a(Lax/b;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidView;->invalidate()V

    return-void

    :cond_0
    new-instance v0, Lax/b;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v1, p2

    move v2, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v7}, Lax/b;-><init>(IIIIJLaF/a;)V

    goto :goto_0
.end method

.method private l()V
    .locals 1

    invoke-static {}, LQ/g;->j()LQ/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->f:LQ/g;

    new-instance v0, Lcom/google/googlenav/ui/android/E;

    invoke-direct {v0}, Lcom/google/googlenav/ui/android/E;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->g:Lcom/google/googlenav/ui/android/E;

    new-instance v0, Lcom/google/googlenav/ui/android/ad;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/ad;-><init>(Lcom/google/googlenav/ui/android/AndroidView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->h:Lcom/google/googlenav/ui/android/ad;

    new-instance v0, Lcom/google/googlenav/ui/android/ad;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/ad;-><init>(Lcom/google/googlenav/ui/android/AndroidView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->i:Lcom/google/googlenav/ui/android/ad;

    return-void
.end method

.method private m()Z
    .locals 1

    sget-object v0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    invoke-virtual {v0}, Lcom/google/googlenav/android/af;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()F
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->f:LQ/g;

    invoke-virtual {v0}, LQ/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->f:LQ/g;

    invoke-virtual {v0}, LQ/g;->d()F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/android/w;)V
    .locals 1

    iput-object p1, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/w;

    new-instance v0, Lcom/google/googlenav/ui/android/y;

    invoke-direct {v0, p1}, Lcom/google/googlenav/ui/android/y;-><init>(Lcom/google/googlenav/android/w;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->c:Lcom/google/googlenav/ui/android/y;

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/x;)V
    .locals 5

    const/high16 v4, 0x3f00

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->f:LQ/g;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->l()V

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->b()Lk/m;

    move-result-object v0

    check-cast v0, LaB/h;

    invoke-virtual {v0}, LaB/h;->a()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->l:Landroid/graphics/Canvas;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->n()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->g:Lcom/google/googlenav/ui/android/E;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/android/E;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->b()Lk/m;

    move-result-object v0

    check-cast v0, LaB/h;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->g:Lcom/google/googlenav/ui/android/E;

    invoke-virtual {v0, v1}, LaB/h;->a(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/googlenav/gesture/a;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/gesture/a;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidView;->invalidate()V

    return v0
.end method

.method public a(Lcom/google/googlenav/gesture/b;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/googlenav/gesture/k;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/gesture/C;->b()Lcom/google/googlenav/gesture/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/C;->a()V

    invoke-static {}, Lcom/google/googlenav/gesture/A;->c()Lcom/google/googlenav/gesture/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/A;->d()V

    return-void
.end method

.method public b(Lcom/google/googlenav/ui/x;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->b()Lk/m;

    move-result-object v0

    check-cast v0, LaB/h;

    invoke-virtual {v0}, LaB/h;->a()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->b()Lk/m;

    move-result-object v0

    check-cast v0, LaB/h;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->l:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, LaB/h;->a(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidView;->a(Landroid/view/MotionEvent;IIJ)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidView;->a(Landroid/view/MotionEvent;IIJ)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->k:Z

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/ui/S;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->d:Z

    iget-boolean v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->d:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->d:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidView;->a()V

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->e:LaB/h;

    invoke-virtual {v1, p1}, LaB/h;->a(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v1}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/AndroidView;->e:LaB/h;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aT;->a(Lk/m;)V

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/BaseAndroidView;->onDraw(Landroid/graphics/Canvas;)V

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->m()V

    :cond_2
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    sget-object v0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    invoke-virtual {v0}, Lcom/google/googlenav/android/af;->i()V

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v2, -0x1

    const/4 v3, 0x7

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidView;->a(Landroid/view/MotionEvent;IIJ)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    invoke-virtual {v0}, Lcom/google/googlenav/android/af;->i()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/googlenav/gesture/A;->c()Lcom/google/googlenav/gesture/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/A;->b()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidView;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->h:Lcom/google/googlenav/ui/android/ad;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/ad;->a(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->i:Lcom/google/googlenav/ui/android/ad;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/android/ad;->a(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->j:LaF/a;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/AndroidView;->h:Lcom/google/googlenav/ui/android/ad;

    iget v3, v3, Lcom/google/googlenav/ui/android/ad;->a:I

    iget-object v4, p0, Lcom/google/googlenav/ui/android/AndroidView;->i:Lcom/google/googlenav/ui/android/ad;

    iget v4, v4, Lcom/google/googlenav/ui/android/ad;->a:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/googlenav/ui/android/AndroidView;->h:Lcom/google/googlenav/ui/android/ad;

    iget v4, v4, Lcom/google/googlenav/ui/android/ad;->b:I

    iget-object v5, p0, Lcom/google/googlenav/ui/android/AndroidView;->i:Lcom/google/googlenav/ui/android/ad;

    iget v5, v5, Lcom/google/googlenav/ui/android/ad;->b:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, LaF/a;->a(II)V

    new-instance v0, Lax/b;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/AndroidView;->i:Lcom/google/googlenav/ui/android/ad;

    iget v3, v3, Lcom/google/googlenav/ui/android/ad;->a:I

    iget-object v4, p0, Lcom/google/googlenav/ui/android/AndroidView;->i:Lcom/google/googlenav/ui/android/ad;

    iget v4, v4, Lcom/google/googlenav/ui/android/ad;->b:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/googlenav/ui/android/AndroidView;->j:LaF/a;

    invoke-direct/range {v0 .. v7}, Lax/b;-><init>(IIIIJLaF/a;)V

    :goto_1
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidView;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v1}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->a(Lax/b;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidView;->invalidate()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidView;->j:LaF/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, LaF/a;->a(II)V

    new-instance v0, Lax/b;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/googlenav/ui/android/AndroidView;->j:LaF/a;

    invoke-direct/range {v0 .. v7}, Lax/b;-><init>(IIIIJLaF/a;)V

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidView;->a(Landroid/view/MotionEvent;IIJ)V

    return v3
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidView;->a(Landroid/view/MotionEvent;IIJ)V

    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/googlenav/gesture/C;->b()Lcom/google/googlenav/gesture/C;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/gesture/C;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/googlenav/gesture/A;->c()Lcom/google/googlenav/gesture/A;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/gesture/A;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidView;->a(Landroid/view/MotionEvent;IIJ)V

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method
