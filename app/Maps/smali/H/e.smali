.class public LH/e;
.super Lak/m;


# static fields
.field private static a:LH/e;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:J

.field private static m:Z


# instance fields
.field private e:I

.field private f:Lf/h;

.field private g:Lf/h;

.field private h:I

.field private i:I

.field private j:[J

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "savedLocationShiftCoefficients"

    sput-object v0, LH/e;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LH/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_lock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LH/e;->c:Ljava/lang/String;

    const-wide/32 v0, 0xf4240

    sput-wide v0, LH/e;->d:J

    const/4 v0, 0x0

    sput-boolean v0, LH/e;->m:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lak/m;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [J

    iput-object v0, p0, LH/e;->j:[J

    iput v1, p0, LH/e;->k:I

    iput v1, p0, LH/e;->l:I

    invoke-virtual {p0}, LH/e;->l()V

    return-void
.end method

.method private static a(Ln/a;)Ln/o;
    .locals 1

    instance-of v0, p0, Ln/i;

    if-eqz v0, :cond_0

    check-cast p0, Ln/i;

    sget-object v0, LH/e;->c:Ljava/lang/String;

    invoke-interface {p0, v0}, Ln/i;->e(Ljava/lang/String;)Ln/o;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ln/o;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ln/o;->a()Z

    :cond_0
    return-void
.end method

.method private a(Lf/h;I)Z
    .locals 8

    const-wide/16 v6, 0x168

    const/4 v5, 0x0

    iget-object v0, p0, LH/e;->f:Lf/h;

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lf/h;->b()I

    move-result v0

    iget-object v1, p0, LH/e;->f:Lf/h;

    invoke-virtual {v1}, Lf/h;->b()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, p2, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lf/h;->d()I

    move-result v0

    iget-object v1, p0, LH/e;->f:Lf/h;

    invoke-virtual {v1}, Lf/h;->d()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_1
    if-gez v0, :cond_2

    int-to-long v0, v0

    sget-wide v2, LH/e;->d:J

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_1

    :cond_2
    sget-wide v1, LH/e;->d:J

    mul-long/2addr v1, v6

    int-to-long v3, v0

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v0, p2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_0
.end method

.method public static e(Lf/h;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lf/h;->b()I

    move-result v0

    const v1, 0x2dc6c0

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lf/h;->b()I

    move-result v0

    const v1, 0x337f980

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lf/h;->d()I

    move-result v0

    const v1, 0x44aa200

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lf/h;->d()I

    move-result v0

    const v1, 0x81b3200

    if-le v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    invoke-static {}, LaW/a;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1cc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x460

    if-ne v0, v1, :cond_3

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public static i()LH/e;
    .locals 1

    sget-object v0, LH/e;->a:LH/e;

    if-nez v0, :cond_0

    invoke-static {}, LH/e;->o()V

    :cond_0
    sget-object v0, LH/e;->a:LH/e;

    return-object v0
.end method

.method private static declared-synchronized o()V
    .locals 2

    const-class v0, LH/e;

    monitor-enter v0

    :try_start_0
    new-instance v1, LH/e;

    invoke-direct {v1}, LH/e;-><init>()V

    sput-object v1, LH/e;->a:LH/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x35

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/F;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x2

    iget-object v2, p0, LH/e;->g:Lf/h;

    invoke-virtual {v2}, Lf/h;->f()Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Lf/h;)Z
    .locals 1

    iget v0, p0, LH/e;->h:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0}, LH/e;->a(Lf/h;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ls/F;->b:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v6}, Law/e;->d(I)I

    move-result v1

    iput v1, p0, LH/e;->e:I

    iget v1, p0, LH/e;->e:I

    if-eqz v1, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v1, v5

    :goto_1
    const/4 v2, 0x6

    if-ge v1, v2, :cond_3

    iget-object v2, p0, LH/e;->j:[J

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Law/e;->d(II)J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v1

    iput v1, p0, LH/e;->i:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v1

    iput v1, p0, LH/e;->h:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lf/h;->a(Law/e;)Lf/h;

    move-result-object v0

    iput-object v0, p0, LH/e;->f:Lf/h;

    iget v0, p0, LH/e;->e:I

    if-nez v0, :cond_4

    invoke-virtual {p0}, LH/e;->n()V

    :cond_4
    iget v0, p0, LH/e;->e:I

    if-nez v0, :cond_5

    move v0, v6

    goto :goto_0

    :cond_5
    move v0, v5

    goto :goto_0
.end method

.method public b(Lf/h;)Z
    .locals 1

    iget v0, p0, LH/e;->i:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0}, LH/e;->a(Lf/h;I)Z

    move-result v0

    return v0
.end method

.method public c(Lf/h;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, LH/e;->f:Lf/h;

    invoke-virtual {p1, v0}, Lf/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LH/e;->g:Lf/h;

    invoke-virtual {p1, v0}, Lf/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, LH/e;->g:Lf/h;

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lak/h;->c(Lak/d;)V

    :cond_0
    return-void
.end method

.method public d(Lf/h;)Lf/h;
    .locals 8

    iget-object v0, p0, LH/e;->j:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, LH/e;->j:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-virtual {p1}, Lf/h;->b()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, LH/e;->j:[J

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    invoke-virtual {p1}, Lf/h;->d()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    sget-wide v2, LH/e;->d:J

    div-long/2addr v0, v2

    iget-object v2, p0, LH/e;->j:[J

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    iget-object v4, p0, LH/e;->j:[J

    const/4 v5, 0x4

    aget-wide v4, v4, v5

    invoke-virtual {p1}, Lf/h;->b()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, LH/e;->j:[J

    const/4 v5, 0x5

    aget-wide v4, v4, v5

    invoke-virtual {p1}, Lf/h;->d()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    sget-wide v4, LH/e;->d:J

    div-long/2addr v2, v4

    invoke-virtual {p0, p1}, LH/e;->a(Lf/h;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1}, LH/e;->c(Lf/h;)V

    :cond_0
    long-to-int v4, v0

    invoke-virtual {p1}, Lf/h;->b()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, LH/e;->k:I

    long-to-int v4, v2

    invoke-virtual {p1}, Lf/h;->d()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, LH/e;->l:I

    new-instance v4, Lf/h;

    long-to-int v0, v0

    long-to-int v1, v2

    invoke-direct {v4, v0, v1}, Lf/h;-><init>(II)V

    return-object v4
.end method

.method public f_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()V
    .locals 8

    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, LH/e;->j:[J

    aput-wide v5, v0, v4

    iget-object v0, p0, LH/e;->j:[J

    sget-wide v1, LH/e;->d:J

    aput-wide v1, v0, v7

    iget-object v0, p0, LH/e;->j:[J

    const/4 v1, 0x2

    aput-wide v5, v0, v1

    iget-object v0, p0, LH/e;->j:[J

    const/4 v1, 0x3

    aput-wide v5, v0, v1

    iget-object v0, p0, LH/e;->j:[J

    const/4 v1, 0x4

    aput-wide v5, v0, v1

    iget-object v0, p0, LH/e;->j:[J

    const/4 v1, 0x5

    sget-wide v2, LH/e;->d:J

    aput-wide v2, v0, v1

    iput v4, p0, LH/e;->h:I

    iput v4, p0, LH/e;->i:I

    iput v4, p0, LH/e;->k:I

    iput v4, p0, LH/e;->l:I

    iput v7, p0, LH/e;->e:I

    return-void
.end method

.method public declared-synchronized l()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-static {v0}, LH/e;->a(Ln/a;)Ln/o;

    move-result-object v1

    sget-object v2, LH/e;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lac/i;->a(Ln/a;Ljava/lang/String;)Ljava/io/DataInput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    :try_start_1
    invoke-virtual {p0, v2}, LH/e;->a(Ljava/io/DataInput;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :try_start_2
    invoke-static {v1}, LH/e;->a(Ln/o;)V

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, LH/e;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    :try_start_3
    sget-object v3, LH/e;->b:Ljava/lang/String;

    invoke-interface {v0, v3}, Ln/a;->a(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v1}, LH/e;->a(Ln/o;)V

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, LH/e;->a(Ln/o;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m()Law/e;
    .locals 5

    new-instance v0, Law/e;

    sget-object v1, Ls/F;->b:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget v2, p0, LH/e;->e:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    const/4 v2, 0x2

    iget-object v3, p0, LH/e;->j:[J

    aget-wide v3, v3, v1

    invoke-virtual {v0, v2, v3, v4}, Law/e;->a(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    iget-object v2, p0, LH/e;->f:Lf/h;

    invoke-virtual {v2}, Lf/h;->f()Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    const/4 v1, 0x4

    iget v2, p0, LH/e;->i:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x5

    iget v2, p0, LH/e;->h:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    return-object v0
.end method

.method public declared-synchronized n()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v1

    invoke-static {v1}, LH/e;->a(Ln/a;)Ln/o;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, LH/e;->m()Law/e;

    move-result-object v4

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v4, v0}, Law/e;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v3, LH/e;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ln/a;->b([BLjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {v2}, LH/e;->a(Ln/o;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v0, LH/e;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Ln/a;->a(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v2}, LH/e;->a(Ln/o;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v2}, LH/e;->a(Ln/o;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
