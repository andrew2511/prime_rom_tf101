.class final Lt/aA;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private b:I

.field private final c:Lt/g;

.field private d:I


# direct methods
.method constructor <init>(Lt/g;I[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lt/aA;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lt/aA;->b:I

    iput-object p1, p0, Lt/aA;->c:Lt/g;

    iput p2, p0, Lt/aA;->d:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lt/aA;->b:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lt/aA;->c:Lt/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/aA;->c:Lt/g;

    iget v2, p0, Lt/aA;->d:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lt/g;->a(J)V

    iget-object v1, p0, Lt/aA;->c:Lt/g;

    iget-object v2, p0, Lt/aA;->a:[B

    const/4 v3, 0x0

    iget v4, p0, Lt/aA;->b:I

    invoke-interface {v1, v2, v3, v4}, Lt/g;->b([BII)V

    iget-object v1, p0, Lt/aA;->c:Lt/g;

    invoke-interface {v1}, Lt/g;->b()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lt/aA;->d:I

    iget v1, p0, Lt/aA;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lt/aA;->d:I

    iput v5, p0, Lt/aA;->b:I

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method a([B)V
    .locals 4

    array-length v0, p1

    iget v1, p0, Lt/aA;->b:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lt/aA;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lt/aA;->a()V

    :cond_0
    array-length v0, p1

    iget-object v1, p0, Lt/aA;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lt/aA;->c:Lt/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/aA;->c:Lt/g;

    iget v2, p0, Lt/aA;->d:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lt/g;->a(J)V

    iget-object v1, p0, Lt/aA;->c:Lt/g;

    invoke-interface {v1, p1}, Lt/g;->a([B)V

    iget-object v1, p0, Lt/aA;->c:Lt/g;

    invoke-interface {v1}, Lt/g;->b()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lt/aA;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lt/aA;->d:I

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lt/aA;->a:[B

    iget v2, p0, Lt/aA;->b:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lt/aA;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lt/aA;->b:I

    goto :goto_0
.end method

.method b()V
    .locals 0

    invoke-virtual {p0}, Lt/aA;->a()V

    return-void
.end method
