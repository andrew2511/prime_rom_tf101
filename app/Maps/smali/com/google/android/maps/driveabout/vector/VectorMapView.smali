.class public Lcom/google/android/maps/driveabout/vector/VectorMapView;
.super Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bM;
.implements Lcom/google/android/maps/driveabout/vector/bO;
.implements Lcom/google/android/maps/driveabout/vector/bw;


# instance fields
.field protected a:Lcom/google/android/maps/driveabout/vector/bD;

.field private final b:Lcom/google/android/maps/driveabout/vector/aJ;

.field private c:Lcom/google/android/maps/driveabout/vector/bj;

.field private d:Landroid/view/GestureDetector;

.field private e:Lcom/google/android/maps/driveabout/vector/aU;

.field private f:Lcom/google/android/maps/driveabout/vector/bl;

.field private g:Lcom/google/android/maps/driveabout/vector/cx;

.field private h:Lcom/google/android/maps/driveabout/vector/cr;

.field private i:Z

.field private j:Lcom/google/android/maps/driveabout/vector/bI;

.field private k:J

.field private l:Z

.field private m:Lcom/google/android/maps/driveabout/vector/ak;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aJ;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/aJ;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b:Lcom/google/android/maps/driveabout/vector/aJ;

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->k:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->l:Z

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->x()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aJ;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/aJ;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b:Lcom/google/android/maps/driveabout/vector/aJ;

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->k:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->l:Z

    return-void
.end method

