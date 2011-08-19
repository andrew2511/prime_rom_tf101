.class public Lt/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lt/t;

.field private d:Lt/g;

.field private e:Lt/I;

.field private final f:Lt/ax;

.field private final g:Lt/U;

.field private final h:[Lt/g;

.field private final i:Lad/g;

.field private final j:Ljava/util/Set;

.field private final k:Ljava/util/concurrent/locks/ReentrantLock;

.field private final l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Lt/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lt/d;->a:[B

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lt/I;Lt/ax;Lt/U;Lt/g;Lt/t;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0, v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, -0x1

    iput v0, p0, Lt/d;->u:I

    iput-boolean v3, p0, Lt/d;->v:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lt/d;->w:Lt/i;

    iput-object p1, p0, Lt/d;->b:Ljava/lang/String;

    iput-object p2, p0, Lt/d;->e:Lt/I;

    iput-object p3, p0, Lt/d;->f:Lt/ax;

    iput-object p4, p0, Lt/d;->g:Lt/U;

    iput-object p5, p0, Lt/d;->d:Lt/g;

    iput-object p6, p0, Lt/d;->c:Lt/t;

    iget v0, p2, Lt/I;->d:I

    new-array v0, v0, [Lt/g;

    iput-object v0, p0, Lt/d;->h:[Lt/g;

    new-instance v0, Lad/g;

    const/16 v1, 0x800

    invoke-virtual {p0}, Lt/d;->e()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Lad/g;-><init>(I)V

    iput-object v0, p0, Lt/d;->i:Lad/g;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lt/d;->j:Ljava/util/Set;

    iget-object v0, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move v0, v3

    move v1, v3

    :goto_0
    :try_start_0
    iget-object v2, p0, Lt/d;->e:Lt/I;

    iget v2, v2, Lt/I;->d:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lt/d;->f:Lt/ax;

    invoke-virtual {v2, v0}, Lt/ax;->c(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lt/d;->f:Lt/ax;

    invoke-virtual {v2, v0}, Lt/ax;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lt/d;->g:Lt/U;

    invoke-virtual {v2, v0}, Lt/U;->c(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rebuilding inconsistent shard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lt/d;->a(Ljava/lang/String;)V

    iget v1, p0, Lt/d;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lt/d;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, v0}, Lt/d;->d(I)Lt/af;

    move-result-object v1

    iget-object v2, p0, Lt/d;->f:Lt/ax;

    invoke-virtual {v2, v1}, Lt/ax;->a(Lt/af;)V

    iget-object v2, p0, Lt/d;->g:Lt/U;

    invoke-virtual {v2, v1}, Lt/U;->a(Lt/af;)V

    invoke-direct {p0, v0}, Lt/d;->f(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v4

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-direct {p0, v0}, Lt/d;->g(I)V

    move v1, v4

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lt/d;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    iget-object v0, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static a([BI)I
    .locals 4

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method private a(Lt/E;)Lt/Y;
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p1}, Lt/E;->a()J

    move-result-wide v1

    iget-object v3, p0, Lt/d;->i:Lad/g;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lt/d;->i:Lad/g;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/Y;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lt/d;->a(Lt/Y;Lt/E;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v5

    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lt/d;->f:Lt/ax;

    iget v4, v0, Lt/Y;->f:I

    invoke-virtual {v3, v4}, Lt/ax;->d(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lt/d;->i:Lad/g;

    monitor-enter v0

    :try_start_1
    iget-object v3, p0, Lt/d;->i:Lad/g;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lad/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v5

    :cond_1
    if-nez v0, :cond_2

    invoke-static {v1, v2}, Lt/U;->a(J)[I

    move-result-object v1

    iget-object v2, p0, Lt/d;->f:Lt/ax;

    iget v2, v2, Lt/ax;->e:I

    const/4 v3, 0x0

    move v6, v3

    move-object v3, v0

    move v0, v6

    :goto_0
    if-ge v0, v2, :cond_4

    iget-object v4, p0, Lt/d;->f:Lt/ax;

    invoke-virtual {v4, v0}, Lt/ax;->d(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lt/d;->g:Lt/U;

    invoke-virtual {v4, v1, v0}, Lt/U;->a([II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, p1, v0}, Lt/d;->a(Lt/E;I)Lt/Y;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v0, v3

    :cond_2
    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move-object v0, v3

    goto :goto_1
.end method

.method private a(Lt/E;I)Lt/Y;
    .locals 10

    const/4 v4, 0x0

    invoke-virtual {p1}, Lt/E;->a()J

    iget v0, p0, Lt/d;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt/d;->q:I

    :try_start_0
    invoke-direct {p0, p2}, Lt/d;->d(I)Lt/af;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Lt/af;->b()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lt/af;->d(I)Lt/Y;

    move-result-object v5

    iget-wide v6, v5, Lt/Y;->a:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v6, v5, Lt/Y;->a:J

    invoke-virtual {p1}, Lt/E;->a()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    invoke-direct {p0, v5, p1}, Lt/d;->a(Lt/Y;Lt/E;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :try_start_1
    invoke-direct {p0, p2}, Lt/d;->e(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    move-object v0, v4

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    throw v0

    :cond_1
    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/Y;

    iget-object v2, p0, Lt/d;->i:Lad/g;

    monitor-enter v2

    :try_start_2
    iget-object v3, p0, Lt/d;->i:Lad/g;

    iget-wide v5, v0, Lt/Y;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    iget-object v0, p0, Lt/d;->i:Lad/g;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lt/d;->i:Lad/g;

    iget-wide v2, v4, Lt/Y;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    :goto_3
    move-object v0, v4

    goto :goto_1

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :cond_3
    iget v0, p0, Lt/d;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt/d;->p:I

    goto :goto_3
.end method

.method public static a(JLjava/lang/String;[B)Lt/aC;
    .locals 3

    new-instance v0, Lt/aC;

    invoke-static {p0, p1, p2}, Lt/d;->c(JLjava/lang/String;)Lt/E;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, v2}, Lt/aC;-><init>(Lt/E;[BLt/s;)V

    return-object v0
.end method

.method public static a(J[B)Lt/aC;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lt/d;->a(JLjava/lang/String;[B)Lt/aC;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;IILjava/util/Locale;Lt/t;)Lt/d;
    .locals 10

    const/16 v1, 0x37eb

    const/4 v9, 0x0

    const/4 v3, 0x4

    const/4 v6, 0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    move v5, v6

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    move v0, v3

    :cond_0
    if-nez v5, :cond_1

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of records must be between 4 and 14315"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Lt/t;->a(Ljava/lang/String;)V

    sub-int v1, v0, v6

    div-int/lit16 v1, v1, 0x199

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v0, v6

    div-int/2addr v0, v3

    add-int/lit8 v4, v0, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0, v6}, Lt/t;->a(Ljava/lang/String;Z)Lt/g;

    move-result-object v8

    new-instance v0, Lt/I;

    const/16 v1, 0xb

    const/16 v2, 0x2000

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lt/I;-><init>(IIIIZILjava/util/Locale;)V

    new-instance v4, Lt/ax;

    invoke-direct {v4, v3}, Lt/ax;-><init>(I)V

    new-instance v5, Lt/U;

    invoke-direct {v5, v3, v9}, Lt/U;-><init>(II)V

    invoke-static {v0, v4, v5, v8}, Lt/d;->a(Lt/I;Lt/ax;Lt/U;Lt/g;)V

    invoke-interface {v8}, Lt/g;->b()V

    new-instance v1, Lt/d;

    move-object v2, p0

    move-object v3, v0

    move-object v6, v8

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lt/d;-><init>(Ljava/lang/String;Lt/I;Lt/ax;Lt/U;Lt/g;Lt/t;)V

    return-object v1

    :cond_2
    move v5, v9

    move v0, p1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lt/t;)Lt/d;
    .locals 7

    const/16 v3, 0x2000

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lt/t;->a(Ljava/lang/String;Z)Lt/g;

    move-result-object v5

    new-array v0, v3, [B

    invoke-interface {v5, v0}, Lt/g;->b([B)V

    new-instance v2, Lt/I;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lt/I;-><init>([BI)V

    iget v0, v2, Lt/I;->a:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget v0, v2, Lt/I;->c:I

    if-eq v0, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Cache Header: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v3, Lt/ax;

    iget v0, v2, Lt/I;->d:I

    invoke-direct {v3, v0}, Lt/ax;-><init>(I)V

    invoke-virtual {v3, v5}, Lt/ax;->b(Lt/g;)V

    new-instance v4, Lt/U;

    iget v0, v2, Lt/I;->d:I

    iget v1, v3, Lt/ax;->e:I

    invoke-direct {v4, v0, v1}, Lt/U;-><init>(II)V

    invoke-virtual {v4, v5}, Lt/U;->b(Lt/g;)V

    new-instance v0, Lt/d;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lt/d;-><init>(Ljava/lang/String;Lt/I;Lt/ax;Lt/U;Lt/g;Lt/t;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static a(Lt/I;Lt/ax;Lt/U;Lt/g;)V
    .locals 2

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lt/I;->a([BI)I

    invoke-interface {p3, v0}, Lt/g;->a([B)V

    invoke-virtual {p1, p3}, Lt/ax;->a(Lt/g;)V

    invoke-virtual {p2, p3}, Lt/U;->a(Lt/g;)V

    return-void
.end method

.method private a(Lt/Y;Ljava/io/IOException;)V
    .locals 1

    iget v0, p0, Lt/d;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt/d;->o:I

    iget-object v0, p0, Lt/d;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lt/aA;Lt/af;)V
    .locals 1

    invoke-virtual {p1}, Lt/aA;->b()V

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lt/d;->a(Lt/af;Z)V

    return-void
.end method

.method private a(Lt/af;Z)V
    .locals 5

    invoke-virtual {p0}, Lt/d;->g()V

    iget-object v0, p0, Lt/d;->f:Lt/ax;

    iget-object v0, v0, Lt/ax;->a:[I

    invoke-static {p1}, Lt/af;->a(Lt/af;)I

    move-result v1

    aget v0, v0, v1

    iget-object v1, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lt/d;->f:Lt/ax;

    invoke-static {p1}, Lt/af;->a(Lt/af;)I

    move-result v2

    invoke-virtual {v1, v2}, Lt/ax;->b(I)V

    invoke-direct {p0}, Lt/d;->k()V

    iget-object v1, p0, Lt/d;->d:Lt/g;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lt/d;->d:Lt/g;

    invoke-static {p1}, Lt/af;->a(Lt/af;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x2000

    iget-object v4, p0, Lt/d;->e:Lt/I;

    iget v4, v4, Lt/I;->j:I

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lt/g;->a(J)V

    iget-object v2, p0, Lt/d;->d:Lt/g;

    invoke-virtual {p1, v2}, Lt/af;->b(Lt/g;)V

    iget-object v2, p0, Lt/d;->d:Lt/g;

    invoke-interface {v2}, Lt/g;->b()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lt/d;->g:Lt/U;

    invoke-virtual {v1, p1}, Lt/U;->a(Lt/af;)V

    iget-object v1, p0, Lt/d;->f:Lt/ax;

    invoke-virtual {v1, p1}, Lt/ax;->a(Lt/af;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lt/d;->f:Lt/ax;

    invoke-static {p1}, Lt/af;->a(Lt/af;)I

    move-result v1

    invoke-direct {p0}, Lt/d;->m()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lt/ax;->a(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    iget-object v0, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    invoke-static {p1}, Lt/af;->a(Lt/af;)I

    move-result v0

    invoke-direct {p0, v0}, Lt/d;->f(I)V

    invoke-direct {p0}, Lt/d;->k()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :cond_0
    :try_start_5
    iget-object v1, p0, Lt/d;->f:Lt/ax;

    invoke-static {p1}, Lt/af;->a(Lt/af;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lt/ax;->a(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method private static a(Lt/g;I[B)V
    .locals 2

    monitor-enter p0

    int-to-long v0, p1

    :try_start_0
    invoke-interface {p0, v0, v1}, Lt/g;->a(J)V

    invoke-interface {p0, p2}, Lt/g;->b([B)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a([BII)V
    .locals 3

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method

.method public static a([BIJ)V
    .locals 2

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v0, v0

    invoke-static {p0, p1, v0}, Lt/d;->a([BII)V

    add-int/lit8 v0, p1, 0x4

    long-to-int v1, p2

    invoke-static {p0, v0, v1}, Lt/d;->a([BII)V

    return-void
.end method

.method private a(Lt/Y;Lt/E;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Lt/E;->b()[B

    move-result-object v0

    array-length v1, v0

    iget v2, p1, Lt/Y;->c:I

    if-eq v1, v2, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    array-length v1, v0

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lt/d;->a(Lt/Y;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0
.end method

.method private a(Lt/Y;)[B
    .locals 3

    iget v0, p1, Lt/Y;->c:I

    if-nez v0, :cond_0

    sget-object v0, Lt/d;->a:[B

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget v0, p1, Lt/Y;->f:I

    invoke-virtual {p0, v0}, Lt/d;->b(I)Lt/g;

    move-result-object v0

    iget v1, p1, Lt/Y;->c:I

    new-array v1, v1, [B

    iget v2, p1, Lt/Y;->b:I

    invoke-static {v0, v2, v1}, Lt/d;->a(Lt/g;I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, v0}, Lt/d;->a(Lt/Y;Ljava/io/IOException;)V

    throw v0
.end method

.method public static b([BI)I
    .locals 3

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private b(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lt/d;->g()V

    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/aC;

    iget-object v4, v0, Lt/aC;->a:Lt/E;

    invoke-virtual {v4}, Lt/E;->a()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v4, v0, Lt/aC;->b:[B

    array-length v4, v4

    const/16 v5, 0xff

    if-gt v4, v5, :cond_0

    iget-object v4, v0, Lt/aC;->a:Lt/E;

    invoke-virtual {v4}, Lt/E;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lt/aC;->a:Lt/E;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v3, v10

    :goto_1
    iget-object v0, p0, Lt/d;->f:Lt/ax;

    iget v0, v0, Lt/ax;->e:I

    if-ge v3, v0, :cond_9

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v5, p0, Lt/d;->f:Lt/ax;

    invoke-virtual {v5, v3}, Lt/ax;->d(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lt/d;->g:Lt/U;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v3}, Lt/U;->b(JI)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v11

    :goto_2
    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Lt/d;->d(I)Lt/af;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_7

    move v4, v10

    move v5, v10

    :goto_4
    invoke-virtual {v0}, Lt/af;->b()I

    move-result v6

    if-ge v4, v6, :cond_6

    invoke-virtual {v0, v4}, Lt/af;->b(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lt/d;->a:[B

    invoke-virtual {v0, v4}, Lt/af;->c(I)I

    move-result v9

    if-lez v9, :cond_3

    invoke-virtual {v0, v4}, Lt/af;->d(I)Lt/Y;

    move-result-object v8

    :try_start_1
    invoke-direct {p0, v8}, Lt/d;->a(Lt/Y;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    :cond_3
    new-instance v9, Lt/E;

    invoke-direct {v9, v6, v7, v8}, Lt/E;-><init>(J[B)V

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget v5, p0, Lt/d;->s:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lt/d;->s:I

    iget-object v5, p0, Lt/d;->i:Lad/g;

    monitor-enter v5

    :try_start_2
    iget-object v8, p0, Lt/d;->i:Lad/g;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lad/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v5, p0, Lt/d;->w:Lt/i;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lt/d;->w:Lt/i;

    invoke-interface {v5, v6, v7}, Lt/i;->a(J)V

    :cond_4
    invoke-virtual {v0, v4}, Lt/af;->a(I)V

    move v5, v11

    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catch_0
    move-exception v4

    invoke-direct {p0, v3}, Lt/d;->g(I)V

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_6
    if-eqz v5, :cond_8

    invoke-direct {p0, v0, v10}, Lt/d;->a(Lt/af;Z)V

    :cond_7
    :goto_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Lt/d;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt/d;->r:I

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt/aC;

    iget-object v3, p0, Lt/aC;->a:Lt/E;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_a
    iget-object v3, p0, Lt/aC;->a:Lt/E;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0

    :catch_1
    move-exception v6

    goto :goto_5

    :cond_c
    move v0, v10

    goto/16 :goto_2
.end method

.method private b(ILjava/util/Locale;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lt/d;->g()V

    iget-object v0, p0, Lt/d;->i:Lad/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/d;->i:Lad/g;

    invoke-virtual {v1}, Lad/g;->a()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lt/d;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    move v0, v8

    :goto_0
    iget-object v1, p0, Lt/d;->h:[Lt/g;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lt/d;->h:[Lt/g;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lt/d;->h:[Lt/g;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lt/g;->a()V

    iget-object v1, p0, Lt/d;->h:[Lt/g;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    iget-object v1, p0, Lt/d;->c:Lt/t;

    invoke-virtual {p0, v0}, Lt/d;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lt/t;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    iget-object v0, p0, Lt/d;->d:Lt/g;

    invoke-interface {v0}, Lt/g;->a()V

    iget-object v0, p0, Lt/d;->c:Lt/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lt/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lt/t;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lt/d;->c:Lt/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lt/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lt/t;->a(Ljava/lang/String;Z)Lt/g;

    move-result-object v0

    iput-object v0, p0, Lt/d;->d:Lt/g;

    new-instance v0, Lt/I;

    const/16 v1, 0xb

    iget-object v2, p0, Lt/d;->e:Lt/I;

    iget v2, v2, Lt/I;->c:I

    iget-object v3, p0, Lt/d;->e:Lt/I;

    iget v3, v3, Lt/I;->d:I

    iget-object v4, p0, Lt/d;->e:Lt/I;

    iget v4, v4, Lt/I;->e:I

    iget-object v5, p0, Lt/d;->e:Lt/I;

    iget-boolean v5, v5, Lt/I;->f:Z

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lt/I;-><init>(IIIIZILjava/util/Locale;)V

    iput-object v0, p0, Lt/d;->e:Lt/I;

    iget-object v0, p0, Lt/d;->f:Lt/ax;

    invoke-virtual {v0}, Lt/ax;->a()V

    iget-object v0, p0, Lt/d;->g:Lt/U;

    invoke-virtual {v0}, Lt/U;->a()V

    iget-object v0, p0, Lt/d;->e:Lt/I;

    iget-object v1, p0, Lt/d;->f:Lt/ax;

    iget-object v2, p0, Lt/d;->g:Lt/U;

    iget-object v3, p0, Lt/d;->d:Lt/g;

    invoke-static {v0, v1, v2, v3}, Lt/d;->a(Lt/I;Lt/ax;Lt/U;Lt/g;)V

    iget-object v0, p0, Lt/d;->d:Lt/g;

    invoke-interface {v0}, Lt/g;->b()V

    iput-boolean v8, p0, Lt/d;->m:Z

    iget-object v0, p0, Lt/d;->w:Lt/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lt/d;->w:Lt/i;

    invoke-interface {v0}, Lt/i;->a()V

    :cond_2
    return-void
.end method

.method private b(Lt/Y;)V
    .locals 5

    invoke-virtual {p0}, Lt/d;->g()V

    :try_start_0
    iget v0, p1, Lt/Y;->f:I

    invoke-direct {p0, v0}, Lt/d;->d(I)Lt/af;

    move-result-object v0

    invoke-virtual {v0}, Lt/af;->b()I

    move-result v1

    iget v2, p1, Lt/Y;->g:I

    if-le v1, v2, :cond_0

    iget v1, p1, Lt/Y;->g:I

    invoke-virtual {v0, v1}, Lt/af;->d(I)Lt/Y;

    move-result-object v1

    iget-wide v1, v1, Lt/Y;->a:J

    iget-wide v3, p1, Lt/Y;->a:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Lt/Y;->g:I

    invoke-virtual {v0, v1}, Lt/af;->a(I)V

    iget-object v1, p0, Lt/d;->i:Lad/g;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lt/d;->i:Lad/g;

    iget-wide v3, p1, Lt/Y;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lad/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lt/d;->w:Lt/i;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lt/d;->w:Lt/i;

    iget-wide v2, p1, Lt/Y;->a:J

    invoke-interface {v1, v2, v3}, Lt/i;->a(J)V

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lt/d;->a(Lt/af;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public static b([BII)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method

.method private b(Lt/E;)[B
    .locals 5

    invoke-direct {p0, p1}, Lt/d;->a(Lt/E;)Lt/Y;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget v1, v0, Lt/Y;->f:I

    invoke-virtual {p0, v1}, Lt/d;->b(I)Lt/g;

    move-result-object v1

    iget v2, v0, Lt/Y;->d:I

    new-array v2, v2, [B

    iget v3, v0, Lt/Y;->b:I

    iget v4, v0, Lt/Y;->c:I

    add-int/2addr v3, v4

    invoke-static {v1, v3, v2}, Lt/d;->a(Lt/g;I[B)V

    const/4 v1, 0x0

    array-length v3, v2

    invoke-static {v2, v1, v3}, Lt/d;->c([BII)I

    move-result v1

    iget v3, v0, Lt/Y;->e:I

    if-eq v1, v3, :cond_1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checksum mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " record ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v0, v1}, Lt/d;->a(Lt/Y;Ljava/io/IOException;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lt/d;->f:Lt/ax;

    iget v3, v0, Lt/Y;->f:I

    invoke-direct {p0}, Lt/d;->m()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lt/ax;->a(II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    goto :goto_0
.end method

.method static c([BII)I
    .locals 2

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static c([BI)J
    .locals 6

    invoke-static {p0, p1}, Lt/d;->a([BI)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lt/d;->a([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static c(JLjava/lang/String;)Lt/E;
    .locals 2

    sget-object v0, Lt/d;->a:[B

    if-eqz p2, :cond_0

    invoke-static {p2}, Ln/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    :cond_0
    new-instance v1, Lt/E;

    invoke-direct {v1, p0, p1, v0}, Lt/E;-><init>(J[B)V

    return-object v1
.end method

.method private d(I)Lt/af;
    .locals 4

    iget-object v0, p0, Lt/d;->d:Lt/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/d;->d:Lt/g;

    mul-int/lit16 v2, p1, 0x2000

    iget-object v3, p0, Lt/d;->e:Lt/I;

    iget v3, v3, Lt/I;->j:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lt/g;->a(J)V

    iget-object v1, p0, Lt/d;->d:Lt/g;

    invoke-static {v1}, Lt/af;->a(Lt/g;)Lt/af;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private e(I)V
    .locals 2

    iget-object v0, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lt/d;->g(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private f(I)V
    .locals 4

    invoke-virtual {p0}, Lt/d;->g()V

    iget-object v0, p0, Lt/d;->d:Lt/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/d;->d:Lt/g;

    mul-int/lit16 v2, p1, 0x400

    add-int/lit16 v2, v2, 0x4000

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lt/g;->a(J)V

    iget-object v1, p0, Lt/d;->g:Lt/U;

    iget-object v2, p0, Lt/d;->d:Lt/g;

    invoke-virtual {v1, v2, p1}, Lt/U;->a(Lt/g;I)V

    iget-object v1, p0, Lt/d;->d:Lt/g;

    invoke-interface {v1}, Lt/g;->b()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private g(I)V
    .locals 2

    invoke-virtual {p0}, Lt/d;->g()V

    new-instance v0, Lt/af;

    invoke-direct {v0, p1}, Lt/af;-><init>(I)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lt/d;->a(Lt/af;Z)V

    iget-object v0, p0, Lt/d;->i:Lad/g;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lt/d;->i:Lad/g;

    invoke-virtual {v1}, Lad/g;->a()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lt/d;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private h(I)V
    .locals 2

    invoke-virtual {p0}, Lt/d;->g()V

    invoke-direct {p0, p1}, Lt/d;->g(I)V

    iget-object v0, p0, Lt/d;->h:[Lt/g;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/d;->h:[Lt/g;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lt/g;->a()V

    iget-object v0, p0, Lt/d;->h:[Lt/g;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_0
    iget-object v0, p0, Lt/d;->c:Lt/t;

    invoke-virtual {p0, p1}, Lt/d;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lt/t;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h()[B
    .locals 1

    sget-object v0, Lt/d;->a:[B

    return-object v0
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lt/d;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lt/d;->g()V

    iget-object v0, p0, Lt/d;->j:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lt/d;->j:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lt/d;->j:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/Y;

    invoke-direct {p0, v0}, Lt/d;->b(Lt/Y;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lt/d;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lt/d;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private k()V
    .locals 4

    invoke-virtual {p0}, Lt/d;->g()V

    iget-object v0, p0, Lt/d;->d:Lt/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/d;->d:Lt/g;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v2, v3}, Lt/g;->a(J)V

    iget-object v1, p0, Lt/d;->f:Lt/ax;

    iget-object v2, p0, Lt/d;->d:Lt/g;

    invoke-virtual {v1, v2}, Lt/ax;->a(Lt/g;)V

    iget-object v1, p0, Lt/d;->d:Lt/g;

    invoke-interface {v1}, Lt/g;->b()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private l()Lt/af;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0}, Lt/d;->g()V

    const/4 v0, 0x0

    move v1, v5

    :goto_0
    iget-object v2, p0, Lt/d;->f:Lt/ax;

    iget v2, v2, Lt/ax;->e:I

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lt/d;->f:Lt/ax;

    iget-object v2, v2, Lt/ax;->c:[I

    aget v2, v2, v1

    iget-object v3, p0, Lt/d;->e:Lt/I;

    iget v3, v3, Lt/I;->e:I

    if-ge v2, v3, :cond_1

    :try_start_0
    invoke-direct {p0, v1}, Lt/d;->d(I)Lt/af;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-ne v1, v4, :cond_2

    iget-object v2, p0, Lt/d;->e:Lt/I;

    iget-boolean v2, v2, Lt/I;->f:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lt/d;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    :goto_2
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lt/d;->f:Lt/ax;

    invoke-virtual {v3}, Lt/ax;->c()I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-direct {p0, v3}, Lt/d;->h(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ne v1, v4, :cond_3

    move v2, v5

    :goto_3
    iget-object v3, p0, Lt/d;->f:Lt/ax;

    iget v3, v3, Lt/ax;->e:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lt/d;->f:Lt/ax;

    invoke-virtual {v3, v2}, Lt/ax;->d(I)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    :cond_3
    if-ne v1, v4, :cond_4

    iget-object v2, p0, Lt/d;->f:Lt/ax;

    iget v2, v2, Lt/ax;->e:I

    iget-object v3, p0, Lt/d;->e:Lt/I;

    iget v3, v3, Lt/I;->d:I

    if-ge v2, v3, :cond_4

    iget-object v1, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_1
    iget-object v1, p0, Lt/d;->f:Lt/ax;

    invoke-virtual {v1}, Lt/ax;->b()I

    move-result v1

    iget-object v2, p0, Lt/d;->g:Lt/U;

    invoke-virtual {v2, v1}, Lt/U;->b(I)V

    iget-object v2, p0, Lt/d;->g:Lt/U;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lt/U;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :cond_4
    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lt/d;->f:Lt/ax;

    invoke-virtual {v1}, Lt/ax;->c()I

    move-result v1

    invoke-direct {p0, v1}, Lt/d;->g(I)V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lt/af;->b()I

    move-result v2

    iget-object v3, p0, Lt/d;->f:Lt/ax;

    iget-object v3, v3, Lt/ax;->c:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_7

    :cond_6
    new-instance v0, Lt/af;

    invoke-direct {v0, v1}, Lt/af;-><init>(I)V

    :cond_7
    iput v1, p0, Lt/d;->t:I

    return-object v0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :catch_0
    move-exception v2

    goto/16 :goto_1

    :cond_9
    move v1, v4

    goto/16 :goto_1
.end method

.method private m()I
    .locals 4

    iget v0, p0, Lt/d;->u:I

    if-ltz v0, :cond_0

    iget v0, p0, Lt/d;->u:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method private n()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lt/d;->g()V

    iget-boolean v0, p0, Lt/d;->v:Z

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lt/d;->f:Lt/ax;

    invoke-virtual {v0}, Lt/ax;->f()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    invoke-static {}, Las/a;->j()J

    move-result-wide v0

    iget-object v2, p0, Lt/d;->f:Lt/ax;

    invoke-virtual {v2}, Lt/ax;->e()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v4, 0x3fd0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lt/d;->e:Lt/I;

    iget v0, v0, Lt/I;->g:I

    return v0
.end method

.method public a(I)V
    .locals 8

    iget-object v0, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lt/d;->e:Lt/I;

    iget v0, v0, Lt/I;->g:I

    if-eq p1, v0, :cond_0

    new-instance v0, Lt/I;

    iget-object v1, p0, Lt/d;->e:Lt/I;

    iget v1, v1, Lt/I;->a:I

    iget-object v2, p0, Lt/d;->e:Lt/I;

    iget v2, v2, Lt/I;->c:I

    iget-object v3, p0, Lt/d;->e:Lt/I;

    iget v3, v3, Lt/I;->d:I

    iget-object v4, p0, Lt/d;->e:Lt/I;

    iget v4, v4, Lt/I;->e:I

    iget-object v5, p0, Lt/d;->e:Lt/I;

    iget-boolean v5, v5, Lt/I;->f:Z

    iget-object v6, p0, Lt/d;->e:Lt/I;

    iget-object v7, v6, Lt/I;->h:Ljava/util/Locale;

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lt/I;-><init>(IIIIZILjava/util/Locale;)V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lt/I;->a([BI)I

    iget-object v2, p0, Lt/d;->d:Lt/g;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lt/d;->d:Lt/g;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lt/g;->a(J)V

    iget-object v3, p0, Lt/d;->d:Lt/g;

    invoke-interface {v3, v1}, Lt/g;->a([B)V

    iget-object v1, p0, Lt/d;->d:Lt/g;

    invoke-interface {v1}, Lt/g;->b()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v0, p0, Lt/d;->e:Lt/I;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    iget-object v0, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {p0}, Lt/d;->f()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(ILjava/util/Locale;)V
    .locals 2

    iget-object v0, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lt/d;->m:Z

    iget-object v0, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1, p2}, Lt/d;->b(ILjava/util/Locale;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Lt/d;->f()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Ljava/util/Collection;)V
    .locals 14

    const/4 v4, 0x0

    iget-object v1, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lt/d;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lt/d;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0}, Lt/d;->i()V

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/aC;

    iget-object v5, v1, Lt/aC;->c:[B

    array-length v5, v5

    iget-object v1, v1, Lt/aC;->b:[B

    array-length v1, v1

    add-int/2addr v1, v5

    add-int/2addr v1, v4

    move v4, v1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v10, v1, [B

    invoke-direct {p0}, Lt/d;->l()Lt/af;

    move-result-object v1

    new-instance v3, Lt/aA;

    invoke-virtual {v1}, Lt/af;->a()I

    move-result v4

    invoke-virtual {p0, v4}, Lt/d;->b(I)Lt/g;

    move-result-object v4

    invoke-virtual {v1}, Lt/af;->c()I

    move-result v5

    invoke-direct {v3, v4, v5, v10}, Lt/aA;-><init>(Lt/g;I[B)V

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v2, v3

    move-object v3, v1

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lt/aC;

    move-object v7, v0

    invoke-virtual {v3}, Lt/af;->b()I

    move-result v1

    iget-object v4, p0, Lt/d;->e:Lt/I;

    iget v4, v4, Lt/I;->e:I

    if-lt v1, v4, :cond_3

    invoke-direct {p0, v2, v3}, Lt/d;->a(Lt/aA;Lt/af;)V

    invoke-direct {p0}, Lt/d;->l()Lt/af;

    move-result-object v1

    new-instance v2, Lt/aA;

    invoke-virtual {v1}, Lt/af;->a()I

    move-result v3

    invoke-virtual {p0, v3}, Lt/d;->b(I)Lt/g;

    move-result-object v3

    invoke-virtual {v1}, Lt/af;->c()I

    move-result v4

    invoke-direct {v2, v3, v4, v10}, Lt/aA;-><init>(Lt/g;I[B)V

    move-object v12, v2

    move-object v13, v1

    :goto_3
    iget-object v1, v7, Lt/aC;->b:[B

    invoke-virtual {v12, v1}, Lt/aA;->a([B)V

    iget-object v1, v7, Lt/aC;->c:[B

    invoke-virtual {v12, v1}, Lt/aA;->a([B)V

    new-instance v1, Lt/Y;

    iget-object v2, v7, Lt/aC;->a:Lt/E;

    invoke-virtual {v2}, Lt/E;->a()J

    move-result-wide v2

    invoke-virtual {v13}, Lt/af;->c()I

    move-result v4

    iget-object v5, v7, Lt/aC;->b:[B

    array-length v5, v5

    iget-object v6, v7, Lt/aC;->c:[B

    array-length v6, v6

    iget-object v8, v7, Lt/aC;->c:[B

    const/4 v9, 0x0

    iget-object v7, v7, Lt/aC;->c:[B

    array-length v7, v7

    invoke-static {v8, v9, v7}, Lt/d;->c([BII)I

    move-result v7

    invoke-virtual {v13}, Lt/af;->a()I

    move-result v8

    invoke-virtual {v13}, Lt/af;->b()I

    move-result v9

    invoke-direct/range {v1 .. v9}, Lt/Y;-><init>(JIIIIII)V

    invoke-virtual {v13, v1}, Lt/af;->a(Lt/Y;)V

    move-object v2, v12

    move-object v3, v13

    goto :goto_2

    :cond_2
    invoke-direct {p0, v2, v3}, Lt/d;->a(Lt/aA;Lt/af;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_3
    move-object v12, v2

    move-object v13, v3

    goto :goto_3
.end method

.method public a(J)[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lt/d;->a(JLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/lang/String;)[B
    .locals 2

    iget-object v0, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lt/d;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_0
    invoke-direct {p0}, Lt/d;->j()V

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p1, p2, p3}, Lt/d;->c(JLjava/lang/String;)Lt/E;

    move-result-object v0

    invoke-direct {p0, v0}, Lt/d;->b(Lt/E;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-direct {p0}, Lt/d;->j()V

    throw v0
.end method

.method public b()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lt/d;->e:Lt/I;

    iget-object v0, v0, Lt/I;->h:Ljava/util/Locale;

    return-object v0
.end method

.method b(I)Lt/g;
    .locals 5

    iget-object v0, p0, Lt/d;->h:[Lt/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/d;->h:[Lt/g;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lt/d;->h:[Lt/g;

    iget-object v2, p0, Lt/d;->c:Lt/t;

    invoke-virtual {p0, p1}, Lt/d;->c(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lt/t;->a(Ljava/lang/String;Z)Lt/g;

    move-result-object v2

    aput-object v2, v1, p1

    :cond_0
    iget-object v1, p0, Lt/d;->h:[Lt/g;

    aget-object v1, v1, p1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(JLjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-static {p1, p2, p3}, Lt/d;->c(JLjava/lang/String;)Lt/E;

    move-result-object v0

    invoke-direct {p0, v0}, Lt/d;->a(Lt/E;)Lt/Y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-direct {p0}, Lt/d;->j()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-direct {p0}, Lt/d;->j()V

    throw v0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lt/d;->f:Lt/ax;

    invoke-virtual {v0}, Lt/ax;->d()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method c(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lt/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 3

    iget-object v0, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lt/d;->f:Lt/ax;

    invoke-virtual {v0}, Lt/ax;->e()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    iget-object v2, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Lt/d;->e:Lt/I;

    iget v0, v0, Lt/I;->d:I

    iget-object v1, p0, Lt/d;->e:Lt/I;

    iget v1, v1, Lt/I;->e:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public f()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lt/d;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lt/d;->m:Z

    iget-object v0, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Lt/d;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    :goto_1
    :try_start_3
    iget-object v1, p0, Lt/d;->d:Lt/g;

    invoke-interface {v1}, Lt/g;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    const/4 v1, 0x0

    move v4, v1

    move-object v1, v0

    move v0, v4

    :goto_3
    :try_start_4
    iget-object v2, p0, Lt/d;->h:[Lt/g;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lt/d;->h:[Lt/g;

    aget-object v2, v2, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_1

    :try_start_5
    iget-object v2, p0, Lt/d;->h:[Lt/g;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lt/g;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    :try_start_6
    iget-object v2, p0, Lt/d;->h:[Lt/g;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    :try_start_8
    iget-object v0, p0, Lt/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    iget-object v0, p0, Lt/d;->k:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method g()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lt/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lt/d;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " locale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lt/d;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " auto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lt/d;->e:Lt/I;

    iget-boolean v1, v1, Lt/I;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lt/d;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lt/d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max_shards:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lt/d;->e:Lt/I;

    iget v1, v1, Lt/I;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
