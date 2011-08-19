.class public Lak/a;
.super Lak/m;


# instance fields
.field private final a:I

.field private final b:[B

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private f:Z

.field private g:Z

.field private final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I[BZZZLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput p1, p0, Lak/a;->a:I

    iput-object p2, p0, Lak/a;->b:[B

    iput-boolean p3, p0, Lak/a;->c:Z

    iput-boolean p4, p0, Lak/a;->d:Z

    iput-boolean p5, p0, Lak/a;->e:Z

    iput-object p6, p0, Lak/a;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lak/a;->a:I

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 2

    iget-object v0, p0, Lak/a;->b:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lak/a;->f:Z

    iget-object v0, p0, Lak/a;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lak/a;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lak/a;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lak/a;->g:Z

    iget-object v0, p0, Lak/a;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lak/a;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lak/a;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    :cond_0
    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e_()Z
    .locals 1

    iget-boolean v0, p0, Lak/a;->c:Z

    return v0
.end method

.method public f_()Z
    .locals 1

    iget-boolean v0, p0, Lak/a;->d:Z

    return v0
.end method
