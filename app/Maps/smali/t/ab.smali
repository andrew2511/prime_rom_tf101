.class public Lt/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lt/ay;


# static fields
.field protected static final b:LG/u;


# instance fields
.field protected final a:Lad/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt/z;

    invoke-direct {v0}, Lt/z;-><init>()V

    sput-object v0, Lt/ab;->b:LG/u;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lad/g;

    invoke-direct {v0, p1}, Lad/g;-><init>(I)V

    iput-object v0, p0, Lt/ab;->a:Lad/g;

    return-void
.end method


# virtual methods
.method public a(LG/w;)V
    .locals 1

    sget-object v0, Lt/ab;->b:LG/u;

    invoke-virtual {p0, p1, v0}, Lt/ab;->a(LG/w;LG/u;)V

    return-void
.end method

.method public a(LG/w;LG/u;)V
    .locals 3

    iget-object v0, p0, Lt/ab;->a:Lad/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/ab;->a:Lad/g;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lt/ab;->a:Lad/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/ab;->a:Lad/g;

    invoke-virtual {v1}, Lad/g;->a()V

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(LG/u;)Z
    .locals 1

    sget-object v0, Lt/ab;->b:LG/u;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(LG/w;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lt/ab;->c(LG/w;)LG/u;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(LG/w;)LG/u;
    .locals 3

    iget-object v1, p0, Lt/ab;->a:Lad/g;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lt/ab;->a:Lad/g;

    invoke-virtual {v0, p1}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/u;

    if-nez v0, :cond_0

    iget-object v2, p0, Lt/ab;->a:Lad/g;

    invoke-virtual {v2, p1}, Lad/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
