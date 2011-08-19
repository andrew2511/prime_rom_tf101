.class public abstract Lw/x;
.super Ljava/lang/Object;


# static fields
.field private static a:Lw/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lw/x;->a:Lw/u;

    if-eqz v0, :cond_0

    sget-object v0, Lw/x;->a:Lw/u;

    invoke-interface {v0, p0, p1}, Lw/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lw/x;->a:Lw/u;

    if-eqz v0, :cond_0

    sget-object v0, Lw/x;->a:Lw/u;

    invoke-interface {v0, p0, p1, p2}, Lw/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Lw/u;)V
    .locals 2

    const-class v0, Lw/x;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lw/x;->a:Lw/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 1

    sget-object v0, Lw/x;->a:Lw/u;

    if-eqz v0, :cond_0

    sget-object v0, Lw/x;->a:Lw/u;

    invoke-interface {v0, p0, p1}, Lw/u;->a(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lw/x;->a:Lw/u;

    if-eqz v0, :cond_0

    sget-object v0, Lw/x;->a:Lw/u;

    invoke-interface {v0, p0, p1}, Lw/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lw/x;->a:Lw/u;

    if-eqz v0, :cond_0

    sget-object v0, Lw/x;->a:Lw/u;

    invoke-interface {v0, p0, p1}, Lw/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
