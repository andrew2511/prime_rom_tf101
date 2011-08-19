.class public Lf/P;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Hashtable;

.field private static b:I

.field private static final c:[B

.field private static o:Lk/l;

.field private static p:Lk/l;

.field private static q:Lk/l;


# instance fields
.field private d:[B

.field private e:Lk/l;

.field private f:Z

.field private g:Lk/l;

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private final l:Lf/K;

.field private final m:Z

.field private n:Z

.field private r:Lf/U;

.field private s:[Ljava/lang/String;

.field private t:[Ljava/lang/String;

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lf/P;->a:Ljava/util/Hashtable;

    const/4 v0, 0x1

    sput v0, Lf/P;->b:I

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lf/P;->c:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x43t
        0x4at
        0x50t
        0x47t
    .end array-data
.end method

.method public constructor <init>(Lf/K;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lf/P;-><init>(Lf/K;Lk/l;Z)V

    return-void
.end method

.method public constructor <init>(Lf/K;Lk/l;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lf/P;-><init>(Lf/K;Lk/l;Z)V

    return-void
.end method

.method public constructor <init>(Lf/K;Lk/l;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lf/P;->u:I

    iput-boolean v2, p0, Lf/P;->w:Z

    iput-boolean v2, p0, Lf/P;->x:Z

    iput-boolean v2, p0, Lf/P;->y:Z

    invoke-static {p2}, Lf/P;->a(Lk/l;)V

    iput-object p1, p0, Lf/P;->l:Lf/K;

    iput-boolean p3, p0, Lf/P;->m:Z

    invoke-direct {p0, p2, v2}, Lf/P;->a(Lk/l;Z)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lf/P;->f:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lf/P;->h:J

    iput v2, p0, Lf/P;->v:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Lf/K;[B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lf/P;->u:I

    iput-boolean v2, p0, Lf/P;->w:Z

    iput-boolean v2, p0, Lf/P;->x:Z

    iput-boolean v2, p0, Lf/P;->y:Z

    iput-object p1, p0, Lf/P;->l:Lf/K;

    iput-boolean v2, p0, Lf/P;->m:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lf/P;->h:J

    iput-boolean v2, p0, Lf/P;->f:Z

    invoke-virtual {p0, p2}, Lf/P;->a([B)V

    return-void
.end method

.method private static A()Lk/l;
    .locals 3

    const/16 v2, 0x100

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->w()Lk/i;

    move-result-object v0

    sget-object v1, Lf/P;->q:Lk/l;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "/no_tile_256.png"

    invoke-interface {v0, v1}, Lk/i;->a(Ljava/lang/String;)Lk/l;

    move-result-object v1

    sput-object v1, Lf/P;->q:Lk/l;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lf/P;->q:Lk/l;

    return-object v0

    :catch_0
    move-exception v1

    invoke-interface {v0, v2, v2}, Lk/i;->a(II)Lk/l;

    move-result-object v0

    sput-object v0, Lf/P;->q:Lk/l;

    const-string v0, "MAP"

    invoke-static {v0, v1}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/DataInput;)Lf/P;
    .locals 3

    invoke-static {p0}, Lf/K;->a(Ljava/io/DataInput;)Lf/K;

    move-result-object v0

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    new-array v1, v1, [B

    invoke-interface {p0, v1}, Ljava/io/DataInput;->readFully([B)V

    new-instance v2, Lf/P;

    invoke-direct {v2, v0, v1}, Lf/P;-><init>(Lf/K;[B)V

    return-object v2
.end method

.method private a(Law/e;J)Lf/U;
    .locals 6

    const/4 v5, 0x3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v5}, Law/e;->i(I)I

    move-result v0

    new-array v1, v0, [Lcom/google/googlenav/layer/n;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    new-instance v3, Lcom/google/googlenav/layer/n;

    invoke-virtual {p1, v5, v2}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/layer/n;-><init>(Law/e;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lf/U;

    iget-object v2, p0, Lf/P;->l:Lf/K;

    invoke-direct {v0, v2}, Lf/U;-><init>(Lf/K;)V

    invoke-virtual {v0, v1, p2, p3}, Lf/U;->a([Lcom/google/googlenav/layer/n;J)V

    goto :goto_0
.end method

.method private static a(Lk/l;)V
    .locals 3

    const/16 v1, 0x100

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lk/l;->e()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lk/l;->f()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong image size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lk/l;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lk/l;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private declared-synchronized a(Lk/l;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/P;->e:Lk/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/P;->e:Lk/l;

    invoke-interface {v0}, Lk/l;->h()V

    iget-boolean v0, p0, Lf/P;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/P;->e:Lk/l;

    invoke-interface {v0}, Lk/l;->b()V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lf/P;->e:Lk/l;

    iput-boolean p2, p0, Lf/P;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {p1}, Lk/l;->g()Lk/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b([B)Lk/l;
    .locals 6

    const/16 v5, 0x100

    const/4 v4, 0x0

    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-static {}, Lf/P;->A()Lk/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lf/P;->a:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/l;

    if-eqz p0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->w()Lk/i;

    move-result-object v2

    invoke-interface {v2, v5, v5, v4}, Lk/i;->a(IIZ)Lk/l;

    move-result-object v2

    invoke-interface {v2}, Lk/l;->d()Lk/m;

    move-result-object v3

    invoke-interface {v3, v0}, Lk/m;->a(I)V

    invoke-interface {v3, v4, v4, v5, v5}, Lk/m;->b(IIII)V

    sget-object v0, Lf/P;->a:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    goto :goto_0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lf/P;->b:I

    return-void
.end method

.method private declared-synchronized b(Lk/l;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/P;->g:Lk/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/P;->g:Lk/l;

    invoke-interface {v0}, Lk/l;->h()V

    iget-boolean v0, p0, Lf/P;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/P;->g:Lk/l;

    invoke-interface {v0}, Lk/l;->b()V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lf/P;->g:Lk/l;

    iput-boolean p2, p0, Lf/P;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {p1}, Lk/l;->g()Lk/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(J)Lk/l;
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    const-wide/high16 v1, -0x8000

    cmp-long v1, p1, v1

    if-nez v1, :cond_3

    :try_start_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lf/P;->h:J

    :goto_0
    iget-object v1, p0, Lf/P;->e:Lk/l;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lf/P;->f:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lf/P;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lf/P;->b(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lf/P;->e:Lk/l;

    if-nez v1, :cond_4

    invoke-direct {p0}, Lf/P;->y()Lk/l;

    move-result-object v1

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    invoke-static {}, Lac/i;->b()V

    :cond_2
    return-object v1

    :cond_3
    :try_start_3
    iput-wide p1, p0, Lf/P;->h:J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :try_start_4
    iget-object v1, p0, Lf/P;->e:Lk/l;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private static c([B)Lk/l;
    .locals 4

    :try_start_0
    invoke-static {p0}, LaN/c;->a([B)[B

    move-result-object v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->w()Lk/i;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lk/i;->a([BII)Lk/l;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MAP"

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lf/P;->A()Lk/l;

    move-result-object v0

    goto :goto_0
.end method

.method public static w()I
    .locals 1

    sget v0, Lf/P;->b:I

    return v0
.end method

.method private y()Lk/l;
    .locals 1

    sget-object v0, Lf/P;->p:Lk/l;

    if-eqz v0, :cond_0

    sget-object v0, Lf/P;->o:Lk/l;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lf/P;->z()V

    :cond_1
    iget-boolean v0, p0, Lf/P;->m:Z

    if-eqz v0, :cond_2

    sget-object v0, Lf/P;->p:Lk/l;

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lf/P;->o:Lk/l;

    goto :goto_0
.end method

.method private static z()V
    .locals 4

    const/16 v3, 0x100

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->w()Lk/i;

    move-result-object v0

    :try_start_0
    const-string v1, "/loading_tile_android.png"

    invoke-interface {v0, v1}, Lk/i;->a(Ljava/lang/String;)Lk/l;

    move-result-object v1

    sput-object v1, Lf/P;->o:Lk/l;

    sget-object v1, Lf/P;->o:Lk/l;

    sput-object v1, Lf/P;->p:Lk/l;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    invoke-interface {v0, v3, v3, v2}, Lk/i;->a(IIZ)Lk/l;

    move-result-object v0

    sput-object v0, Lf/P;->p:Lk/l;

    sput-object v0, Lf/P;->o:Lk/l;

    const-string v0, "MAP"

    invoke-static {v0, v1}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(IIIIII)Lk/l;
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lf/P;->f()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const-wide/high16 v0, -0x8000

    :try_start_1
    invoke-direct {p0, v0, v1}, Lf/P;->c(J)Lk/l;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lk/l;->a(IIIIII)Lk/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lf/P;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/P;->f:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lf/P;->a(Lk/l;Z)V
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

.method public declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lf/P;->e:Lk/l;

    iget-boolean v1, p0, Lf/P;->x:Z

    invoke-direct {p0, v0, v1}, Lf/P;->b(Lk/l;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/P;->x:Z

    :cond_0
    iput p1, p0, Lf/P;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lf/P;->h:J

    return-void
.end method

.method public a(JJ)V
    .locals 6

    const-wide/16 v4, 0x0

    iget v0, p0, Lf/P;->k:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lf/P;->j:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lf/P;->j:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iput-wide v4, p0, Lf/P;->i:J

    :cond_0
    iget-wide v0, p0, Lf/P;->i:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iput-wide p1, p0, Lf/P;->i:J

    :cond_1
    iput-wide p1, p0, Lf/P;->j:J

    invoke-virtual {p0}, Lf/P;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lf/P;->f:Z

    if-nez v0, :cond_2

    iget v0, p0, Lf/P;->k:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_2

    iget v0, p0, Lf/P;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf/P;->k:I

    :cond_2
    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 1

    iget-object v0, p0, Lf/P;->l:Lf/K;

    invoke-virtual {v0, p1}, Lf/K;->a(Ljava/io/DataOutput;)V

    iget-object v0, p0, Lf/P;->d:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    iget-object v0, p0, Lf/P;->d:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public declared-synchronized a(Lk/l;IZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lf/P;->a(Lk/l;)V

    invoke-direct {p0, p1, p3}, Lf/P;->a(Lk/l;Z)V

    invoke-virtual {p0, p2}, Lf/P;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lf/P;->w:Z

    return-void
.end method

.method public declared-synchronized a([B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lf/P;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tile already complete"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lf/P;->v:I

    iput-object p1, p0, Lf/P;->d:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lf/P;->b(Lk/l;Z)V

    iget-boolean v0, p0, Lf/P;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lf/P;->a(Lk/l;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lk/m;JIIZ)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lf/P;->f()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p6, :cond_1

    :cond_0
    invoke-direct {p0, p2, p3}, Lf/P;->c(J)Lk/l;

    move-result-object v0

    invoke-interface {p1, v0, p4, p5}, Lk/m;->a(Lk/l;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(J)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/P;->e:Lk/l;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lf/P;->f:Z

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Lf/k;

    invoke-direct {v0}, Lf/k;-><init>()V

    iget-object v1, p0, Lf/P;->d:[B

    invoke-virtual {v0, v1}, Lf/k;->a([B)[B

    move-result-object v1

    invoke-virtual {v0}, Lf/k;->a()Law/e;

    move-result-object v2

    invoke-direct {p0, v2, p1, p2}, Lf/P;->a(Law/e;J)Lf/U;

    move-result-object v2

    iput-object v2, p0, Lf/P;->r:Lf/U;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->V()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lf/k;->b()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lf/P;->s:[Ljava/lang/String;

    invoke-virtual {v0}, Lf/k;->c()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lf/P;->t:[Ljava/lang/String;

    invoke-virtual {v0}, Lf/k;->d()I

    move-result v0

    iput v0, p0, Lf/P;->u:I

    :cond_1
    array-length v0, v1

    if-nez v0, :cond_3

    invoke-static {}, Lf/P;->A()Lk/l;

    move-result-object v0

    move-object v1, v0

    move v0, v3

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lf/P;->a(Lk/l;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/P;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    array-length v0, v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    invoke-static {v1}, Lf/P;->b([B)Lk/l;

    move-result-object v0

    move-object v1, v0

    move v0, v3

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    sget-object v2, Lf/P;->c:[B

    invoke-static {v1, v0, v2}, Lf/k;->a([BI[B)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v1}, Lf/P;->c([B)Lk/l;

    move-result-object v0

    sget-object v1, Lf/P;->q:Lk/l;

    if-eq v0, v1, :cond_5

    move v1, v4

    :goto_1
    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->w()Lk/i;

    move-result-object v0

    const/4 v2, 0x0

    array-length v3, v1

    invoke-interface {v0, v1, v2, v3}, Lk/i;->a([BII)Lk/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lf/P;->d:[B

    return-object v0
.end method

.method public c()Lf/K;
    .locals 1

    iget-object v0, p0, Lf/P;->l:Lf/K;

    return-object v0
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lf/P;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lf/P;->v()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lf/P;->e:Lk/l;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lf/P;->a(Lk/l;Z)V

    :cond_1
    iget-object v0, p0, Lf/P;->g:Lk/l;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lf/P;->b(Lk/l;Z)V

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lf/P;->v:I

    const/4 v0, 0x0

    iput-object v0, p0, Lf/P;->r:Lf/U;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lf/P;->d:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lf/P;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    check-cast p1, Lf/P;

    iget-object v0, p0, Lf/P;->l:Lf/K;

    if-nez v0, :cond_3

    iget-object v0, p1, Lf/P;->l:Lf/K;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lf/P;->l:Lf/K;

    iget-object v1, p1, Lf/P;->l:Lf/K;

    invoke-virtual {v0, v1}, Lf/K;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lf/P;->e:Lk/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lf/P;->h:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lf/P;->i:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lf/P;->l:Lf/K;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/P;->l:Lf/K;

    invoke-virtual {v0}, Lf/K;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lf/P;->k:I

    return v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lf/P;->d:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/P;->d:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized k()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/P;->g:Lk/l;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lf/P;->a(Lk/l;Z)V

    const/4 v0, 0x0

    iput v0, p0, Lf/P;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lf/P;->v:I

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lf/P;->f:Z

    return v0
.end method

.method public declared-synchronized n()Lk/l;
    .locals 2

    monitor-enter p0

    const-wide/high16 v0, -0x8000

    :try_start_0
    invoke-direct {p0, v0, v1}, Lf/P;->c(J)Lk/l;

    move-result-object v0

    invoke-interface {v0}, Lk/l;->g()Lk/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o()V
    .locals 2

    const-wide/high16 v0, -0x8000

    invoke-direct {p0, v0, v1}, Lf/P;->c(J)Lk/l;

    return-void
.end method

.method public p()Lf/U;
    .locals 1

    iget-object v0, p0, Lf/P;->r:Lf/U;

    return-object v0
.end method

.method public q()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf/P;->s:[Ljava/lang/String;

    return-object v0
.end method

.method public r()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf/P;->t:[Ljava/lang/String;

    return-object v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lf/P;->u:I

    return v0
.end method

.method public t()Z
    .locals 2

    iget v0, p0, Lf/P;->v:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/P;->g:Lk/l;

    iget-object v1, p0, Lf/P;->e:Lk/l;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lf/P;->l:Lf/K;

    invoke-virtual {v1}, Lf/K;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/P;->d:[B

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lf/P;->d:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "B?"

    goto :goto_0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lf/P;->n:Z

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lf/P;->w:Z

    return v0
.end method

.method public declared-synchronized x()I
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lf/P;->y:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lf/P;->g:Lk/l;

    invoke-interface {v1}, Lk/l;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-boolean v1, p0, Lf/P;->x:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lf/P;->e:Lk/l;

    invoke-interface {v1}, Lk/l;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
