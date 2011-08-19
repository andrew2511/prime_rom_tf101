.class Lf/F;
.super Lf/X;


# instance fields
.field final synthetic a:Lf/J;

.field private c:Ljava/util/Vector;

.field private d:Ljava/util/Vector;

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Lf/J;B)V
    .locals 1

    iput-object p1, p0, Lf/F;->a:Lf/J;

    invoke-static {p1}, Lf/J;->b(Lf/J;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lf/X;-><init>(IB)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lf/F;->c:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lf/F;->d:Ljava/util/Vector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/F;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/F;->e:Z

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lf/F;->c:Ljava/util/Vector;

    invoke-static {v1, p1, v0}, LA/r;->a(Ljava/util/Vector;ILjava/util/Vector;)V

    iput-object v0, p0, Lf/F;->c:Ljava/util/Vector;

    iget-object v0, p0, Lf/F;->a:Lf/J;

    invoke-virtual {v0}, Lf/J;->b()V

    return-void
.end method

.method protected a(II)V
    .locals 1

    iget-object v0, p0, Lf/F;->a:Lf/J;

    invoke-virtual {v0, p1, p2}, Lf/J;->a(II)V

    return-void
.end method

.method declared-synchronized a(Lf/P;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lf/F;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Adding tiles to closed request!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lf/F;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lf/F;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v1, v0

    :goto_1
    if-lez v1, :cond_3

    iget-object v0, p0, Lf/F;->d:Ljava/util/Vector;

    const/4 v2, 0x1

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p2, v0, :cond_4

    iget-object v0, p0, Lf/F;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v0, p0, Lf/F;->d:Ljava/util/Vector;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :cond_3
    if-nez v1, :cond_1

    iget-object v0, p0, Lf/F;->c:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v0, p0, Lf/F;->d:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 3

    iget-object v0, p0, Lf/F;->a:Lf/J;

    invoke-static {v0}, Lf/J;->c(Lf/J;)I

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lf/F;->e:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lf/F;->d:Ljava/util/Vector;

    iget-object v0, p0, Lf/F;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Lf/K;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lf/F;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lf/F;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/P;

    invoke-virtual {v0}, Lf/P;->c()Lf/K;

    move-result-object v0

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    invoke-virtual {p0, v1, p1}, Lf/F;->a([Lf/K;Ljava/io/DataOutput;)V

    return-void
.end method

.method protected a(ILf/K;[B)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lf/F;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/P;

    if-nez v0, :cond_1

    :cond_0
    move v0, v5

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lf/P;->c()Lf/K;

    move-result-object v1

    invoke-virtual {v1, p2}, Lf/K;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p3}, Lf/P;->a([B)V

    invoke-virtual {v0}, Lf/P;->g()J

    move-result-wide v1

    int-to-long v3, p1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lf/P;->a(J)V

    move v1, v5

    :goto_1
    iget-object v0, p0, Lf/F;->a:Lf/J;

    invoke-static {v0}, Lf/J;->e(Lf/J;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lf/F;->a:Lf/J;

    invoke-static {v0}, Lf/J;->e(Lf/J;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/g;

    invoke-interface {v0}, Lax/g;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 1

    iget-object v0, p0, Lf/F;->a:Lf/J;

    invoke-static {v0}, Lf/J;->d(Lf/J;)I

    invoke-super {p0, p1}, Lf/X;->a(Ljava/io/DataInput;)Z

    iget-object v0, p0, Lf/F;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f_()Z
    .locals 1

    iget-boolean v0, p0, Lf/F;->f:Z

    return v0
.end method
