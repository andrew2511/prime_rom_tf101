.class public abstract Ln/q;
.super Ljava/lang/Object;

# interfaces
.implements Ln/m;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private final d:Ljava/lang/String;

.field protected final l:Ln/a;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ln/q;->a:Z

    iput-boolean v0, p0, Ln/q;->b:Z

    iput-boolean v0, p0, Ln/q;->c:Z

    iput-object p1, p0, Ln/q;->d:Ljava/lang/String;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    iput-object v0, p0, Ln/q;->l:Ln/a;

    return-void
.end method

.method private b(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln/q;->c:Z

    iput-boolean p1, p0, Ln/q;->b:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Z)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ln/q;->a:Z

    invoke-virtual {p0}, Ln/q;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ln/q;->b:Z

    iget-object v0, p0, Ln/q;->l:Ln/a;

    iget-object v1, p0, Ln/q;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {p0}, Ln/q;->l()B

    move-result v4

    aput-byte v4, v2, v3

    invoke-interface {v0, v1, v2}, Ln/a;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v5

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Ln/q;->a:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Ln/q;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ln/q;->k()V

    :cond_0
    iget-boolean v0, p0, Ln/q;->b:Z

    return v0
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method protected k()V
    .locals 2

    iget-object v0, p0, Ln/q;->l:Ln/a;

    iget-object v1, p0, Ln/q;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ln/a;->b_(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Ln/q;->b(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected l()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
