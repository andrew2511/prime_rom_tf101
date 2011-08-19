.class public abstract Lcom/google/googlenav/prefetch/android/l;
.super Ljava/lang/Object;

# interfaces
.implements Lt/i;


# static fields
.field private static a:Lcom/google/googlenav/prefetch/android/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized c()Lcom/google/googlenav/prefetch/android/l;
    .locals 2

    const-class v0, Lcom/google/googlenav/prefetch/android/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/googlenav/prefetch/android/l;->a:Lcom/google/googlenav/prefetch/android/l;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/googlenav/prefetch/android/h;

    invoke-direct {v1}, Lcom/google/googlenav/prefetch/android/h;-><init>()V

    sput-object v1, Lcom/google/googlenav/prefetch/android/l;->a:Lcom/google/googlenav/prefetch/android/l;

    :cond_0
    sget-object v1, Lcom/google/googlenav/prefetch/android/l;->a:Lcom/google/googlenav/prefetch/android/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d()Lcom/google/googlenav/prefetch/android/l;
    .locals 2

    const-class v0, Lcom/google/googlenav/prefetch/android/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/googlenav/prefetch/android/l;->a:Lcom/google/googlenav/prefetch/android/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract a([Lf/K;)I
.end method

.method public abstract a(LG/w;)V
.end method

.method public abstract b()V
.end method
