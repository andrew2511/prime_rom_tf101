.class public Lcom/google/android/maps/driveabout/vector/u;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljavax/microedition/khronos/opengles/GL10;

.field final b:Lcom/google/android/maps/driveabout/vector/V;

.field final c:Z

.field private final d:Lcom/google/android/maps/driveabout/vector/x;

.field private final e:[I

.field private f:I

.field private g:I

.field private h:[I

.field private i:I

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/Integer;

.field private l:Z

.field private m:J

.field private n:J

.field private o:Z


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/x;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/u;->o:Z

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/V;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/V;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->b:Lcom/google/android/maps/driveabout/vector/V;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/u;->d:Lcom/google/android/maps/driveabout/vector/x;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/u;->y()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->e:[I

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/u;->f:I

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->h:[I

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/u;->i:I

    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v0, :cond_0

    const/16 v0, 0x1f02

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/u;->c:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->g:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/u;->g:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->e:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/u;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/u;->f:I

    aput p1, v0, v1

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->g:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/u;->g:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->e:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/u;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/u;->f:I

    const/high16 v2, 0x4000

    or-int/2addr v2, p1

    aput v2, v0, v1

    goto :goto_0
.end method

.method private y()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xbd0

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x405

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x901

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1d01

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xc50

    const/16 v2, 0x1102

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/u;->g:I

    return-void
.end method

.method private z()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->h:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/u;->h:[I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->h:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->h:[I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/u;->l:Z

    return-void
.end method

.method public a(J)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/u;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/maps/driveabout/vector/u;->m:J

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/u;->m:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/u;->m:J

    goto :goto_0
.end method

.method public a(I)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->b:Lcom/google/android/maps/driveabout/vector/V;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/V;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/u;->l:Z

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b()J
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/u;->m:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/u;->m:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->b:Lcom/google/android/maps/driveabout/vector/V;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/V;->b(I)V

    return-void
.end method

.method public declared-synchronized c(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->i:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/u;->h:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/u;->z()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->h:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/u;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/u;->i:I

    aput p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/u;->l:Z

    return v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/u;->n:J

    return-wide v0
.end method

.method e()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->b:Lcom/google/android/maps/driveabout/vector/V;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/V;->a()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/u;->n:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/u;->l:Z

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/u;->m:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/u;->n:J

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/u;->m:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iput-wide v4, p0, Lcom/google/android/maps/driveabout/vector/u;->m:J

    :cond_0
    return-void
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->b:Lcom/google/android/maps/driveabout/vector/V;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/V;->b()V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/u;->o:Z

    return v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/u;->o:Z

    return-void
.end method

.method public i()Lcom/google/android/maps/driveabout/vector/x;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->d:Lcom/google/android/maps/driveabout/vector/x;

    return-object v0
.end method

.method public j()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->g:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8074

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    invoke-direct {p0, v2, v2}, Lcom/google/android/maps/driveabout/vector/u;->a(IZ)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->g:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8076

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/u;->a(IZ)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->g:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/u;->a(IZ)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/u;->a(IZ)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->g:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/u;->a(IZ)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->g:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xbd0

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/u;->a(IZ)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->g:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/u;->o:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x20

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/driveabout/vector/u;->a(IZ)V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->g:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8037

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x40

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/u;->a(IZ)V

    :cond_0
    return-void
.end method

.method public r()Ljavax/microedition/khronos/opengles/GL10;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    return-object v0
.end method

.method public s()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->e:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/u;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/u;->f:I

    const v2, 0x7fffffff

    aput v2, v0, v1

    return-void
.end method

.method public t()V
    .locals 10

    const/16 v9, 0xde1

    const/16 v8, 0xbe2

    const/16 v7, 0xbd0

    const/16 v6, 0xb71

    const/4 v5, 0x1

    :goto_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->f:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/u;->f:I

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->e:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/u;->f:I

    aget v0, v0, v1

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->e:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/u;->f:I

    aget v0, v0, v1

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v5

    :goto_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/u;->e:[I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/u;->f:I

    aget v1, v1, v2

    const v2, 0x3fffffff

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_0

    const-string v2, "GLState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown graphics state op: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/u;->g:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8074

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8074

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_2

    :sswitch_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8078

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8078

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_2

    :sswitch_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_2

    :sswitch_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8076

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8076

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_2

    :sswitch_4
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_2

    :sswitch_5
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_2

    :sswitch_6
    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8037

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto/16 :goto_2

    :cond_7
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8037

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_2

    :cond_8
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->g:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/u;->g:I

    goto/16 :goto_0

    :cond_9
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
    .end sparse-switch
.end method

.method public declared-synchronized u()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->i:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/u;->i:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->h:[I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/u;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public v()I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->j:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0xd33

    invoke-interface {v1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->j:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public w()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->k:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v2, 0x846e

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->k:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/u;->c:Z

    return v0
.end method
