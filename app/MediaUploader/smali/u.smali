.class public abstract Lu;
.super Ljava/lang/Object;

# interfaces
.implements Lx;


# instance fields
.field private a:Z

.field private b:Z

.field private c:LE;

.field private final d:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lu;->a:Z

    iput-boolean v0, p0, Lu;->b:Z

    iput-object p1, p0, Lu;->d:Ljava/lang/String;

    invoke-static {}, Lb;->a()Lb;

    move-result-object v0

    invoke-virtual {v0}, Lb;->g()LE;

    move-result-object v0

    iput-object v0, p0, Lu;->c:LE;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Z)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lu;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lu;->c:LE;

    iget-object v1, p0, Lu;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, LE;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v5

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lu;->b:Z

    iput-boolean v0, p0, Lu;->a:Z

    :cond_0
    iget-boolean v0, p0, Lu;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu;->a:Z

    iget-object v0, p0, Lu;->c:LE;

    iget-object v1, p0, Lu;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    invoke-interface {v0, v1, v2}, LE;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v5

    :cond_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
