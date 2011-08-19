.class public Lt/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lt/c;


# static fields
.field private static final a:LG/u;

.field private static final b:[B


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lt/L;

.field private final f:Ljava/util/HashMap;

.field private g:Lt/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt/m;

    invoke-direct {v0}, Lt/m;-><init>()V

    sput-object v0, Lt/ag;->a:LG/u;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lt/ag;->b:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILt/L;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/ag;->c:Ljava/lang/String;

    iput p2, p0, Lt/ag;->d:I

    iput-object p3, p0, Lt/ag;->e:Lt/L;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lt/ag;->f:Ljava/util/HashMap;

    return-void
.end method

.method private a(ILjava/util/Locale;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lt/ag;->f:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lt/ag;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lt/ag;->g:Lt/d;

    invoke-virtual {v1, p1, p2}, Lt/d;->a(ILjava/util/Locale;)V

    monitor-exit v0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/io/File;)Z
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Lt/ag;->g:Lt/d;

    if-eqz v0, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lt/H;

    invoke-direct {v0, p1}, Lt/H;-><init>(Ljava/io/File;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lt/ag;->c:Ljava/lang/String;

    invoke-static {v3, v0}, Lt/d;->a(Ljava/lang/String;Lt/t;)Lt/d;

    move-result-object v3

    iput-object v3, p0, Lt/ag;->g:Lt/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v1

    move v0, v8

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    iget-object v3, p0, Lt/ag;->c:Ljava/lang/String;

    iget v4, p0, Lt/ag;->d:I

    const/4 v5, -0x1

    new-instance v6, Ljava/util/Locale;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5, v6, v0}, Lt/d;->a(Ljava/lang/String;IILjava/util/Locale;Lt/t;)Lt/d;

    move-result-object v0

    iput-object v0, p0, Lt/ag;->g:Lt/d;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(LG/w;)V
    .locals 2

    sget-object v0, Lt/ag;->a:LG/u;

    sget-object v1, Lt/ag;->b:[B

    invoke-virtual {p0, p1, v0, v1}, Lt/ag;->a(LG/w;LG/u;[B)V

    return-void
.end method

.method public a(LG/w;LG/u;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {p2, v1}, LG/u;->a(Ljava/io/DataOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lt/ag;->a(LG/w;LG/u;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(LG/w;LG/u;[B)V
    .locals 6

    iget-object v0, p0, Lt/ag;->g:Lt/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, LG/w;->b()I

    move-result v0

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Las/a;->a(LG/w;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1}, Las/a;->b(LG/w;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lt/e;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lt/e;-><init>(JLjava/lang/String;[BLG/u;)V

    iget-object v1, p0, Lt/ag;->f:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lt/ag;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lt/ag;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lt/ag;->g:Lt/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lt/ag;->g:Lt/d;

    invoke-virtual {v0}, Lt/d;->a()I

    move-result v0

    iget-object v1, p0, Lt/ag;->g:Lt/d;

    invoke-virtual {v1}, Lt/d;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lt/ag;->a(ILjava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public a(I)Z
    .locals 2

    iget-object v0, p0, Lt/ag;->g:Lt/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lt/ag;->g:Lt/d;

    invoke-virtual {v0, p1}, Lt/d;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(LG/u;)Z
    .locals 1

    sget-object v0, Lt/ag;->a:LG/u;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/io/File;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lt/ag;->b(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/Locale;)Z
    .locals 2

    iget-object v0, p0, Lt/ag;->g:Lt/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lt/ag;->g:Lt/d;

    invoke-virtual {v0}, Lt/d;->a()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lt/ag;->a(ILjava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lt/ag;->g:Lt/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lt/ag;->g:Lt/d;

    invoke-virtual {v0}, Lt/d;->a()I

    move-result v0

    return v0
.end method

.method public b(LG/w;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lt/ag;->g:Lt/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, LG/w;->b()I

    move-result v0

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    move v0, v5

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Las/a;->a(LG/w;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Las/a;->b(LG/w;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lt/ag;->g:Lt/d;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lt/d;->b(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lt/ag;->f:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/ag;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v6

    :goto_1
    monitor-exit v0

    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v5

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lt/ag;->g:Lt/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lt/ag;->g:Lt/d;

    invoke-virtual {v0}, Lt/d;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(LG/w;)LG/u;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lt/ag;->g:Lt/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, LG/w;->b()I

    move-result v0

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lt/ag;->f:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lt/ag;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/e;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lt/e;->b:LG/u;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Las/a;->a(LG/w;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Las/a;->b(LG/w;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lt/ag;->g:Lt/d;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lt/d;->a(JLjava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v5

    goto :goto_0

    :cond_3
    :try_start_2
    array-length v1, v0

    if-nez v1, :cond_4

    sget-object v0, Lt/ag;->a:LG/u;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lt/ag;->e:Lt/L;

    invoke-interface {v1, p1, v0}, Lt/L;->a(LG/w;[B)LG/u;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v5

    goto :goto_0
.end method

.method public d()Ljava/util/Locale;
    .locals 2

    iget-object v0, p0, Lt/ag;->g:Lt/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lt/ag;->g:Lt/d;

    invoke-virtual {v0}, Lt/d;->b()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt/ag;->g:Lt/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lt/ag;->g:Lt/d;

    invoke-virtual {v0}, Lt/d;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public w_()V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const-wide/16 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lt/ag;->f:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lt/ag;->f:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v5, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/e;

    iget-object v1, v0, Lt/e;->a:Lt/aC;

    iget-object v1, v1, Lt/aC;->c:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    int-to-long v7, v1

    add-long/2addr v5, v7

    iget-object v0, v0, Lt/e;->a:Lt/aC;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v1, v0, Lt/e;->a:Lt/aC;

    iget-object v1, v1, Lt/aC;->c:[B

    array-length v1, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lt/ag;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lt/ag;->g:Lt/d;

    invoke-virtual {v0, v2}, Lt/d;->a(Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2
.end method
