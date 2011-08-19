.class public Lt/F;
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

    new-instance v0, Lt/aw;

    invoke-direct {v0}, Lt/aw;-><init>()V

    sput-object v0, Lt/F;->b:LG/u;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lad/g;

    invoke-direct {v0, p1}, Lad/g;-><init>(I)V

    iput-object v0, p0, Lt/F;->a:Lad/g;

    return-void
.end method


# virtual methods
.method public a(LG/w;)V
    .locals 1

    sget-object v0, Lt/F;->b:LG/u;

    invoke-virtual {p0, p1, v0}, Lt/F;->a(LG/w;LG/u;)V

    return-void
.end method

.method public a(LG/w;LG/u;)V
    .locals 2

    iget-object v0, p0, Lt/F;->a:Lad/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/F;->a:Lad/g;

    invoke-virtual {v1, p1, p2}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

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

    iget-object v0, p0, Lt/F;->a:Lad/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/F;->a:Lad/g;

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

    sget-object v0, Lt/F;->b:LG/u;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(LG/w;)Z
    .locals 2

    iget-object v0, p0, Lt/F;->a:Lad/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/F;->a:Lad/g;

    invoke-virtual {v1, p1}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(LG/w;)LG/u;
    .locals 2

    iget-object v0, p0, Lt/F;->a:Lad/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/F;->a:Lad/g;

    invoke-virtual {v1, p1}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/u;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
