.class public abstract LH/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Z

.field protected b:J

.field protected c:Z

.field protected volatile d:Z

.field protected final e:Ljava/lang/Object;

.field protected f:J

.field private g:Lf/h;

.field private h:I

.field private i:I

.field private j:I

.field private k:LG/Z;

.field private l:LH/f;


# direct methods
.method protected constructor <init>(ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LH/l;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LH/l;->e:Ljava/lang/Object;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, LH/l;->f:J

    iput-boolean p1, p0, LH/l;->c:Z

    iput-boolean p2, p0, LH/l;->a:Z

    invoke-virtual {p0}, LH/l;->k()V

    invoke-direct {p0}, LH/l;->z()V

    return-void
.end method

.method private A()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LastLocation_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private B()V
    .locals 4

    invoke-virtual {p0}, LH/l;->p()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget-wide v2, p0, LH/l;->b:J

    invoke-interface {v1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    iget v2, p0, LH/l;->j:I

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v2, p0, LH/l;->g:Lf/h;

    invoke-static {v2, v1}, Lf/h;->a(Lf/h;Ljava/io/DataOutput;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v1

    invoke-direct {p0}, LH/l;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ln/a;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private z()V
    .locals 8

    const/4 v7, 0x0

    iput-object v7, p0, LH/l;->g:Lf/h;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LH/l;->b:J

    invoke-direct {p0}, LH/l;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lac/i;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    invoke-virtual {p0}, LH/l;->w()Lac/p;

    move-result-object v3

    invoke-interface {v3}, Lac/p;->a()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v5, 0xafc80

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    invoke-static {v0}, Lf/h;->a(Ljava/io/DataInput;)Lf/h;

    move-result-object v0

    iput-object v0, p0, LH/l;->g:Lf/h;

    iput-wide v1, p0, LH/l;->b:J

    iput v3, p0, LH/l;->j:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-direct {p0}, LH/l;->A()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ln/a;->a(Ljava/lang/String;[B)Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    iget-object v0, p0, LH/l;->l:LH/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LH/l;->l:LH/f;

    invoke-virtual {v1, p1, p0}, LH/f;->a(ILH/l;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(LH/f;)V
    .locals 0

    iput-object p1, p0, LH/l;->l:LH/f;

    return-void
.end method

.method protected final a(Lf/h;IIILG/Z;J)V
    .locals 3

    iget-object v0, p0, LH/l;->g:Lf/h;

    iput-object p1, p0, LH/l;->g:Lf/h;

    iput p2, p0, LH/l;->h:I

    iput p3, p0, LH/l;->i:I

    iput p4, p0, LH/l;->j:I

    iput-object p5, p0, LH/l;->k:LG/Z;

    const-wide/16 v1, -0x1

    cmp-long v1, p6, v1

    if-eqz v1, :cond_0

    move-wide v1, p6

    :goto_0
    iput-wide v1, p0, LH/l;->b:J

    const/4 v1, 0x1

    iput-boolean v1, p0, LH/l;->c:Z

    iget-object v1, p0, LH/l;->l:LH/f;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, LH/l;->l:LH/f;

    invoke-virtual {v2, v0, p0}, LH/f;->a(Lf/h;LH/l;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    invoke-virtual {p0}, LH/l;->w()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method protected abstract f()V
.end method

.method protected abstract g()V
.end method

.method public h()Lf/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected j()Law/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected k()V
    .locals 1

    const v0, 0x1869f

    iput v0, p0, LH/l;->j:I

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, LH/l;->h:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, LH/l;->i:I

    return v0
.end method

.method public n()I
    .locals 4

    iget-boolean v0, p0, LH/l;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LH/l;->w()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iget-wide v2, p0, LH/l;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xafc80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, LH/l;->k()V

    :cond_0
    iget-boolean v0, p0, LH/l;->c:Z

    if-eqz v0, :cond_1

    iget v0, p0, LH/l;->j:I

    :goto_0
    return v0

    :cond_1
    const v0, 0x1869f

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, LH/l;->c:Z

    return v0
.end method

.method public p()Z
    .locals 2

    invoke-virtual {p0}, LH/l;->n()I

    move-result v0

    const v1, 0x1869f

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized q()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LH/l;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LH/l;->d:Z

    iget-object v0, p0, LH/l;->e:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, LH/l;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, LH/l;->f()V

    invoke-direct {p0}, LH/l;->B()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit p0

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
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized r()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LH/l;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, LH/l;->d:Z

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "BaseLocationProvider"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
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

.method public run()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, LH/l;->g()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LH/l;->a(I)V

    goto :goto_0
.end method

.method public s()Lf/h;
    .locals 1

    iget-object v0, p0, LH/l;->g:Lf/h;

    return-object v0
.end method

.method public t()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, LH/l;->k:LG/Z;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LH/l;->g:Lf/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " azimuth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LH/l;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " speed (m/s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LH/l;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " accuracy (m): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LH/l;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastFix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, LH/l;->b:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, LH/l;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, LH/l;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LH/l;->k:LG/Z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, LH/l;->a:Z

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, LH/l;->c:Z

    return v0
.end method

.method protected w()Lac/p;
    .locals 1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    return-object v0
.end method

.method public x()LG/Z;
    .locals 1

    iget-object v0, p0, LH/l;->k:LG/Z;

    return-object v0
.end method

.method public y()LH/d;
    .locals 3

    new-instance v0, LH/d;

    invoke-virtual {p0}, LH/l;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LH/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LH/l;->s()Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, LH/d;->a(Lf/h;)V

    invoke-virtual {p0}, LH/l;->n()I

    move-result v1

    invoke-virtual {v0, v1}, LH/d;->a(I)V

    invoke-virtual {p0}, LH/l;->m()I

    move-result v1

    invoke-virtual {v0, v1}, LH/d;->b(I)V

    invoke-virtual {p0}, LH/l;->l()I

    move-result v1

    invoke-virtual {v0, v1}, LH/d;->c(I)V

    iget-wide v1, p0, LH/l;->b:J

    invoke-virtual {v0, v1, v2}, LH/d;->a(J)V

    iget-object v1, p0, LH/l;->k:LG/Z;

    invoke-virtual {v0, v1}, LH/d;->a(LG/Z;)V

    return-object v0
.end method
