.class public LA/p;
.super Ljava/lang/Object;


# static fields
.field private static k:Ljava/util/Hashtable;


# instance fields
.field private final a:Lac/p;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private e:J

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, LA/p;->k:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lac/p;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, LA/p;->f:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LA/p;->j:J

    iput-object p1, p0, LA/p;->a:Lac/p;

    iput-object p2, p0, LA/p;->b:Ljava/lang/String;

    iput-object p3, p0, LA/p;->c:Ljava/lang/String;

    iput p4, p0, LA/p;->d:I

    sget-object v0, LA/p;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, LA/p;-><init>(Lac/p;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private h()J
    .locals 2

    iget-object v0, p0, LA/p;->a:Lac/p;

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, LA/p;->h()J

    move-result-wide v0

    iput-wide v0, p0, LA/p;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .locals 4

    iput p1, p0, LA/p;->h:I

    iget-wide v0, p0, LA/p;->e:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, LA/p;->e:J

    iget v0, p0, LA/p;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LA/p;->i:I

    iget v0, p0, LA/p;->f:I

    if-le v0, p1, :cond_0

    iput p1, p0, LA/p;->f:I

    :cond_0
    iget v0, p0, LA/p;->g:I

    if-ge v0, p1, :cond_1

    iput p1, p0, LA/p;->g:I

    :cond_1
    iget-object v0, p0, LA/p;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, LA/p;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, LA/p;->d:I

    iget-object v1, p0, LA/p;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method public declared-synchronized b()V
    .locals 4

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, LA/p;->j:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, LA/p;->h()J

    move-result-wide v0

    iget-wide v2, p0, LA/p;->j:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, LA/p;->a(I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LA/p;->j:J
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

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, -0x1

    :try_start_0
    iput-wide v0, p0, LA/p;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, LA/p;->i:I

    if-lez v0, :cond_0

    iget-wide v0, p0, LA/p;->e:J

    iget v2, p0, LA/p;->i:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iget v2, p0, LA/p;->i:I

    int-to-long v2, v2

    div-long/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LA/p;->i:I

    if-lez v0, :cond_0

    iget v0, p0, LA/p;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LA/p;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LA/p;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, LA/p;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, LA/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, LA/p;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, LA/p;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, LA/p;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, LA/p;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, LA/p;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
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
