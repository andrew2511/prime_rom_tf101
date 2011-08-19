.class public Lm/Q;
.super Ljava/lang/Object;

# interfaces
.implements Lm/k;


# instance fields
.field private final a:Lm/n;

.field private final b:Landroid/os/Handler;

.field private c:Lm/o;

.field private d:I

.field private final e:Lm/T;


# direct methods
.method public constructor <init>(Lm/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/f;

    invoke-direct {v0, p0}, Lm/f;-><init>(Lm/Q;)V

    iput-object v0, p0, Lm/Q;->e:Lm/T;

    iput-object p1, p0, Lm/Q;->a:Lm/n;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lm/Q;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lm/Q;->a(I)Z

    return-void
.end method

.method private a(Lm/R;)Lm/p;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    instance-of v1, p1, Lm/N;

    if-eqz v1, :cond_0

    check-cast p1, Lm/N;

    invoke-virtual {p1}, Lm/N;->a()Lm/R;

    move-result-object v1

    invoke-direct {p0, v1}, Lm/Q;->a(Lm/R;)Lm/p;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    instance-of v1, p1, Lm/J;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lm/J;

    move-object v1, v0

    iget v2, p0, Lm/Q;->d:I

    invoke-virtual {v1}, Lm/J;->c()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lm/J;->c()I

    move-result v1

    invoke-direct {p0, v1}, Lm/Q;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v7

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lm/m;

    if-eqz v1, :cond_b

    check-cast p1, Lm/m;

    invoke-virtual {p1}, Lm/m;->a()[Lm/R;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v8

    move v4, v8

    :goto_1
    array-length v5, v1

    if-ge v3, v5, :cond_7

    aget-object v5, v1, v3

    invoke-direct {p0, v5}, Lm/Q;->a(Lm/R;)Lm/p;

    move-result-object v5

    aget-object v6, v1, v3

    invoke-virtual {v6}, Lm/R;->b()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v5, :cond_2

    instance-of v6, v5, Lm/r;

    if-eqz v6, :cond_4

    :cond_2
    instance-of v5, v5, Lm/r;

    if-eqz v5, :cond_3

    move v4, v9

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    move-object v1, v7

    goto :goto_0

    :cond_5
    instance-of v6, v5, Lm/r;

    if-eqz v6, :cond_6

    move-object v1, v5

    goto :goto_0

    :cond_6
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_9

    if-eqz v4, :cond_8

    new-instance v1, Lm/r;

    invoke-direct {v1}, Lm/r;-><init>()V

    goto :goto_0

    :cond_8
    move-object v1, v7

    goto :goto_0

    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v9, :cond_a

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/p;

    move-object v1, p0

    goto :goto_0

    :cond_a
    new-instance v1, Lm/W;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lm/p;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lm/p;

    invoke-direct {v1, p0}, Lm/W;-><init>([Lm/p;)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lm/Q;->c:Lm/o;

    invoke-virtual {v1, p1}, Lm/o;->a(Lm/R;)Lm/e;

    move-result-object v1

    invoke-virtual {v1}, Lm/e;->d()Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v1, Lm/r;

    invoke-direct {v1}, Lm/r;-><init>()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v1}, Lm/e;->e()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v1}, Lm/e;->c()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lm/Q;->b:Landroid/os/Handler;

    invoke-static {v1, v2}, Lm/q;->a(Ljava/io/File;Landroid/os/Handler;)Lm/p;

    move-result-object v1

    goto/16 :goto_0

    :cond_d
    move-object v1, v7

    goto/16 :goto_0
.end method

.method static synthetic a(Lm/Q;Lm/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lm/Q;->a(Lm/o;)V

    return-void
.end method

.method private declared-synchronized a(Lm/o;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lm/Q;->c:Lm/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(I)Z
    .locals 3

    invoke-static {}, Las/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lm/Q;->c:Lm/o;

    :goto_0
    iget-object v0, p0, Lm/Q;->c:Lm/o;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lm/Q;->a:Lm/n;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lm/Q;->e:Lm/T;

    invoke-interface {v0, v1, p1, v2}, Lm/n;->a(Ljava/util/Locale;ILm/T;)Lm/o;

    move-result-object v0

    iput-object v0, p0, Lm/Q;->c:Lm/o;

    iput p1, p0, Lm/Q;->d:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a(Lm/w;)Lm/p;
    .locals 2

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lm/Q;->c:Lm/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lm/w;->b()Lm/R;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lm/Q;->a(Lm/R;)Lm/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lm/w;Lm/v;)V
    .locals 1

    invoke-virtual {p0, p1}, Lm/Q;->a(Lm/w;)Lm/p;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-interface {p2, p1, v0}, Lm/v;->a(Lm/w;Lm/p;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