.method private x()V
    .locals 7

    const/16 v2, 0x100

    const/4 v5, 0x1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cx;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/cx;-><init>(Lcom/google/android/maps/driveabout/vector/VectorMapView;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-static {}, Lcom/google/googlenav/gesture/A;->c()Lcom/google/googlenav/gesture/A;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/gesture/A;->a(Landroid/content/Context;Lcom/google/googlenav/gesture/p;)V

    invoke-static {}, Lcom/google/googlenav/gesture/A;->c()Lcom/google/googlenav/gesture/A;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/gesture/A;->a(Landroid/content/pm/PackageManager;)V

    invoke-static {}, Lcom/google/googlenav/gesture/A;->c()Lcom/google/googlenav/gesture/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/A;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/gesture/C;->b()Lcom/google/googlenav/gesture/C;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/cx;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/googlenav/gesture/C;->a(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :goto_0
    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setFocusable(Z)V

    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bF;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bF;->b:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v5, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bF;-><init>(Lcom/google/android/maps/driveabout/vector/bI;IIFLjava/lang/Thread;)V

    new-instance v1, Lcom/google/android/maps/driveabout/vector/bj;

    invoke-direct {v1, p0, v6, v0}, Lcom/google/android/maps/driveabout/vector/bj;-><init>(Lcom/google/android/maps/driveabout/vector/bw;Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/bF;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aS;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e(I)V

    return-void

    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d:Landroid/view/GestureDetector;

    invoke-virtual {v0, v5}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0
.end method

.method private y()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bj;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adreno"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()LM/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bj;->n()LM/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lcom/google/android/maps/driveabout/vector/bS;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/driveabout/vector/bj;->a(Landroid/content/Context;Z)Lcom/google/android/maps/driveabout/vector/bS;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/google/android/maps/driveabout/vector/bq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bj;->c(I)Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    return-object v0
.end method

.method a(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e:Lcom/google/android/maps/driveabout/vector/aU;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;FFF)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bj;->a(II)V

    return-void
.end method

.method public a(LM/d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bj;->n()LM/b;

    move-result-object v0

    invoke-virtual {v0, p1}, LM/b;->a(LM/d;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/K;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bj;->a(Lcom/google/android/maps/driveabout/vector/K;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e:Lcom/google/android/maps/driveabout/vector/aU;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aj;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bj;->a(Lcom/google/android/maps/driveabout/vector/aj;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/ak;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bj;->a(Lcom/google/android/maps/driveabout/vector/ak;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bD;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/bD;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/bw;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/bD;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/bY;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bj;->a(Lcom/google/android/maps/driveabout/vector/a;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/bl;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cA;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->i:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bj;->a(Lcom/google/android/maps/driveabout/vector/cA;Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cM;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bj;->a(Lcom/google/android/maps/driveabout/vector/cM;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bj;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bj;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bj;->e()V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bj;->d()V

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->u()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method a(FF)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bj;->m()Lcom/google/android/maps/driveabout/vector/r;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->p()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bF;-><init>(Lcom/google/android/maps/driveabout/vector/bI;IIF)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bF;->d(FF)LG/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bj;->m()Lcom/google/android/maps/driveabout/vector/r;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/google/android/maps/driveabout/vector/r;->b(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/view/MotionEvent;FF)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bj;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v8

    move-object v3, v0

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cr;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cr;->C_()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_0

    new-instance v3, Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->p()F

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/maps/driveabout/vector/bF;-><init>(Lcom/google/android/maps/driveabout/vector/bI;IIF)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0, v4, v5, v3}, Lcom/google/android/maps/driveabout/vector/cr;->b(FFLcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->j()V

    move v0, v8

    :goto_1
    return v0

    :cond_1
    move-object v0, v3

    add-int/lit8 v2, v2, -0x1

    move-object v3, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e:Lcom/google/android/maps/driveabout/vector/aU;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-interface {v0, p0, p2, p3}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;FF)V

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bj;->a(Ljava/util/List;)V

    return-void
.end method

.method b(FF)V
    .locals 10

    const/4 v9, 0x1

    new-instance v4, Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->p()F

    move-result v3

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bF;-><init>(Lcom/google/android/maps/driveabout/vector/bI;IIF)V

    invoke-virtual {v4, p1, p2}, Lcom/google/android/maps/driveabout/vector/bF;->d(FF)LG/Q;

    move-result-object v3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->i:Z

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bj;->n()LM/b;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bj;->n()LM/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3, v4}, LM/b;->a_(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bj;->m()Lcom/google/android/maps/driveabout/vector/r;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bj;->m()Lcom/google/android/maps/driveabout/vector/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/google/android/maps/driveabout/vector/r;->a_(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/bl;

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/bl;

    invoke-interface {v0, p0, v3}, Lcom/google/android/maps/driveabout/vector/bl;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;LG/Q;)Z

    move-result v0

    :cond_2
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bj;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sub-int/2addr v6, v9

    move v7, v0

    :goto_0
    if-nez v7, :cond_4

    if-ltz v6, :cond_4

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cr;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cr;->V_()Z

    move-result v8

    if-eqz v8, :cond_3

    check-cast v0, Lcom/google/android/maps/driveabout/vector/au;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v7

    :goto_1
    add-int/lit8 v6, v6, -0x1

    move v7, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/bj;->m()Lcom/google/android/maps/driveabout/vector/r;

    move-result-object v8

    if-eq v0, v8, :cond_9

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/google/android/maps/driveabout/vector/cr;->a_(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v9

    goto :goto_1

    :cond_4
    if-nez v7, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->j:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-virtual {p0, v9}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b(Z)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b:Lcom/google/android/maps/driveabout/vector/aJ;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/aJ;->a(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v9

    :goto_2
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e:Lcom/google/android/maps/driveabout/vector/aU;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-interface {v0, p0, v3}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;LG/Q;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->j:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->u()V

    return-void

    :cond_8
    move v0, v7

    goto :goto_2

    :cond_9
    move v0, v7

    goto :goto_1
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bj;->d(I)V

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m:Lcom/google/android/maps/driveabout/vector/ak;

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/cr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bj;->b(Lcom/google/android/maps/driveabout/vector/cr;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/cr;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b:Lcom/google/android/maps/driveabout/vector/aJ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aJ;->a(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bj;->e()V

    return-void
.end method

.method c(FF)V
    .locals 8

    const/4 v7, 0x1

    new-instance v1, Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->p()F

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bF;-><init>(Lcom/google/android/maps/driveabout/vector/bI;IIF)V

    invoke-virtual {v1, p1, p2}, Lcom/google/android/maps/driveabout/vector/bF;->d(FF)LG/Q;

    move-result-object v2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bj;->m()Lcom/google/android/maps/driveabout/vector/r;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bj;->m()Lcom/google/android/maps/driveabout/vector/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/google/android/maps/driveabout/vector/r;->c(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    :cond_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/bl;

    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/bl;

    invoke-interface {v0, p0, v2}, Lcom/google/android/maps/driveabout/vector/bl;->b(Lcom/google/android/maps/driveabout/vector/VectorMapView;LG/Q;)Z

    move-result v0

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bj;->g()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v7

    move v5, v0

    :goto_1
    if-ltz v5, :cond_3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cr;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/vector/bj;->m()Lcom/google/android/maps/driveabout/vector/r;

    move-result-object v6

    if-eq v0, v6, :cond_2

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/google/android/maps/driveabout/vector/cr;->c(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    :goto_2
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e:Lcom/google/android/maps/driveabout/vector/aU;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-interface {v0, p0, v2}, Lcom/google/android/maps/driveabout/vector/aU;->b(Lcom/google/android/maps/driveabout/vector/VectorMapView;LG/Q;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->u()V

    return-void

    :cond_2
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v3, v0

    goto :goto_0
.end method

.method protected c(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bj;->b(I)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cx;->a(Z)V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m()V

    invoke-super {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d()V

    return-void
.end method

.method d(FF)V
    .locals 5

    new-instance v1, Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->p()F

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bF;-><init>(Lcom/google/android/maps/driveabout/vector/bI;IIF)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bj;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    move v3, v0

    :goto_0
    if-ltz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cr;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/vector/cr;->a(FFLcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/cr;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->u()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bj;->e(I)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cx;->b(Z)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->l:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bj;->b()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cx;->c(Z)V

    return-void
.end method

.method e(FF)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bj;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v8

    move-object v3, v2

    move-object v4, v2

    move v2, v0

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cr;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cr;->C_()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v4, :cond_0

    new-instance v3, Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->p()F

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/maps/driveabout/vector/bF;-><init>(Lcom/google/android/maps/driveabout/vector/bI;IIF)V

    invoke-virtual {v3, p1, p2}, Lcom/google/android/maps/driveabout/vector/bF;->d(FF)LG/Q;

    move-result-object v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    :cond_0
    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/google/android/maps/driveabout/vector/cr;->d(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    :goto_1
    return v0

    :cond_1
    move-object v0, v3

    move-object v3, v4

    add-int/lit8 v2, v2, -0x1

    move-object v4, v3

    move-object v3, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public f()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->k:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/bj;->b(Z)V

    :goto_0
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->k:J

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/bj;->b(Z)V

    goto :goto_0
.end method

.method public f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cx;->d(Z)V

    return-void
.end method

.method public g()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bj;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->l:Z

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cx;->e(Z)V

    return-void
.end method

.method public h()Lcom/google/android/maps/driveabout/vector/bD;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/bD;

    return-object v0
.end method

.method public i()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->u()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bj;->j()Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(ZZ)V

    return-void
.end method

.method public k()Lcom/google/android/maps/driveabout/vector/bF;
    .locals 5

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->p()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bF;-><init>(Lcom/google/android/maps/driveabout/vector/bI;IIF)V

    return-object v0
.end method

.method public l()LG/F;
    .locals 5

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->p()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bF;-><init>(Lcom/google/android/maps/driveabout/vector/bI;IIF)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bF;->t()LG/F;

    move-result-object v0

    return-object v0
.end method

.method m()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/cr;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cr;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/cr;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->u()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->i:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bj;->k()V

    return-void
.end method

.method public o()Lcom/google/android/maps/driveabout/vector/ae;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bj;->l()Lcom/google/android/maps/driveabout/vector/ae;

    move-result-object v0

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->onFinishInflate()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->x()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/googlenav/gesture/A;->c()Lcom/google/googlenav/gesture/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/A;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/googlenav/gesture/C;->b()Lcom/google/googlenav/gesture/C;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/gesture/C;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
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

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e(FF)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-wide/16 v0, 0x14

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bj;->a(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public p()F
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()Lcom/google/android/maps/driveabout/vector/aS;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/bj;

    return-object v0
.end method

.method public s()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->t()Lcom/google/android/maps/driveabout/vector/ak;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/ak;)V

    return-void
.end method

.method public t()Lcom/google/android/maps/driveabout/vector/ak;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m:Lcom/google/android/maps/driveabout/vector/ak;

    return-object v0
.end method
