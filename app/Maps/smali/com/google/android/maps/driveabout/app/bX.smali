.class public Lcom/google/android/maps/driveabout/app/bX;
.super Ljava/lang/Object;


# instance fields
.field private A:Lcom/google/android/maps/driveabout/app/ax;

.field private B:Ljava/lang/Runnable;

.field private C:Ljava/lang/Runnable;

.field private D:Laa/E;

.field private E:Z

.field private F:Laa/E;

.field private G:F

.field private final H:Lcom/google/android/maps/driveabout/app/r;

.field private final I:Lcom/google/android/maps/driveabout/app/bm;

.field private J:I

.field private K:Lah/I;

.field private L:I

.field protected a:Laa/D;

.field protected b:Lcom/google/android/maps/driveabout/app/NavigationService;

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:Lb/p;

.field protected g:Laa/E;

.field protected h:F

.field protected i:F

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Z

.field protected o:Z

.field protected p:Z

.field protected q:Z

.field protected r:I

.field protected s:I

.field protected t:LF/B;

.field protected u:[LF/u;

.field protected v:[LF/K;

.field protected w:Ljava/lang/String;

.field protected x:Z

.field private y:LF/L;

.field private z:Lcom/google/android/maps/driveabout/app/be;


# direct methods
.method public constructor <init>()V
    .locals 4

    const v3, 0x927c0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bX;->G:F

    iput v3, p0, Lcom/google/android/maps/driveabout/app/bX;->c:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bX;->d:I

    iput v3, p0, Lcom/google/android/maps/driveabout/app/bX;->e:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bX;->h:F

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/bX;->j:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/bX;->k:Z

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/bX;->l:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/bX;->m:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/bX;->n:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/bX;->o:Z

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/bX;->p:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/bX;->q:Z

    new-instance v0, Lcom/google/android/maps/driveabout/app/r;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/r;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->H:Lcom/google/android/maps/driveabout/app/r;

    new-instance v0, Lcom/google/android/maps/driveabout/app/bm;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/bm;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->I:Lcom/google/android/maps/driveabout/app/bm;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bX;->J:I

    iput v1, p0, Lcom/google/android/maps/driveabout/app/bX;->L:I

    return-void
.end method

.method private Y()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->C:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->C:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bX;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->C:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private Z()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->B:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->B:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bX;->b(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/bX;->B:Ljava/lang/Runnable;

    :cond_0
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/bX;->D:Laa/E;

    return-void
.end method

.method private d(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->C:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/app/bw;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bw;-><init>(Lcom/google/android/maps/driveabout/app/bX;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->C:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->C:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/bX;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A()[LF/K;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->v:[LF/K;

    return-object v0
.end method

.method public B()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bX;->J:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bX;->J:I

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->g:Laa/E;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->I:Lcom/google/android/maps/driveabout/app/bm;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bX;->g:Laa/E;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bm;->a(Landroid/location/Location;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public C()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bX;->J:I

    return-void
.end method

.method public D()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->K:Lah/I;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MockLocationManager is already enabled!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lah/I;

    invoke-direct {v0}, Lah/I;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->K:Lah/I;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->a:Laa/D;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bX;->K:Lah/I;

    invoke-virtual {v0, v1}, Laa/D;->a(Lah/I;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->K:Lah/I;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bX;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v1}, Lah/F;->a(Landroid/content/Context;)Lah/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lah/I;->a(LaT/d;)V

    return-void
.end method

.method public E()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->K:Lah/I;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->K:Lah/I;

    invoke-virtual {v0}, Lah/I;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->K:Lah/I;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->a:Laa/D;

    invoke-virtual {v0}, Laa/D;->k()V

    return-void
.end method

.method public F()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->P()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->a:Laa/D;

    invoke-virtual {v0}, Laa/D;->i()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->I()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->J()V

    goto :goto_0
.end method

.method public G()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->P()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->a:Laa/D;

    invoke-virtual {v0}, Laa/D;->h()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bX;->Z()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bX;->Y()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->K()V

    return-void
.end method

.method public H()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->P()V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->j:Z

    return v0
.end method

.method public I()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->E:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->B:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/app/bx;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bx;-><init>(Lcom/google/android/maps/driveabout/app/bX;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->B:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->g:Laa/E;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->D:Laa/E;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->B:Ljava/lang/Runnable;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/bX;->c:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/bX;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public J()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bX;->Z()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->O()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->k:Z

    return-void
.end method

.method public K()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->P()V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->y:LF/L;

    invoke-virtual {v0}, LF/L;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->a:Laa/D;

    invoke-virtual {v0}, Laa/D;->d()V

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/bX;->j:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/bX;->k:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->x()V

    :cond_0
    return-void
.end method

.method public L()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->K()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->L()V

    :cond_0
    return-void
.end method

.method public M()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->E:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->E:Z

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bX;->Z()V

    :cond_0
    return-void
.end method

.method public N()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->E:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->E:Z

    :cond_0
    return-void
.end method

.method protected O()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->P()V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->a:Laa/D;

    invoke-virtual {v0}, Laa/D;->f()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->y:LF/L;

    invoke-virtual {v0}, LF/L;->c()V

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/bX;->j:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/bX;->k:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->x()V

    :cond_0
    return-void
.end method

.method protected P()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->z:Lcom/google/android/maps/driveabout/app/be;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    return-void
.end method

.method public Q()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->P()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->l:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->x()V

    return-void
.end method

.method protected R()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->P()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->m:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->N()V

    return-void
.end method

.method protected S()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->a:Laa/D;

    invoke-virtual {v0}, Laa/D;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->g:Laa/E;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected T()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->P()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->n:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->U()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->S()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->V()V

    goto :goto_0
.end method

.method protected U()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->P()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->n:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->J()V

    return-void
.end method

.method protected V()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->P()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->n:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->K()V

    return-void
.end method

.method public W()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bX;->L:I

    return v0
.end method

.method public X()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bX;->G:F

    return v0
.end method

.method public a(F)LG/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    invoke-virtual {v0, p1}, LF/B;->a(F)LG/o;

    move-result-object v0

    return-object v0
.end method

.method public a()Laa/E;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->g:Laa/E;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->y:LF/L;

    invoke-virtual {v0}, LF/L;->g()V

    iput p1, p0, Lcom/google/android/maps/driveabout/app/bX;->s:I

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/bX;->u:[LF/u;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/bX;->v:[LF/K;

    invoke-static {}, LF/B;->a()LF/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->a:Laa/D;

    invoke-virtual {v0, p1}, Laa/D;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->b()V

    return-void
.end method

.method protected a(ILF/l;LF/B;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->P()V

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    if-nez p1, :cond_2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/bX;->x:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, LF/B;->l()Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/bX;->x:Z

    move v0, v2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bX;->a(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->R()V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0, p2}, Lb/k;->b(LF/l;)V

    goto :goto_0
.end method

.method protected a(LF/B;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->P()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->o:Z

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bX;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bX;->r:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->M()V

    return-void
.end method

.method protected a(LF/L;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bX;->y:LF/L;

    new-instance v0, Lcom/google/android/maps/driveabout/app/eG;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/eG;-><init>(Lcom/google/android/maps/driveabout/app/bX;)V

    invoke-virtual {p1, v0}, LF/L;->a(LF/G;)V

    return-void
.end method

.method public a(Laa/B;)V
    .locals 1

    invoke-virtual {p1}, Laa/B;->c()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bX;->h:F

    invoke-virtual {p1}, Laa/B;->d()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bX;->i:F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->z()V

    return-void
.end method

.method protected a(Laa/D;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bX;->a:Laa/D;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->a:Laa/D;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cD;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/cD;-><init>(Lcom/google/android/maps/driveabout/app/bX;)V

    invoke-virtual {v0, v1}, Laa/D;->a(Laa/C;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->a:Laa/D;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bX;->y:LF/L;

    invoke-virtual {v0, v1}, Laa/D;->a(Laa/C;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->a:Laa/D;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cf;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/app/cf;-><init>(Lcom/google/android/maps/driveabout/app/bX;Lcom/google/android/maps/driveabout/app/bw;)V

    invoke-virtual {v0, v1}, Laa/D;->a(Laa/x;)V

    return-void
.end method

.method protected a(Laa/E;)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x42c8

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->P()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->F:Laa/E;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bX;->G:F

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bX;->F:Laa/E;

    invoke-virtual {v1, p1}, Laa/E;->distanceTo(Landroid/location/Location;)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bX;->G:F

    :cond_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bX;->F:Laa/E;

    invoke-virtual {p1}, Laa/E;->getProvider()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bX;->a:Laa/D;

    invoke-virtual {v1, v0}, Laa/D;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bX;->g:Laa/E;

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/cC;->a(Laa/E;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->T()V

    invoke-virtual {p1}, Laa/E;->e()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p1}, Laa/E;->i()LF/i;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Laa/E;->i()LF/i;

    move-result-object v1

    invoke-virtual {v1}, LF/i;->d()D

    move-result-wide v1

    invoke-virtual {p1}, Laa/E;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, LG/Q;->a(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/app/bX;->p:Z

    if-eqz v3, :cond_5

    const/high16 v3, 0x42a0

    :goto_0
    float-to-double v3, v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    move v0, v6

    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/bX;->p:Z

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_6

    const-string v1, "o"

    :goto_2
    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->p:Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->D:Laa/E;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->g:Laa/E;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bX;->D:Laa/E;

    invoke-virtual {v1}, Laa/E;->l()LG/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Laa/E;->a(LG/y;)F

    move-result v0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bX;->Z()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->I()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->y()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    move v3, v5

    goto :goto_0

    :cond_6
    const-string v1, "O"

    goto :goto_2

    :cond_7
    const-string v1, "driveabout_base_location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_8
    move v0, v6

    goto :goto_1
.end method

.method public a(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/app/be;LF/L;Laa/D;Lcom/google/android/maps/driveabout/app/ax;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bX;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bX;->z:Lcom/google/android/maps/driveabout/app/be;

    sget-object v0, Lb/p;->a:Lb/p;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/app/bX;->A:Lcom/google/android/maps/driveabout/app/ax;

    invoke-static {}, LF/B;->a()LF/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    invoke-virtual {p0, p3}, Lcom/google/android/maps/driveabout/app/bX;->a(LF/L;)V

    invoke-virtual {p0, p4}, Lcom/google/android/maps/driveabout/app/bX;->a(Laa/D;)V

    return-void
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->z:Lcom/google/android/maps/driveabout/app/be;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/be;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->z:Lcom/google/android/maps/driveabout/app/be;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/be;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->P()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->l:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/k;->f(Z)V

    return-void
.end method

.method protected a([LF/o;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, LF/o;->a()Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [LF/u;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LF/u;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->u:[LF/u;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    invoke-virtual {v0}, LF/M;->B()[LF/K;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->v:[LF/K;

    invoke-static {}, LF/c;->a()LF/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bX;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bX;->v:[LF/K;

    invoke-virtual {v0, v1, v2}, LF/c;->a(Landroid/content/Context;[LF/K;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    invoke-virtual {v0}, LF/M;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->A:Lcom/google/android/maps/driveabout/app/ax;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v1

    invoke-virtual {v1}, LF/M;->k()LF/u;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v2

    invoke-virtual {v2}, LF/M;->l()LF/u;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/ax;->a(LF/u;LF/u;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bX;->u:[LF/u;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/bX;->s:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/bX;->v:[LF/K;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/NavigationService;->a([LF/u;I[LF/K;)V

    return-void
.end method

.method public a([LF/u;I[LF/K;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bX;->u:[LF/u;

    iput p2, p0, Lcom/google/android/maps/driveabout/app/bX;->s:I

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/bX;->v:[LF/K;

    invoke-static {}, LF/B;->a()LF/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->a:Laa/D;

    invoke-virtual {v0, p2}, Laa/D;->a(I)V

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/bX;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->b()V

    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bX;->h:F

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/app/bX;->J:I

    return-void
.end method

.method protected b(LF/B;)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->P()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    invoke-virtual {v0}, LF/B;->h()LF/y;

    move-result-object v0

    invoke-virtual {p1}, LF/B;->h()LF/y;

    move-result-object v1

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/bX;->r:I

    if-lez v2, :cond_0

    invoke-virtual {v1}, LF/y;->i()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/app/bX;->r:I

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v2}, Lb/p;->a()Lb/k;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lb/k;->b(LF/y;LF/y;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bX;->H:Lcom/google/android/maps/driveabout/app/r;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    invoke-virtual {v3}, LF/B;->g()LF/M;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/bX;->g:Laa/E;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/google/android/maps/driveabout/app/r;->a(LF/M;LF/y;LF/y;Laa/E;)V

    return-void
.end method

.method protected b(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->z:Lcom/google/android/maps/driveabout/app/be;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/be;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected c(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/app/bX;->L:I

    return-void
.end method

.method protected c(LF/B;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->P()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LF/B;->d()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, LF/B;->d()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bX;->e:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/bX;->d(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->x()V

    return-void
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bX;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    invoke-virtual {v0}, LF/B;->c()I

    move-result v0

    return v0
.end method

.method protected d(LF/B;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->P()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/bX;->o:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/bX;->q:Z

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    invoke-virtual {v0}, LF/M;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->l:Z

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/bX;->x:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/bX;->m:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->a:Laa/D;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Laa/D;->a(LF/M;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->y:LF/L;

    invoke-virtual {v0}, LF/L;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->j()[LF/M;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/k;->b(LF/M;[LF/M;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/k;->b(LF/y;LF/y;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    invoke-virtual {v0}, LF/M;->u()[LF/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bX;->a([LF/o;)V

    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    invoke-virtual {v0}, LF/B;->b()I

    move-result v0

    return v0
.end method

.method protected e(LF/B;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->P()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->o:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->q:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->O()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bX;->Y()V

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bX;->d:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/bX;->d(I)V

    :cond_0
    return-void
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    invoke-virtual {v0}, LF/B;->d()I

    move-result v0

    return v0
.end method

.method protected f(LF/B;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->P()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    invoke-virtual {v1}, LF/B;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lb/k;->b(I)V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->n:Z

    return v0
.end method

.method public h()LF/y;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    invoke-virtual {v0}, LF/B;->h()LF/y;

    move-result-object v0

    return-object v0
.end method

.method public i()LF/M;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    invoke-virtual {v0}, LF/B;->g()LF/M;

    move-result-object v0

    return-object v0
.end method

.method public j()[LF/M;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    invoke-virtual {v0}, LF/B;->f()[LF/M;

    move-result-object v0

    return-object v0
.end method

.method public k()LF/M;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    invoke-virtual {v0}, LF/B;->i()LF/M;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    invoke-virtual {v0}, LF/B;->j()Z

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    invoke-virtual {v0}, LF/B;->k()I

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->q:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    invoke-virtual {v0}, LF/B;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->p:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->t:LF/B;

    invoke-virtual {v0}, LF/B;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->m:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bX;->n:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    invoke-virtual {v0}, LF/M;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->j()[LF/M;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->j()[LF/M;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bX;->r:I

    return v0
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bX;->r:I

    return-void
.end method

.method public v()LF/u;
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->u:[LF/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->u:[LF/u;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->u:[LF/u;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bX;->u:[LF/u;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bX;->v()LF/u;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()[LF/u;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->u:[LF/u;

    return-object v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bX;->s:I

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bX;->w:Ljava/lang/String;

    return-object v0
.end method
