.class public abstract LT/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:[LT/b;


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/Object;

.field protected e:LT/c;

.field protected f:Ljava/lang/Runnable;

.field protected g:Ljava/util/Vector;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [LT/b;

    sput-object v0, LT/b;->a:[LT/b;

    return-void
.end method

.method public constructor <init>(LT/c;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, LT/b;-><init>(LT/c;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(LT/c;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LT/b;-><init>(LT/c;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(LT/c;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LT/b;->d:Ljava/lang/Object;

    iput-object p1, p0, LT/b;->e:LT/c;

    iput-object p2, p0, LT/b;->f:Ljava/lang/Runnable;

    iput-object p3, p0, LT/b;->h:Ljava/lang/String;

    iput-object v1, p0, LT/b;->i:Ljava/lang/String;

    iput-object v1, p0, LT/b;->j:Ljava/lang/String;

    iput-object v1, p0, LT/b;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, LT/b;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, LT/b;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, LT/b;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, LT/b;->c:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LT/b;->e:LT/c;

    invoke-virtual {v0, p0}, LT/c;->a(LT/b;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected b(I)V
    .locals 0

    iput p1, p0, LT/b;->b:I

    return-void
.end method

.method abstract c()V
.end method

.method abstract d()I
.end method

.method g()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, LT/b;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, LT/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget v1, p0, LT/b;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LT/b;->c:I

    iget-object v1, p0, LT/b;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, LT/b;->i()[LT/b;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, LT/b;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runtime exception ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] thrown by runnable ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LT/b;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lag/e;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    return-void
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, LT/b;->e:LT/c;

    invoke-virtual {v0, p0}, LT/c;->b(LT/b;)I

    move-result v0

    return v0
.end method

.method protected i()[LT/b;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LT/b;->g:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, LT/b;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [LT/b;

    iget-object v1, p0, LT/b;->g:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    sget-object v0, LT/b;->a:[LT/b;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected j()I
    .locals 1

    iget v0, p0, LT/b;->b:I

    return v0
.end method

.method k()V
    .locals 1

    iget-object v0, p0, LT/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method l()V
    .locals 1

    iget-object v0, p0, LT/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method m()V
    .locals 1

    iget-object v0, p0, LT/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method n()V
    .locals 1

    iget-object v0, p0, LT/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
