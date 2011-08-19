.class public Lcom/google/android/maps/driveabout/vector/cx;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;

# interfaces
.implements Lcom/google/googlenav/gesture/p;


# static fields
.field private static final a:D


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/maps/driveabout/vector/cx;->a:D

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/VectorMapView;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->h:Z

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cx;->c:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cx;->d:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cx;->e:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cx;->f:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cx;->g:Z

    return-void
.end method

.method private static b(Lcom/google/googlenav/gesture/a;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/googlenav/gesture/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/gesture/a;->e()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fefae147ae147aeL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/gesture/a;->e()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff003afb7e90ff9L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cx;->c:Z

    return-void
.end method

.method public a(Lcom/google/googlenav/gesture/a;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v4, 0x4000

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h()Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v0

    const/high16 v1, -0x4080

    const/16 v2, 0x14a

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bD;->b(FI)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(FFF)V

    :cond_0
    :goto_0
    move v0, v7

    :goto_1
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->g:Z

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/cx;->b(Lcom/google/googlenav/gesture/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->e()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/google/android/maps/driveabout/vector/cx;->a:D

    div-double/2addr v0, v2

    double-to-float v0, v0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cx;->g:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->a()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->b()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->c()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->d()F

    move-result v5

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/cx;->b(Lcom/google/googlenav/gesture/a;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->f()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->h()Z

    move-result v0

    if-nez v0, :cond_3

    move v6, v7

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h()Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/bD;->b(FFFFFZ)F

    move-result v0

    move v1, v3

    :goto_3
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v3, v0, v2, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(FFF)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h()Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Lcom/google/android/maps/driveabout/vector/bD;->b(FI)F

    move-result v0

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_3

    :cond_5
    move v1, v0

    goto :goto_2
.end method

.method public a(Lcom/google/googlenav/gesture/b;)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h()Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/b;->a()F

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bD;->a(FI)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/gesture/k;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/google/googlenav/gesture/k;->a(FF)V

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/k;->a()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/k;->b()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/k;->c()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/k;->d()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/k;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/k;->g()Z

    move-result v0

    if-nez v0, :cond_0

    move v6, v11

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h()Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/k;->e()F

    move-result v5

    const/high16 v7, 0x4334

    mul-float/2addr v5, v7

    float-to-double v7, v5

    const-wide v9, 0x400921fb54442d18L

    div-double/2addr v7, v9

    double-to-float v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/bD;->a(FFFFFZ)F

    move v0, v11

    :goto_1
    return v0

    :cond_0
    move v6, v5

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cx;->d:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cx;->e:Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cx;->f:Z

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cx;->g:Z

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7

    const/high16 v3, 0x4000

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/maps/driveabout/vector/cx;->h:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->d:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h()Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v2

    const/high16 v3, 0x3f80

    const/16 v4, 0x14a

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/google/android/maps/driveabout/vector/bD;->a(FFFI)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v3, v2, v1, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(FFF)V

    move v0, v5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d(FF)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->h:Z

    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h()Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/android/maps/driveabout/vector/bD;->b(FF)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, p2, v1, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Landroid/view/MotionEvent;FF)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c(FF)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h()Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/android/maps/driveabout/vector/bD;->a(FF)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b(FF)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cx;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e(FF)Z

    move-result v0

    return v0
.end method
