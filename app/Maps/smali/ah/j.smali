.class public Lah/j;
.super Lah/B;


# instance fields
.field private final c:[LaT/f;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lah/B;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x190

    new-array v0, v0, [LaT/f;

    iput-object v0, p0, Lah/j;->c:[LaT/f;

    iput v1, p0, Lah/j;->d:I

    iput v1, p0, Lah/j;->e:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/List;
    .locals 6

    const/16 v5, 0x190

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lah/j;->e:I

    if-ge v0, v5, :cond_0

    iget v0, p0, Lah/j;->e:I

    new-array v0, v0, [LaT/f;

    iget-object v1, p0, Lah/j;->c:[LaT/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lah/j;->e:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_0
    const/16 v0, 0x190

    :try_start_1
    new-array v0, v0, [LaT/f;

    iget-object v1, p0, Lah/j;->c:[LaT/f;

    iget v2, p0, Lah/j;->d:I

    const/4 v3, 0x0

    iget v4, p0, Lah/j;->d:I

    sub-int v4, v5, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lah/j;->c:[LaT/f;

    const/4 v2, 0x0

    iget v3, p0, Lah/j;->d:I

    sub-int v3, v5, v3

    iget v4, p0, Lah/j;->d:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(LaT/f;)V
    .locals 4

    const/16 v2, 0x190

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Lah/j;->e:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lah/j;->d:I

    iget v1, p0, Lah/j;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lah/j;->d:I

    iget v1, p0, Lah/j;->d:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lah/j;->d:I

    :cond_1
    iget-object v1, p0, Lah/j;->c:[LaT/f;

    aget-object v1, v1, v0

    instance-of v1, v1, Lah/E;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lah/j;->c:[LaT/f;

    iget v2, p0, Lah/j;->d:I

    aget-object v1, v1, v2

    instance-of v1, v1, Lah/E;

    if-nez v1, :cond_2

    iget-object v1, p0, Lah/j;->c:[LaT/f;

    iget v2, p0, Lah/j;->d:I

    iget-object v3, p0, Lah/j;->c:[LaT/f;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    iget-object v1, p0, Lah/j;->c:[LaT/f;

    iget v2, p0, Lah/j;->d:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, LaT/f;->f()V

    :cond_2
    iget-object v1, p0, Lah/j;->c:[LaT/f;

    aput-object p1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    iget-object v0, p0, Lah/j;->c:[LaT/f;

    iget v1, p0, Lah/j;->e:I

    aput-object p1, v0, v1

    iget v0, p0, Lah/j;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lah/j;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
