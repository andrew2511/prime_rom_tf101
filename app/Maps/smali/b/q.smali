.class public Lb/q;
.super Lb/k;


# static fields
.field public static final a:Lb/q;


# instance fields
.field private b:J

.field private volatile j:Z

.field private k:Z

.field private l:Lb/B;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/q;

    invoke-direct {v0}, Lb/q;-><init>()V

    sput-object v0, Lb/q;->a:Lb/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lb/k;-><init>()V

    new-instance v0, Lb/B;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/B;-><init>(Lb/q;Lb/u;)V

    iput-object v0, p0, Lb/q;->l:Lb/B;

    return-void
.end method

.method static synthetic a(Lb/q;Z)Z
    .locals 0

    iput-boolean p1, p0, Lb/q;->j:Z

    return p1
.end method


# virtual methods
.method protected U()V
    .locals 1

    iget-object v0, p0, Lb/q;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->h()V

    return-void
.end method

.method protected Z()V
    .locals 5

    iget-object v0, p0, Lb/q;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/q;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    iget-object v2, p0, Lb/q;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v2

    iget-object v3, p0, Lb/q;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/Q;->a(IZIZ)V

    return-void

    :cond_0
    iget-object v1, p0, Lb/q;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->d()I

    move-result v1

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lb/q;->b:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v2, 0x320

    add-long/2addr v0, v2

    iput-wide v0, p0, Lb/q;->b:J

    iget-object v0, p0, Lb/q;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/q;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v0

    iget-object v1, p0, Lb/q;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v1

    iget-object v2, p0, Lb/q;->g:Lcom/google/android/maps/driveabout/app/bX;

    const v3, 0x47435000

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/app/bX;->a(F)LG/o;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/aH;->a(Landroid/location/Location;LG/o;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/q;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v0

    iget-object v1, p0, Lb/q;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->a(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "INSPECT_TRAFFIC"

    return-object v0
.end method

.method public g()V
    .locals 6

    const/4 v5, 0x1

    iput-boolean v5, p0, Lb/q;->j:Z

    iget-object v0, p0, Lb/q;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/q;->l:Lb/B;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->a(Lcom/google/android/maps/driveabout/vector/bm;)V

    iget-object v0, p0, Lb/q;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->b(I)V

    iget-object v0, p0, Lb/q;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->f()V

    iget-object v0, p0, Lb/q;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v5}, Lcom/google/android/maps/driveabout/app/Q;->a(Z)V

    iget-object v0, p0, Lb/q;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->s()V

    iget-object v0, p0, Lb/q;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/q;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/q;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->b(LF/M;)V

    iget-object v0, p0, Lb/q;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/q;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/q;->a(LF/y;)V

    :cond_0
    iget-object v0, p0, Lb/q;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/q;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/q;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v1

    new-array v2, v5, [LF/M;

    const/4 v3, 0x0

    iget-object v4, p0, Lb/q;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/Q;->b(LF/M;[LF/M;)V

    :cond_1
    iget-object v0, p0, Lb/q;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->j()[LF/M;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/q;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->j()[LF/M;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v5, :cond_2

    iget-object v0, p0, Lb/q;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lb/q;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v5}, Lcom/google/android/maps/driveabout/app/Q;->d(Z)V

    :cond_3
    return-void
.end method

.method protected h(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lb/q;->h:Lb/p;

    invoke-virtual {v0}, Lb/p;->c()Z

    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lb/q;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/q;->l:Lb/B;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->b(Lcom/google/android/maps/driveabout/vector/bm;)V

    iget-object v0, p0, Lb/q;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->g()V

    iget-object v0, p0, Lb/q;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->x()V

    iget-object v0, p0, Lb/q;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/Q;->a(Z)V

    iget-object v0, p0, Lb/q;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/Q;->i(Z)V

    iget-object v0, p0, Lb/q;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->h()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lb/q;->b:J

    return-void
.end method

.method public m()V
    .locals 2

    iget-boolean v0, p0, Lb/q;->k:Z

    iput-boolean v0, p0, Lb/q;->j:Z

    iget-boolean v0, p0, Lb/q;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/q;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/q;->l:Lb/B;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->b(Lcom/google/android/maps/driveabout/vector/bm;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    iget-boolean v0, p0, Lb/q;->j:Z

    iput-boolean v0, p0, Lb/q;->k:Z

    return-void
.end method

.method protected p()V
    .locals 2

    iget-object v0, p0, Lb/q;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->c(I)V

    return-void
.end method
