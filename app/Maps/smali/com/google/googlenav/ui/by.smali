.class public abstract Lcom/google/googlenav/ui/by;
.super Ljava/lang/Object;

# interfaces
.implements Lo/cf;


# instance fields
.field private final a:Ljava/lang/String;

.field private volatile b:I

.field final synthetic c:Lcom/google/googlenav/ui/bW;

.field private volatile d:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/bW;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x2

    iput-object p1, p0, Lcom/google/googlenav/ui/by;->c:Lcom/google/googlenav/ui/bW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/googlenav/ui/by;->b:I

    iput v0, p0, Lcom/google/googlenav/ui/by;->d:I

    iput-object p2, p0, Lcom/google/googlenav/ui/by;->a:Ljava/lang/String;

    return-void
.end method

.method private e()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    move v1, v3

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/by;->c:Lcom/google/googlenav/ui/bW;

    invoke-static {v0}, Lcom/google/googlenav/ui/bW;->g(Lcom/google/googlenav/ui/bW;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/by;->c:Lcom/google/googlenav/ui/bW;

    invoke-static {v0}, Lcom/google/googlenav/ui/bW;->g(Lcom/google/googlenav/ui/bW;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/by;

    iget v2, v0, Lcom/google/googlenav/ui/by;->b:I

    if-eq v2, v4, :cond_0

    iget v0, v0, Lcom/google/googlenav/ui/by;->d:I

    if-ne v0, v4, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    move v2, v3

    :goto_2
    iget-object v0, p0, Lcom/google/googlenav/ui/by;->c:Lcom/google/googlenav/ui/bW;

    invoke-static {v0}, Lcom/google/googlenav/ui/bW;->g(Lcom/google/googlenav/ui/bW;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/ui/by;->c:Lcom/google/googlenav/ui/bW;

    invoke-static {v0}, Lcom/google/googlenav/ui/bW;->g(Lcom/google/googlenav/ui/bW;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/by;

    iget v3, v0, Lcom/google/googlenav/ui/by;->b:I

    iget v4, v0, Lcom/google/googlenav/ui/by;->d:I

    if-eq v3, v4, :cond_6

    iget v3, v0, Lcom/google/googlenav/ui/by;->b:I

    if-ne v3, v5, :cond_3

    invoke-virtual {v0}, Lcom/google/googlenav/ui/by;->d()V

    move v0, v2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    move v0, v5

    goto :goto_3

    :cond_4
    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/ui/by;->c:Lcom/google/googlenav/ui/bW;

    invoke-static {v0}, Lcom/google/googlenav/ui/bW;->a(Lcom/google/googlenav/ui/bW;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/ui/by;->c:Lcom/google/googlenav/ui/bW;

    iget-object v1, p0, Lcom/google/googlenav/ui/by;->c:Lcom/google/googlenav/ui/bW;

    invoke-static {v1}, Lcom/google/googlenav/ui/bW;->a(Lcom/google/googlenav/ui/bW;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bW;->a(Lcom/google/googlenav/ui/bW;Z)V

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_3
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/by;->c:Lcom/google/googlenav/ui/bW;

    invoke-static {v0}, Lcom/google/googlenav/ui/bW;->g(Lcom/google/googlenav/ui/bW;)Ljava/util/Vector;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/googlenav/ui/by;->d:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/by;->a()I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/by;->b:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/by;->e()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .locals 2

    iget v0, p0, Lcom/google/googlenav/ui/by;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/by;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public c()V
    .locals 2

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/googlenav/ui/by;->b:I

    iput v0, p0, Lcom/google/googlenav/ui/by;->d:I

    iget-object v0, p0, Lcom/google/googlenav/ui/by;->a:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v0, v1, p0}, Lo/as;->a(Ljava/lang/String;ILo/cf;)V

    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/by;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/by;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/as;->a(Ljava/lang/String;ILo/Z;)V

    return-void
.end method
