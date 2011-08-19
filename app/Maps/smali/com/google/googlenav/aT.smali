.class public Lcom/google/googlenav/aT;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Ljava/util/Vector;


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "c"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "v"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/aT;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/googlenav/aT;->c:I

    iput v0, p0, Lcom/google/googlenav/aT;->d:I

    iput v0, p0, Lcom/google/googlenav/aT;->f:I

    iput v0, p0, Lcom/google/googlenav/aT;->g:I

    iput v0, p0, Lcom/google/googlenav/aT;->e:I

    iput v0, p0, Lcom/google/googlenav/aT;->h:I

    iput v0, p0, Lcom/google/googlenav/aT;->i:I

    iput v0, p0, Lcom/google/googlenav/aT;->j:I

    iput-object p1, p0, Lcom/google/googlenav/aT;->k:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(B)Lcom/google/googlenav/aT;
    .locals 2

    const-class v0, Lcom/google/googlenav/aT;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/googlenav/aT;->b:Ljava/util/Vector;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/googlenav/aT;->f()Ljava/util/Vector;

    move-result-object v1

    sput-object v1, Lcom/google/googlenav/aT;->b:Ljava/util/Vector;

    :cond_0
    sget-object v1, Lcom/google/googlenav/aT;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lt p0, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_1
    sget-object v1, Lcom/google/googlenav/aT;->b:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/aT;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/aT;->f:I

    iget v1, p0, Lcom/google/googlenav/aT;->g:I

    iget v2, p0, Lcom/google/googlenav/aT;->h:I

    add-int v3, v0, v1

    const/16 v4, 0x32

    if-gt v3, v4, :cond_1

    add-int v3, v0, v1

    if-lez v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/googlenav/aT;->f:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/google/googlenav/aT;->g:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/google/googlenav/aT;->h:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_2

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    if-lez v1, :cond_3

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    if-lez v2, :cond_4

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "r"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/googlenav/aT;->k:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static f()Ljava/util/Vector;
    .locals 6

    const/4 v5, 0x0

    const-string v0, "CacheHitStats"

    invoke-static {v0}, Lac/i;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v2, v5

    :goto_0
    sget-object v3, Lcom/google/googlenav/aT;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/google/googlenav/aT;

    sget-object v4, Lcom/google/googlenav/aT;->a:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Lcom/google/googlenav/aT;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    iput v4, v3, Lcom/google/googlenav/aT;->c:I

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    iput v4, v3, Lcom/google/googlenav/aT;->d:I

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    iput v4, v3, Lcom/google/googlenav/aT;->i:I

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    iput v4, v3, Lcom/google/googlenav/aT;->j:I

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    iput v4, v3, Lcom/google/googlenav/aT;->e:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "STATS"

    invoke-static {v2, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v2, "CacheHitStats"

    invoke-interface {v0, v2}, Ln/a;->a(Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    sget-object v2, Lcom/google/googlenav/aT;->a:[Ljava/lang/String;

    array-length v2, v2

    if-eq v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    move v0, v5

    :goto_1
    sget-object v2, Lcom/google/googlenav/aT;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/google/googlenav/aT;

    sget-object v3, Lcom/google/googlenav/aT;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lcom/google/googlenav/aT;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/aT;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/aT;->e:I

    iget v0, p0, Lcom/google/googlenav/aT;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/aT;->h:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/aT;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/aT;->c:I

    iget v0, p0, Lcom/google/googlenav/aT;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/aT;->f:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/aT;->a(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/aT;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/aT;->d:I

    iget v0, p0, Lcom/google/googlenav/aT;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/aT;->g:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/aT;->a(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized d()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/aT;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/aT;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
