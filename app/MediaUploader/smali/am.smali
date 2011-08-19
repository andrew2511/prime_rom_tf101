.class final Lam;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lal;


# direct methods
.method constructor <init>(Lal;)V
    .locals 0

    iput-object p1, p0, Lam;->a:Lal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lam;->a:Lal;

    iget-object v0, v0, Lal;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lam;->a:Lal;

    iget-wide v3, v3, Lal;->d:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    iget-object v1, p0, Lam;->a:Lal;

    iget-object v1, v1, Lal;->e:LX;

    iget-object v2, p0, Lam;->a:Lal;

    iget-wide v2, v2, Lal;->d:J

    invoke-virtual {v1, v2, v3}, LX;->b(J)V

    iget-object v1, p0, Lam;->a:Lal;

    iget-object v1, v1, Lal;->e:LX;

    invoke-virtual {v1}, LX;->e()V

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lam;->a:Lal;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lal;->d:J

    iget-object v1, p0, Lam;->a:Lal;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lal;->c:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lam;->a:Lal;

    invoke-static {v0}, Lal;->a(Lal;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
