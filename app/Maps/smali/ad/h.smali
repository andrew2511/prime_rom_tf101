.class Lad/h;
.super Lak/m;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Long;

.field private final c:Ljava/lang/Long;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lad/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lad/h;->b:Ljava/lang/Long;

    iput-object p3, p0, Lad/h;->d:Ljava/lang/String;

    iput-object p4, p0, Lad/h;->c:Ljava/lang/Long;

    iput-object p5, p0, Lad/h;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lad/j;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lad/h;-><init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x4b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/q;->c:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v0, v4, v4}, Law/e;->h(II)V

    iget-object v1, p0, Lad/h;->b:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lad/h;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v5, v1, v2}, Law/e;->b(IJ)V

    :cond_0
    new-instance v1, Law/e;

    sget-object v2, Ls/q;->a:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v1, v4, v0}, Law/e;->a(ILaw/e;)V

    new-instance v0, Law/e;

    sget-object v2, Ls/q;->c:Law/f;

    invoke-direct {v0, v2}, Law/e;-><init>(Law/f;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v4, v2}, Law/e;->h(II)V

    iget-object v2, p0, Lad/h;->c:Ljava/lang/Long;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lad/h;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v5, v2, v3}, Law/e;->b(IJ)V

    :cond_1
    invoke-virtual {v1, v4, v0}, Law/e;->a(ILaw/e;)V

    invoke-virtual {v1}, Law/e;->d()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Law/e;->b(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 10

    const/4 v9, 0x7

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    sget-object v0, Ls/q;->b:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Law/e;->i(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v6, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-virtual {v3, v6}, Law/e;->d(I)I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-virtual {v3, v7}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v8}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lad/h;->a:Landroid/content/Context;

    iget-object v5, p0, Lad/h;->d:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Las/a;->a(Landroid/content/Context;Law/e;Ljava/lang/String;)Z

    invoke-virtual {v3, v8}, Law/e;->f(I)Law/e;

    move-result-object v3

    new-instance v4, Lad/t;

    invoke-direct {v4, v3}, Lad/t;-><init>(Law/e;)V

    invoke-static {v4}, Lad/b;->a(Lad/t;)Lad/t;

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v6}, Law/e;->d(I)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v7}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v9}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lad/h;->a:Landroid/content/Context;

    iget-object v5, p0, Lad/h;->e:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Las/a;->a(Landroid/content/Context;Law/e;Ljava/lang/String;)Z

    invoke-virtual {v3, v9}, Law/e;->f(I)Law/e;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/R;->a(Law/e;)Lcom/google/android/maps/driveabout/vector/R;

    move-result-object v3

    invoke-static {v3}, Lad/b;->a(Lcom/google/android/maps/driveabout/vector/R;)Lcom/google/android/maps/driveabout/vector/R;

    goto :goto_1

    :cond_2
    invoke-static {v6}, Lad/b;->b(Z)Z

    const-class v0, Lad/b;

    monitor-enter v0

    :try_start_0
    const-class v1, Lad/b;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return v6

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public m_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
