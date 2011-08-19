.class public Lt/at;
.super Ljava/lang/Object;

# interfaces
.implements Lt/ad;


# static fields
.field private static final a:Ljava/util/Locale;


# instance fields
.field private b:Lt/d;

.field private final c:Ljava/lang/String;

.field private final d:Lac/p;

.field private final e:Ljava/util/Map;

.field private final f:Law/f;

.field private final g:I

.field private final h:J

.field private i:Lt/J;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt/at;->a:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Lac/p;Ljava/lang/String;Law/f;IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/at;->d:Lac/p;

    iput-object p2, p0, Lt/at;->c:Ljava/lang/String;

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lt/at;->e:Ljava/util/Map;

    iput-object p3, p0, Lt/at;->f:Law/f;

    iput p4, p0, Lt/at;->g:I

    iput-wide p5, p0, Lt/at;->h:J

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt/V;

    iget-object v4, p0, Lt/V;->a:Ljava/lang/String;

    invoke-static {v4}, Las/a;->b(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v6, p0, Lt/V;->a:Ljava/lang/String;

    :try_start_0
    iget v7, p0, Lt/V;->c:I

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v7, p0, Lt/V;->d:J

    invoke-virtual {v2, v7, v8}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v7, p0, Lt/V;->b:Law/e;

    invoke-virtual {v7, v2}, Law/e;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-static {v4, v5, v6, v7}, Lt/d;->a(JLjava/lang/String;[B)Lt/aC;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lt/at;)Z
    .locals 1

    invoke-direct {p0}, Lt/at;->f()Z

    move-result v0

    return v0
.end method

.method private b(Ljava/util/List;)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lt/at;->b:Lt/d;

    invoke-virtual {v2, p1}, Lt/d;->a(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private declared-synchronized f()Z
    .locals 6

    const/4 v5, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt/at;->e:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lt/at;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lt/at;->i:Lt/J;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v0, v5

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_2
    iget-object v1, p0, Lt/at;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lj/X;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-direct {p0, v1}, Lt/at;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lt/at;->b(Ljava/util/List;)V

    iget-object v2, p0, Lt/at;->e:Ljava/util/Map;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/V;

    iget-object v3, p0, Lt/at;->e:Ljava/util/Map;

    iget-object v4, v0, Lt/V;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lt/at;->e:Ljava/util/Map;

    iget-object v0, v0, Lt/V;->a:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_2
    :try_start_8
    iget-object v0, p0, Lt/at;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lt/at;->i:Lt/J;

    monitor-exit v2

    move v0, v5

    goto :goto_0

    :cond_3
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lt/at;->b:Lt/d;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lt/at;->b:Lt/d;

    invoke-virtual {v0}, Lt/d;->a()I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lt/aa;
    .locals 9

    const/4 v8, 0x0

    iget-object v1, p0, Lt/at;->b:Lt/d;

    if-nez v1, :cond_0

    move-object v1, v8

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lt/at;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lt/V;

    move-object v7, v0

    if-eqz v7, :cond_1

    new-instance v1, Lt/x;

    iget-object v2, p0, Lt/at;->d:Lac/p;

    iget v3, v7, Lt/V;->c:I

    iget-wide v4, v7, Lt/V;->d:J

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lt/x;-><init>(Lac/p;IJLt/ad;)V

    new-instance v2, Lt/aa;

    iget-object v3, v7, Lt/V;->b:Law/e;

    invoke-direct {v2, v3, v1}, Lt/aa;-><init>(Law/e;Lt/x;)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-static {p1}, Las/a;->b(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lt/at;->b:Lt/d;

    invoke-virtual {v3, v1, v2, p1}, Lt/d;->a(JLjava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v8

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    new-instance v7, Law/e;

    iget-object v2, p0, Lt/at;->f:Law/f;

    invoke-direct {v7, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Law/e;->a(Ljava/io/InputStream;I)I

    new-instance v1, Lt/x;

    iget-object v2, p0, Lt/at;->d:Lac/p;

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lt/x;-><init>(Lac/p;IJLt/ad;)V

    new-instance v2, Lt/aa;

    invoke-direct {v2, v7, v1}, Lt/aa;-><init>(Law/e;Lt/x;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v8

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Law/e;)V
    .locals 8

    iget-object v0, p0, Lt/at;->b:Lt/d;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lt/at;->e:Ljava/util/Map;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lt/at;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_1

    iget-object v7, p0, Lt/at;->e:Ljava/util/Map;

    new-instance v0, Lt/V;

    iget-object v1, p0, Lt/at;->b:Lt/d;

    invoke-virtual {v1}, Lt/d;->a()I

    move-result v3

    iget-object v1, p0, Lt/at;->d:Lac/p;

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lt/V;-><init>(Ljava/lang/String;Law/e;IJ)V

    invoke-interface {v7, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lt/at;->i:Lt/J;

    if-nez v0, :cond_2

    new-instance v0, Lt/J;

    iget-object v1, p0, Lt/at;->c:Ljava/lang/String;

    iget v2, p0, Lt/at;->g:I

    invoke-direct {v0, v1, v2, p0}, Lt/J;-><init>(Ljava/lang/String;ILt/at;)V

    iput-object v0, p0, Lt/at;->i:Lt/J;

    :cond_2
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/io/File;)Z
    .locals 7

    new-instance v0, Lt/H;

    invoke-direct {v0, p1}, Lt/H;-><init>(Ljava/io/File;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lt/at;->c:Ljava/lang/String;

    invoke-static {v3, v0}, Lt/d;->a(Ljava/lang/String;Lt/t;)Lt/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    iput-object v0, p0, Lt/at;->b:Lt/d;

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v3

    :try_start_1
    iget-object v3, p0, Lt/at;->c:Ljava/lang/String;

    const/16 v4, 0xffa

    const/4 v5, -0x1

    sget-object v6, Lt/at;->a:Ljava/util/Locale;

    invoke-static {v3, v4, v5, v6, v0}, Lt/d;->a(Ljava/lang/String;IILjava/util/Locale;Lt/t;)Lt/d;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized a(Ljava/util/Locale;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt/at;->b:Lt/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lt/at;->b:Lt/d;

    invoke-virtual {v0}, Lt/d;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lt/at;->b:Lt/d;

    iget-object v1, p0, Lt/at;->b:Lt/d;

    invoke-virtual {v1}, Lt/d;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lt/d;->a(ILjava/util/Locale;)V

    iget-object v0, p0, Lt/at;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lt/at;->h:J

    return-wide v0
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt/at;->b:Lt/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lt/at;->f()Z

    iget-object v0, p0, Lt/at;->b:Lt/d;

    invoke-virtual {v0}, Lt/d;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 4

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt/at;->b:Lt/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lt/at;->b:Lt/d;

    iget-object v1, p0, Lt/at;->b:Lt/d;

    invoke-virtual {v1}, Lt/d;->a()I

    move-result v1

    iget-object v2, p0, Lt/at;->b:Lt/d;

    invoke-virtual {v2}, Lt/d;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lt/d;->a(ILjava/util/Locale;)V

    iget-object v0, p0, Lt/at;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()J
    .locals 2

    iget-object v0, p0, Lt/at;->b:Lt/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/at;->b:Lt/d;

    invoke-virtual {v0}, Lt/d;->d()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
