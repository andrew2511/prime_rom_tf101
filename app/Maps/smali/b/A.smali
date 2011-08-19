.class public Lb/A;
.super Lb/k;


# static fields
.field public static final a:Lb/A;

.field private static k:Z


# instance fields
.field private b:F

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/A;

    invoke-direct {v0}, Lb/A;-><init>()V

    sput-object v0, Lb/A;->a:Lb/A;

    const/4 v0, 0x1

    sput-boolean v0, Lb/A;->k:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/k;-><init>()V

    const/high16 v0, -0x4080

    iput v0, p0, Lb/A;->b:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/A;->j:Z

    return-void
.end method

.method private a(F)V
    .locals 2

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->f()V

    invoke-virtual {p0}, Lb/A;->Y()V

    iget v0, p0, Lb/A;->b:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lb/A;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aH;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v0

    add-float/2addr v0, p1

    iput v0, p0, Lb/A;->b:F

    :goto_0
    iget v0, p0, Lb/A;->b:F

    const/high16 v1, 0x41a8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lb/A;->b:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/A;->a(Z)V

    return-void

    :cond_0
    iget v0, p0, Lb/A;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lb/A;->b:F

    goto :goto_0
.end method

.method private af()Z
    .locals 6

    iget-object v0, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v2

    invoke-virtual {v2}, LF/M;->x()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(LF/y;)V
    .locals 3

    if-nez p1, :cond_2

    iget-object v0, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LF/M;->j()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, LF/M;->a(I)LF/y;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, LF/y;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LF/y;->b()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/app/Q;->b(LF/y;)V

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->m()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lb/A;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->b()LF/y;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->n()V

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method protected P()V
    .locals 1

    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lb/A;->a(F)V

    return-void
.end method

.method protected Q()V
    .locals 1

    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Lb/A;->a(F)V

    return-void
.end method

.method protected R()Z
    .locals 2

    iget v0, p0, Lb/A;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lb/A;->S()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected S()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, -0x4080

    iput v0, p0, Lb/A;->b:F

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->g()V

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->i(Z)V

    invoke-virtual {p0, v1}, Lb/A;->a(Z)V

    return-void
.end method

.method protected T()V
    .locals 1

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->n()V

    invoke-virtual {p0}, Lb/A;->o()V

    return-void
.end method

.method protected U()V
    .locals 3

    iget-object v0, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LF/M;->j()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, LF/M;->a(I)LF/y;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LF/y;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/A;->h:Lb/p;

    sget-object v1, Lb/j;->a:Lb/j;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    :cond_0
    return-void
.end method

.method protected X()I
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v0

    invoke-virtual {v0}, Laa/E;->hasBearing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->o()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v0

    iget-object v1, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v1

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->v()LF/u;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0}, LF/y;->b()I

    move-result v0

    if-ne v0, v2, :cond_5

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method protected a(FFF)V
    .locals 1

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->f()V

    invoke-virtual {p0}, Lb/A;->Y()V

    iput p1, p0, Lb/A;->b:F

    return-void
.end method

.method protected a(LF/M;[LF/M;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lb/k;->a(LF/M;[LF/M;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/A;->b(LF/y;)V

    invoke-virtual {p0}, Lb/A;->o()V

    return-void
.end method

.method protected a(LF/y;LF/y;)V
    .locals 0

    invoke-virtual {p0, p2}, Lb/A;->a(LF/y;)V

    invoke-direct {p0, p2}, Lb/A;->b(LF/y;)V

    invoke-virtual {p0}, Lb/A;->o()V

    return-void
.end method

.method protected a(Z)V
    .locals 4

    invoke-virtual {p0}, Lb/A;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->W()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-boolean v1, p0, Lb/A;->j:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/A;->j:Z

    iget-object v1, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/app/Q;->d()V

    :cond_0
    iget-object v1, p0, Lb/A;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v1

    iget-object v2, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    iget v3, p0, Lb/A;->b:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/app/bX;FZ)V

    return-void
.end method

.method protected ab()V
    .locals 3

    sget-object v0, Lb/j;->a:Lb/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/j;->b(Z)V

    iget-object v0, p0, Lb/A;->h:Lb/p;

    sget-object v1, Lb/j;->a:Lb/j;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "FOLLOW_LOCATION"

    return-object v0
.end method

.method public g()V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/Q;->b(I)V

    iget v0, p0, Lb/A;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->f()V

    invoke-virtual {p0}, Lb/A;->Y()V

    :cond_0
    iget-object v0, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/Q;->k(Z)V

    :goto_0
    iget-object v0, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/A;->a(LF/y;)V

    iget-object v0, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->g()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->k()V

    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/A;->b(LF/y;)V

    invoke-virtual {p0}, Lb/A;->o()V

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->s()V

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v4}, Lcom/google/android/maps/driveabout/app/Q;->l(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v1

    new-array v2, v2, [LF/M;

    iget-object v3, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/Q;->b(LF/M;[LF/M;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v4}, Lcom/google/android/maps/driveabout/app/Q;->k(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->l()V

    goto :goto_1
.end method

.method protected g(Z)V
    .locals 0

    invoke-virtual {p0}, Lb/A;->o()V

    return-void
.end method

.method public h()V
    .locals 2

    sget-boolean v0, Lb/A;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lb/A;->k:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lb/a;

    invoke-direct {v1, p0}, Lb/a;-><init>(Lb/A;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->u()V

    const/high16 v0, -0x4080

    iput v0, p0, Lb/A;->b:F

    const-string v0, "UIState"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/i;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/A;->g()V

    return-void
.end method

.method public k()V
    .locals 0

    invoke-virtual {p0}, Lb/A;->l()V

    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->g()V

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->n()V

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->h()V

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->j()V

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->i(Z)V

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->v()V

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->l(Z)V

    return-void
.end method

.method protected o()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->j()[LF/M;

    move-result-object v0

    iget-object v1, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->t()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->n()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lb/A;->af()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->h()V

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->j()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->t()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_4

    if-eqz v0, :cond_3

    array-length v0, v0

    if-le v0, v3, :cond_3

    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v3}, Lcom/google/android/maps/driveabout/app/Q;->d(Z)V

    :goto_1
    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/A;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/e;->k()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->g(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->h()V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    array-length v0, v0

    if-gt v0, v3, :cond_1

    :cond_5
    iget-object v0, p0, Lb/A;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->h()V

    goto :goto_0
.end method

.method protected u()V
    .locals 2

    iget-object v0, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/A;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lb/A;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->f()V

    :cond_1
    return-void
.end method
