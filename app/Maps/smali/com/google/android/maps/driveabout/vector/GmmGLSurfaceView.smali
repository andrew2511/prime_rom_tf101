.class public Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final a:Lcom/google/android/maps/driveabout/vector/cI;


# instance fields
.field private b:Z

.field private c:Lcom/google/android/maps/driveabout/vector/J;

.field private d:Lcom/google/android/maps/driveabout/vector/aS;

.field private e:Z

.field private f:Lcom/google/android/maps/driveabout/vector/ar;

.field private g:Lcom/google/android/maps/driveabout/vector/at;

.field private h:Lcom/google/android/maps/driveabout/vector/aR;

.field private i:Lcom/google/android/maps/driveabout/vector/H;

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cI;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cI;-><init>(Lcom/google/android/maps/driveabout/vector/co;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->a:Lcom/google/android/maps/driveabout/vector/cI;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->b:Z

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->b:Z

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->k:I

    return v0
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/ar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f:Lcom/google/android/maps/driveabout/vector/ar;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/J;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/at;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->g:Lcom/google/android/maps/driveabout/vector/at;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/aR;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->h:Lcom/google/android/maps/driveabout/vector/aR;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/H;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->i:Lcom/google/android/maps/driveabout/vector/H;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->j:I

    return v0
.end method

.method static synthetic g(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->l:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->b:Z

    return v0
.end method

.method static synthetic i(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/J;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/J;

    return-object v0
.end method

.method static synthetic w()Lcom/google/android/maps/driveabout/vector/cI;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->a:Lcom/google/android/maps/driveabout/vector/cI;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aS;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f:Lcom/google/android/maps/driveabout/vector/ar;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bZ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/vector/bZ;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;Z)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f:Lcom/google/android/maps/driveabout/vector/ar;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->g:Lcom/google/android/maps/driveabout/vector/at;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aZ;

    invoke-direct {v0, p0, v2}, Lcom/google/android/maps/driveabout/vector/aZ;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;Lcom/google/android/maps/driveabout/vector/co;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->g:Lcom/google/android/maps/driveabout/vector/at;

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->h:Lcom/google/android/maps/driveabout/vector/aR;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/C;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/C;-><init>(Lcom/google/android/maps/driveabout/vector/co;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->h:Lcom/google/android/maps/driveabout/vector/aR;

    :cond_2
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d:Lcom/google/android/maps/driveabout/vector/aS;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/J;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/vector/J;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;Lcom/google/android/maps/driveabout/vector/aS;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/J;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/J;->start()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/J;->f()V

    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/J;->a(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d:Lcom/google/android/maps/driveabout/vector/aS;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/J;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v0

    :goto_0
    new-instance v1, Lcom/google/android/maps/driveabout/vector/J;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d:Lcom/google/android/maps/driveabout/vector/aS;

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/vector/J;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;Lcom/google/android/maps/driveabout/vector/aS;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/J;

    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/J;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/J;->start()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->e:Z

    return-void

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/J;->h()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->e:Z

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/maps/driveabout/vector/J;->a(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/J;->d()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/J;->e()V

    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/J;->c()V

    return-void
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/J;->g()V

    return-void
.end method
