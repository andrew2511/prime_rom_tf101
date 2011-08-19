.class public Lcom/google/googlenav/aB;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lf/h;

.field private e:J

.field private f:J

.field private g:Z

.field private h:[Lcom/google/googlenav/D;

.field private i:[Lcom/google/googlenav/aB;

.field private j:[Lcom/google/googlenav/bK;

.field private k:Lcom/google/googlenav/C;

.field private l:Lcom/google/googlenav/x;


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/aB;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/aB;->e:J

    iput-boolean v2, p0, Lcom/google/googlenav/aB;->g:Z

    new-array v0, v2, [Lcom/google/googlenav/bK;

    iput-object v0, p0, Lcom/google/googlenav/aB;->j:[Lcom/google/googlenav/bK;

    iput-object v4, p0, Lcom/google/googlenav/aB;->l:Lcom/google/googlenav/x;

    invoke-virtual {p1, v3}, Law/e;->f(I)Law/e;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v4

    :goto_0
    iput-object v0, p0, Lcom/google/googlenav/aB;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/googlenav/aB;->b(Law/e;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/aB;->f:J

    return-void

    :cond_0
    invoke-virtual {v0, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(JJ)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/google/googlenav/aB;->b(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/googlenav/aB;)Lcom/google/googlenav/x;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aB;->l:Lcom/google/googlenav/x;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/aB;Lcom/google/googlenav/x;)Lcom/google/googlenav/x;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/aB;->l:Lcom/google/googlenav/x;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/aB;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/aB;->g:Z

    return p1
.end method

.method private static b(JJ)I
    .locals 1

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/googlenav/aB;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aB;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Law/e;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x7

    invoke-static {p1, v0, v4}, Law/b;->c(Law/e;II)I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    if-nez v0, :cond_1

    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/google/googlenav/aB;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v0, v2

    :goto_1
    if-nez v0, :cond_3

    move-object v0, v2

    :goto_2
    iput-object v0, p0, Lcom/google/googlenav/aB;->d:Lf/h;

    invoke-virtual {p1, v5}, Law/e;->i(I)I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/D;

    iput-object v0, p0, Lcom/google/googlenav/aB;->h:[Lcom/google/googlenav/D;

    move v0, v4

    :goto_3
    iget-object v1, p0, Lcom/google/googlenav/aB;->h:[Lcom/google/googlenav/D;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/google/googlenav/aB;->h:[Lcom/google/googlenav/D;

    new-instance v2, Lcom/google/googlenav/D;

    invoke-virtual {p1, v5, v0}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/googlenav/D;-><init>(Law/e;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lf/h;->a(Law/e;)Lf/h;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v6}, Law/e;->i(I)I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/aB;

    iput-object v0, p0, Lcom/google/googlenav/aB;->i:[Lcom/google/googlenav/aB;

    move v0, v4

    :goto_4
    iget-object v1, p0, Lcom/google/googlenav/aB;->i:[Lcom/google/googlenav/aB;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/googlenav/aB;->i:[Lcom/google/googlenav/aB;

    new-instance v2, Lcom/google/googlenav/aB;

    invoke-virtual {p1, v6, v0}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/googlenav/aB;-><init>(Law/e;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v7}, Law/e;->i(I)I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/bK;

    iput-object v0, p0, Lcom/google/googlenav/aB;->j:[Lcom/google/googlenav/bK;

    move v0, v4

    :goto_5
    iget-object v1, p0, Lcom/google/googlenav/aB;->j:[Lcom/google/googlenav/bK;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/google/googlenav/aB;->j:[Lcom/google/googlenav/bK;

    new-instance v2, Lcom/google/googlenav/bK;

    invoke-virtual {p1, v7, v0}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/googlenav/bK;-><init>(Law/e;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x6

    invoke-static {p1, v0, v4}, Law/b;->c(Law/e;II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/aB;->e:J

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/aB;)Lcom/google/googlenav/C;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aB;->k:Lcom/google/googlenav/C;

    return-object v0
.end method

.method private c(Law/e;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v0, 0x7

    invoke-static {p1, v0, v9}, Law/b;->c(Law/e;II)I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    invoke-virtual {p1, v10}, Law/e;->i(I)I

    move-result v0

    move v1, v9

    :goto_0
    if-ge v1, v0, :cond_2

    new-instance v2, Lcom/google/googlenav/D;

    invoke-virtual {p1, v10, v1}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/googlenav/D;-><init>(Law/e;)V

    invoke-virtual {v2}, Lcom/google/googlenav/D;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move v4, v9

    :goto_1
    iget-object v5, p0, Lcom/google/googlenav/aB;->h:[Lcom/google/googlenav/D;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lcom/google/googlenav/aB;->h:[Lcom/google/googlenav/D;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/google/googlenav/D;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v3, p0, Lcom/google/googlenav/aB;->h:[Lcom/google/googlenav/D;

    new-instance v5, Lcom/google/googlenav/D;

    iget-object v6, p0, Lcom/google/googlenav/aB;->h:[Lcom/google/googlenav/D;

    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/google/googlenav/D;->b(Lcom/google/googlenav/D;)Law/e;

    move-result-object v6

    iget-object v7, p0, Lcom/google/googlenav/aB;->h:[Lcom/google/googlenav/D;

    aget-object v7, v7, v4

    invoke-static {v7}, Lcom/google/googlenav/D;->c(Lcom/google/googlenav/D;)Law/e;

    move-result-object v7

    invoke-static {v2}, Lcom/google/googlenav/D;->d(Lcom/google/googlenav/D;)[Lcom/google/googlenav/K;

    move-result-object v8

    invoke-static {v2}, Lcom/google/googlenav/D;->e(Lcom/google/googlenav/D;)Z

    move-result v2

    invoke-direct {v5, v6, v7, v8, v2}, Lcom/google/googlenav/D;-><init>(Law/e;Law/e;[Lcom/google/googlenav/K;Z)V

    aput-object v5, v3, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/D;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aB;->h:[Lcom/google/googlenav/D;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Z)Lcom/google/googlenav/D;
    .locals 12

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/aB;->h:[Lcom/google/googlenav/D;

    array-length v4, v3

    const/4 v5, 0x0

    move v11, v5

    move-wide v5, v0

    move-object v1, v2

    move v0, v11

    :goto_0
    if-ge v0, v4, :cond_3

    aget-object v2, v3, v0

    invoke-virtual {v2, p1}, Lcom/google/googlenav/D;->b(Z)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    cmp-long v9, v7, v5

    if-gez v9, :cond_0

    :cond_2
    move-object v1, v2

    move-wide v5, v7

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public a()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/aB;->h()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v4

    :goto_0
    move v1, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/googlenav/aB;->g()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/googlenav/aB;->a(I)Lcom/google/googlenav/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/D;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    :goto_2
    if-eqz v1, :cond_2

    const-string v1, "d"

    :goto_3
    if-eqz v0, :cond_3

    const-string v2, "a"

    :goto_4
    invoke-virtual {p0}, Lcom/google/googlenav/aB;->g()I

    move-result v3

    if-ge v3, v4, :cond_4

    if-nez v0, :cond_4

    const-string v0, "e"

    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, ""

    goto :goto_3

    :cond_3
    const-string v2, ""

    goto :goto_4

    :cond_4
    const-string v0, ""

    goto :goto_5

    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method a(Law/e;)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Law/b;->c(Law/e;II)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/googlenav/aB;->b(Law/e;)V

    :goto_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/aB;->f:J

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/aB;->c(Law/e;)V

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/C;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/aB;->k:Lcom/google/googlenav/C;

    return-void
.end method

.method public b(I)Lcom/google/googlenav/bK;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aB;->j:[Lcom/google/googlenav/bK;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/googlenav/aB;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/google/googlenav/aB;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aB;->i:[Lcom/google/googlenav/aB;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public declared-synchronized c()V
    .locals 7

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/googlenav/aB;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/google/googlenav/aB;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/aB;->g:Z

    new-instance v0, LT/a;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/bA;

    invoke-direct {v2, p0}, Lcom/google/googlenav/bA;-><init>(Lcom/google/googlenav/aB;)V

    invoke-direct {v0, v1, v2}, LT/a;-><init>(LT/c;Ljava/lang/Runnable;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/googlenav/aB;->f:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/google/googlenav/aB;->e:J

    sub-long v1, v5, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LT/a;->a(J)V

    invoke-virtual {v0}, LT/a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aB;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aB;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lf/h;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aB;->d:Lf/h;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aB;->h:[Lcom/google/googlenav/D;

    array-length v0, v0

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aB;->j:[Lcom/google/googlenav/bK;

    array-length v0, v0

    return v0
.end method

.method public i()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/googlenav/aB;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    move v0, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlenav/aB;->g()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/aB;->a(I)Lcom/google/googlenav/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/D;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/googlenav/D;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iput v3, p0, Lcom/google/googlenav/aB;->b:I

    move v0, v4

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/google/googlenav/aB;->b:I

    :cond_3
    iget v0, p0, Lcom/google/googlenav/aB;->b:I

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aB;->i:[Lcom/google/googlenav/aB;

    array-length v0, v0

    return v0
.end method
