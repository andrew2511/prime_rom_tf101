.class public abstract Lcom/google/googlenav/Q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Lcom/google/googlenav/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/google/googlenav/Q;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/Q;-><init>(ZZLcom/google/googlenav/r;)V

    return-void
.end method

.method public constructor <init>(ZZLcom/google/googlenav/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/googlenav/Q;->a:Z

    iput-boolean p2, p0, Lcom/google/googlenav/Q;->b:Z

    iput-object p3, p0, Lcom/google/googlenav/Q;->c:Lcom/google/googlenav/r;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/Q;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/Q;->a:Z

    return v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected b()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/aw;->d()Z

    move-result v0

    return v0
.end method

.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/googlenav/Q;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/aw;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/Q;->c:Lcom/google/googlenav/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/Q;->c:Lcom/google/googlenav/r;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/googlenav/Q;->a()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/Q;->a()V

    goto :goto_0
.end method
