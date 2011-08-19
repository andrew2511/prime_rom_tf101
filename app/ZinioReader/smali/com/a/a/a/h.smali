.class final Lcom/a/a/a/h;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# instance fields
.field volatile a:I

.field b:I

.field volatile c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field final d:Lcom/a/a/a/ba;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final e:Lcom/a/a/a/ak;

.field final synthetic f:Lcom/a/a/a/aq;

.field private g:I

.field private h:I

.field private i:Ljava/util/Queue;

.field private j:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/a/a/a/aq;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1669
    iput-object p1, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1622
    new-instance v0, Lcom/a/a/a/bd;

    invoke-direct {v0, p0}, Lcom/a/a/a/bd;-><init>(Lcom/a/a/a/h;)V

    iput-object v0, p0, Lcom/a/a/a/h;->d:Lcom/a/a/a/ba;

    .line 1644
    new-instance v0, Lcom/a/a/a/bc;

    invoke-direct {v0, p0}, Lcom/a/a/a/bc;-><init>(Lcom/a/a/a/h;)V

    iput-object v0, p0, Lcom/a/a/a/h;->e:Lcom/a/a/a/ak;

    .line 1670
    invoke-static {p2}, Lcom/a/a/a/h;->b(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/a/a/a/h;->g:I

    iget v1, p0, Lcom/a/a/a/h;->g:I

    iget v2, p0, Lcom/a/a/a/h;->h:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/a/a/a/h;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/a/h;->g:I

    :cond_0
    iput-object v0, p0, Lcom/a/a/a/h;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1671
    iput p3, p0, Lcom/a/a/a/h;->h:I

    .line 1673
    iget-boolean v0, p1, Lcom/a/a/a/aq;->f:Z

    if-eqz v0, :cond_1

    .line 1674
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/h;->i:Ljava/util/Queue;

    .line 1675
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/h;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1680
    :goto_0
    return-void

    .line 1677
    :cond_1
    iput-object v3, p0, Lcom/a/a/a/h;->i:Ljava/util/Queue;

    .line 1678
    iput-object v3, p0, Lcom/a/a/a/h;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_0
.end method

.method private a(Lcom/a/a/a/bj;Lcom/a/a/a/bj;)Lcom/a/a/a/bj;
    .locals 4
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2326
    iget-object v1, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-boolean v1, v1, Lcom/a/a/a/aq;->e:Z

    if-eqz v1, :cond_0

    .line 2327
    move-object v0, p2

    check-cast v0, Lcom/a/a/a/ak;

    move-object v1, v0

    invoke-static {v1}, Lcom/a/a/a/h;->a(Lcom/a/a/a/ak;)V

    .line 2329
    :cond_0
    iget-object v1, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-boolean v1, v1, Lcom/a/a/a/aq;->f:Z

    if-eqz v1, :cond_1

    .line 2330
    move-object v0, p2

    check-cast v0, Lcom/a/a/a/ba;

    move-object v1, v0

    invoke-interface {v1}, Lcom/a/a/a/ba;->d_()Lcom/a/a/a/ba;

    move-result-object v2

    invoke-interface {v1}, Lcom/a/a/a/ba;->a()Lcom/a/a/a/ba;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a/a/aq;->a(Lcom/a/a/a/ba;Lcom/a/a/a/ba;)V

    invoke-static {v1}, Lcom/a/a/a/aq;->a(Lcom/a/a/a/ba;)V

    .line 2333
    :cond_1
    invoke-interface {p2}, Lcom/a/a/a/bj;->i()Lcom/a/a/a/bj;

    move-result-object v1

    move-object v2, p1

    .line 2334
    :goto_0
    if-eq v2, p2, :cond_3

    .line 2335
    invoke-interface {v2}, Lcom/a/a/a/bj;->d()Ljava/lang/Object;

    move-result-object v3

    .line 2336
    if-eqz v3, :cond_2

    .line 2337
    iget-object v3, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v3, v2, v1}, Lcom/a/a/a/aq;->a(Lcom/a/a/a/bj;Lcom/a/a/a/bj;)Lcom/a/a/a/bj;

    move-result-object v1

    .line 2334
    :cond_2
    invoke-interface {v2}, Lcom/a/a/a/bj;->i()Lcom/a/a/a/bj;

    move-result-object v2

    goto :goto_0

    .line 2340
    :cond_3
    return-object v1
.end method

.method private a()V
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1730
    iget-object v1, p0, Lcom/a/a/a/h;->e:Lcom/a/a/a/ak;

    invoke-interface {v1}, Lcom/a/a/a/ak;->b()Lcom/a/a/a/ak;

    move-result-object v1

    .line 1731
    iget-object v2, p0, Lcom/a/a/a/h;->e:Lcom/a/a/a/ak;

    if-ne v1, v2, :cond_1

    .line 1748
    :cond_0
    return-void

    .line 1736
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    move-object v2, v1

    .line 1737
    :goto_0
    iget-object v1, p0, Lcom/a/a/a/h;->e:Lcom/a/a/a/ak;

    if-eq v2, v1, :cond_0

    iget-object v1, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v1, v2, v3, v4}, Lcom/a/a/a/aq;->a(Lcom/a/a/a/ak;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1739
    move-object v0, v2

    check-cast v0, Lcom/a/a/a/bj;

    move-object v1, v0

    .line 1740
    invoke-interface {v1}, Lcom/a/a/a/bj;->h()I

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/a/a/a/h;->b(Lcom/a/a/a/bj;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1742
    iget-object v5, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-object v5, v5, Lcom/a/a/a/aq;->g:Ljava/util/Queue;

    invoke-interface {v5, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1745
    :cond_2
    invoke-static {v2}, Lcom/a/a/a/h;->a(Lcom/a/a/a/ak;)V

    .line 1746
    iget-object v1, p0, Lcom/a/a/a/h;->e:Lcom/a/a/a/ak;

    invoke-interface {v1}, Lcom/a/a/a/ak;->b()Lcom/a/a/a/ak;

    move-result-object v1

    move-object v2, v1

    .line 1747
    goto :goto_0
.end method

.method private static a(Lcom/a/a/a/ak;)V
    .locals 2
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1720
    invoke-interface {p0}, Lcom/a/a/a/ak;->c()Lcom/a/a/a/ak;

    move-result-object v0

    invoke-interface {p0}, Lcom/a/a/a/ak;->b()Lcom/a/a/a/ak;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/a/aq;->a(Lcom/a/a/a/ak;Lcom/a/a/a/ak;)V

    .line 1722
    invoke-static {p0}, Lcom/a/a/a/aq;->a(Lcom/a/a/a/ak;)V

    .line 1723
    return-void
.end method

.method private a(Lcom/a/a/a/ba;)V
    .locals 0
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1789
    invoke-direct {p0}, Lcom/a/a/a/h;->b()V

    .line 1790
    invoke-direct {p0, p1}, Lcom/a/a/a/h;->b(Lcom/a/a/a/ba;)V

    .line 1791
    return-void
.end method

.method private a(Lcom/a/a/a/bj;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1692
    iget-object v1, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-boolean v1, v1, Lcom/a/a/a/aq;->e:Z

    if-eqz v1, :cond_0

    .line 1693
    move-object v0, p1

    check-cast v0, Lcom/a/a/a/ak;

    move-object v1, v0

    .line 1694
    invoke-interface {v1}, Lcom/a/a/a/ak;->c()Lcom/a/a/a/ak;

    move-result-object v2

    invoke-interface {v1}, Lcom/a/a/a/ak;->b()Lcom/a/a/a/ak;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a/a/aq;->a(Lcom/a/a/a/ak;Lcom/a/a/a/ak;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/a/a/a/ak;->a(J)V

    iget-object v2, p0, Lcom/a/a/a/h;->e:Lcom/a/a/a/ak;

    invoke-interface {v2}, Lcom/a/a/a/ak;->c()Lcom/a/a/a/ak;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/a/a/a/aq;->a(Lcom/a/a/a/ak;Lcom/a/a/a/ak;)V

    iget-object v2, p0, Lcom/a/a/a/h;->e:Lcom/a/a/a/ak;

    invoke-static {v1, v2}, Lcom/a/a/a/aq;->a(Lcom/a/a/a/ak;Lcom/a/a/a/ak;)V

    .line 1696
    :cond_0
    iget-object v1, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-boolean v1, v1, Lcom/a/a/a/aq;->f:Z

    if-eqz v1, :cond_1

    .line 1697
    move-object v0, p1

    check-cast v0, Lcom/a/a/a/ba;

    move-object v1, v0

    .line 1698
    invoke-direct {p0, v1}, Lcom/a/a/a/h;->a(Lcom/a/a/a/ba;)V

    .line 1700
    :cond_1
    iget-object v1, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-object v1, v1, Lcom/a/a/a/aq;->d:Lcom/a/a/a/ap;

    invoke-virtual {v1, p1, p2}, Lcom/a/a/a/ap;->a(Lcom/a/a/a/bj;Ljava/lang/Object;)Lcom/a/a/a/aw;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/a/a/a/aq;->a(Lcom/a/a/a/bj;Lcom/a/a/a/aw;)V

    .line 1701
    return-void
.end method

.method private static b(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .parameter

    .prologue
    .line 1683
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method private b()V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1812
    move v1, v4

    .line 1814
    :goto_0
    iget-object v0, p0, Lcom/a/a/a/h;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/ba;

    if-eqz v0, :cond_2

    .line 1821
    invoke-interface {v0}, Lcom/a/a/a/ba;->a()Lcom/a/a/a/ba;

    move-result-object v2

    sget-object v3, Lcom/a/a/a/d;->a:Lcom/a/a/a/d;

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_0

    .line 1822
    invoke-direct {p0, v0}, Lcom/a/a/a/h;->b(Lcom/a/a/a/ba;)V

    .line 1824
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v4

    .line 1821
    goto :goto_1

    .line 1826
    :cond_2
    iget-object v0, p0, Lcom/a/a/a/h;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 1827
    return-void
.end method

.method private b(Lcom/a/a/a/ba;)V
    .locals 2
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1832
    invoke-interface {p1}, Lcom/a/a/a/ba;->a()Lcom/a/a/a/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/h;->d:Lcom/a/a/a/ba;

    if-eq v0, v1, :cond_0

    .line 1834
    invoke-interface {p1}, Lcom/a/a/a/ba;->d_()Lcom/a/a/a/ba;

    move-result-object v0

    invoke-interface {p1}, Lcom/a/a/a/ba;->a()Lcom/a/a/a/ba;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/a/aq;->a(Lcom/a/a/a/ba;Lcom/a/a/a/ba;)V

    .line 1838
    iget-object v0, p0, Lcom/a/a/a/h;->d:Lcom/a/a/a/ba;

    invoke-interface {v0}, Lcom/a/a/a/ba;->d_()Lcom/a/a/a/ba;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/a/a/a/aq;->a(Lcom/a/a/a/ba;Lcom/a/a/a/ba;)V

    .line 1839
    iget-object v0, p0, Lcom/a/a/a/h;->d:Lcom/a/a/a/ba;

    invoke-static {p1, v0}, Lcom/a/a/a/aq;->a(Lcom/a/a/a/ba;Lcom/a/a/a/ba;)V

    .line 1841
    :cond_0
    return-void
.end method


# virtual methods
.method final a(I)Lcom/a/a/a/bj;
    .locals 3
    .parameter

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/a/a/a/h;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1888
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/a/a/a/bj;

    return-object p0
.end method

.method public final a(Ljava/lang/Object;I)Lcom/a/a/a/bj;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1894
    iget v1, p0, Lcom/a/a/a/h;->a:I

    if-eqz v1, :cond_3

    .line 1895
    invoke-virtual {p0, p2}, Lcom/a/a/a/h;->a(I)Lcom/a/a/a/bj;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 1897
    invoke-interface {v2}, Lcom/a/a/a/bj;->h()I

    move-result v1

    if-ne v1, p2, :cond_2

    .line 1898
    invoke-interface {v2}, Lcom/a/a/a/bj;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1902
    if-eqz v1, :cond_2

    .line 1903
    iget-object v3, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-object v3, v3, Lcom/a/a/a/aq;->b:Lcom/a/a/b/g;

    invoke-interface {v3, v1, p1}, Lcom/a/a/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1907
    iget-object v1, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-boolean v1, v1, Lcom/a/a/a/aq;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v1, v2}, Lcom/a/a/a/aq;->c(Lcom/a/a/a/bj;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1908
    :cond_0
    iget-object v1, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-boolean v1, v1, Lcom/a/a/a/aq;->f:Z

    if-eqz v1, :cond_1

    .line 1911
    move-object v0, v2

    check-cast v0, Lcom/a/a/a/ba;

    move-object v1, v0

    iget-object v3, p0, Lcom/a/a/a/h;->i:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/a/a/a/h;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/16 v3, 0x40

    if-le v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a/h;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/a/a/a/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    :cond_1
    move-object v1, v2

    .line 1918
    :goto_1
    return-object v1

    .line 1911
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    throw v1

    .line 1896
    :cond_2
    invoke-interface {v2}, Lcom/a/a/a/bj;->i()Lcom/a/a/a/bj;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 1918
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2015
    invoke-static {p3}, Lcom/a/a/b/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2016
    invoke-virtual {p0}, Lcom/a/a/a/h;->lock()V

    .line 2018
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-boolean v0, v0, Lcom/a/a/a/aq;->e:Z

    if-eqz v0, :cond_0

    .line 2019
    invoke-direct {p0}, Lcom/a/a/a/h;->a()V

    .line 2022
    :cond_0
    invoke-virtual {p0, p2}, Lcom/a/a/a/h;->a(I)Lcom/a/a/a/bj;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 2024
    invoke-interface {v0}, Lcom/a/a/a/bj;->d()Ljava/lang/Object;

    move-result-object v1

    .line 2025
    invoke-interface {v0}, Lcom/a/a/a/bj;->h()I

    move-result v2

    if-ne v2, p2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-object v2, v2, Lcom/a/a/a/aq;->b:Lcom/a/a/b/g;

    invoke-interface {v2, p1, v1}, Lcom/a/a/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2029
    invoke-interface {v0}, Lcom/a/a/a/bj;->f()Lcom/a/a/a/aw;

    move-result-object v1

    invoke-interface {v1}, Lcom/a/a/a/aw;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2030
    if-nez v1, :cond_1

    .line 2031
    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    .line 2042
    iget-object v0, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v0}, Lcom/a/a/a/aq;->a()V

    move-object v0, v3

    :goto_1
    return-object v0

    .line 2034
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, p3}, Lcom/a/a/a/h;->a(Lcom/a/a/a/bj;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2041
    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    .line 2042
    iget-object v0, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v0}, Lcom/a/a/a/aq;->a()V

    move-object v0, v1

    goto :goto_1

    .line 2023
    :cond_2
    :try_start_2
    invoke-interface {v0}, Lcom/a/a/a/bj;->i()Lcom/a/a/a/bj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2039
    :cond_3
    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    .line 2042
    iget-object v0, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v0}, Lcom/a/a/a/aq;->a()V

    move-object v0, v3

    goto :goto_1

    .line 2041
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    .line 2042
    iget-object v1, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v1}, Lcom/a/a/a/aq;->a()V

    throw v0
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2047
    invoke-static/range {p3 .. p3}, Lcom/a/a/b/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    invoke-virtual/range {p0 .. p0}, Lcom/a/a/a/h;->lock()V

    .line 2050
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/a/a/a/aq;->e:Z

    if-eqz v5, :cond_0

    .line 2051
    invoke-direct/range {p0 .. p0}, Lcom/a/a/a/h;->a()V

    .line 2054
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/a/a/a/h;->a:I

    move v5, v0

    add-int/lit8 v7, v5, 0x1

    .line 2055
    move-object/from16 v0, p0

    iget v0, v0, Lcom/a/a/a/h;->g:I

    move v5, v0

    if-le v7, v5, :cond_7

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/h;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    const/high16 v5, 0x4000

    if-ge v8, v5, :cond_7

    shl-int/lit8 v5, v8, 0x1

    invoke-static {v5}, Lcom/a/a/a/h;->b(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/a/a/a/h;->g:I

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v5

    const/4 v10, 0x1

    sub-int v10, v5, v10

    const/4 v5, 0x0

    move v11, v5

    :goto_0
    if-ge v11, v8, :cond_6

    invoke-virtual {v6, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/a/a/a/bj;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcom/a/a/a/bj;->i()Lcom/a/a/a/bj;

    move-result-object v12

    invoke-interface {v5}, Lcom/a/a/a/bj;->h()I

    move-result v13

    and-int/2addr v13, v10

    if-nez v12, :cond_2

    invoke-virtual {v9, v13, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    goto :goto_0

    :cond_2
    move-object v14, v12

    move-object v12, v5

    :goto_1
    if-eqz v14, :cond_4

    invoke-interface {v14}, Lcom/a/a/a/bj;->h()I

    move-result v15

    and-int/2addr v15, v10

    if-eq v15, v13, :cond_3

    move-object v12, v14

    move v13, v15

    :cond_3
    invoke-interface {v14}, Lcom/a/a/a/bj;->i()Lcom/a/a/a/bj;

    move-result-object v14

    goto :goto_1

    :cond_4
    invoke-virtual {v9, v13, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v13, v5

    :goto_2
    if-eq v13, v12, :cond_1

    invoke-interface {v13}, Lcom/a/a/a/bj;->d()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v13}, Lcom/a/a/a/bj;->h()I

    move-result v5

    and-int v14, v5, v10

    invoke-virtual {v9, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/a/a/a/bj;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    move-object v15, v0

    invoke-virtual {v15, v13, v5}, Lcom/a/a/a/aq;->a(Lcom/a/a/a/bj;Lcom/a/a/a/bj;)Lcom/a/a/a/bj;

    move-result-object v5

    invoke-virtual {v9, v14, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_5
    invoke-interface {v13}, Lcom/a/a/a/bj;->i()Lcom/a/a/a/bj;

    move-result-object v5

    move-object v13, v5

    goto :goto_2

    :cond_6
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/a/a/a/h;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2060
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/h;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object v8, v0

    .line 2061
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    and-int v9, p2, v5

    .line 2062
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/a/a/a/bj;

    move-object v6, v5

    .line 2065
    :goto_3
    if-eqz v6, :cond_c

    .line 2066
    invoke-interface {v6}, Lcom/a/a/a/bj;->d()Ljava/lang/Object;

    move-result-object v10

    .line 2067
    invoke-interface {v6}, Lcom/a/a/a/bj;->h()I

    move-result v11

    move v0, v11

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    if-eqz v10, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    move-object v11, v0

    iget-object v11, v11, Lcom/a/a/a/aq;->b:Lcom/a/a/b/g;

    move-object v0, v11

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-interface {v0, v1, v2}, Lcom/a/a/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2073
    invoke-interface {v6}, Lcom/a/a/a/bj;->f()Lcom/a/a/a/aw;

    move-result-object v5

    invoke-interface {v5}, Lcom/a/a/a/aw;->get()Ljava/lang/Object;

    move-result-object v5

    .line 2074
    if-nez v5, :cond_9

    const/4 v7, 0x1

    .line 2075
    :goto_4
    if-eqz p4, :cond_a

    if-nez v7, :cond_a

    .line 2076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    move-object v7, v0

    iget-boolean v7, v7, Lcom/a/a/a/aq;->f:Z

    if-eqz v7, :cond_8

    .line 2077
    move-object v0, v6

    check-cast v0, Lcom/a/a/a/ba;

    move-object/from16 p1, v0

    invoke-direct/range {p0 .. p1}, Lcom/a/a/a/h;->a(Lcom/a/a/a/ba;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2102
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/a/a/a/h;->unlock()V

    .line 2103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/a/a/a/aq;->a()V

    :goto_5
    return-object v5

    .line 2074
    :cond_9
    const/4 v7, 0x0

    goto :goto_4

    .line 2082
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/h;->a(Lcom/a/a/a/bj;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2102
    invoke-virtual/range {p0 .. p0}, Lcom/a/a/a/h;->unlock()V

    .line 2103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/a/a/a/aq;->a()V

    goto :goto_5

    .line 2065
    :cond_b
    :try_start_2
    invoke-interface {v6}, Lcom/a/a/a/bj;->i()Lcom/a/a/a/bj;

    move-result-object v6

    goto :goto_3

    .line 2087
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/a/a/a/aq;->f:Z

    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/a/a/a/h;->h:I

    move v6, v0

    if-le v7, v6, :cond_f

    .line 2088
    invoke-direct/range {p0 .. p0}, Lcom/a/a/a/h;->b()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/h;->d:Lcom/a/a/a/ba;

    move-object v5, v0

    invoke-interface {v5}, Lcom/a/a/a/ba;->a()Lcom/a/a/a/ba;

    move-result-object p4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/h;->d:Lcom/a/a/a/ba;

    move-object v5, v0

    move-object/from16 v0, p4

    move-object v1, v5

    if-eq v0, v1, :cond_d

    const/4 v5, 0x1

    :goto_6
    invoke-static {v5}, Lcom/a/a/b/l;->a(Z)V

    check-cast p4, Lcom/a/a/a/bj;

    invoke-interface/range {p4 .. p4}, Lcom/a/a/a/bj;->h()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->b(Lcom/a/a/a/bj;I)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    move-object v5, v0

    iget-object v5, v5, Lcom/a/a/a/aq;->g:Ljava/util/Queue;

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2089
    move-object/from16 v0, p0

    iget v0, v0, Lcom/a/a/a/h;->a:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    .line 2090
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/a/a/a/bj;

    move v6, v5

    move-object/from16 v5, p4

    .line 2094
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/a/a/a/h;->b:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/a/a/a/h;->b:I

    .line 2095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    move-object v7, v0

    iget-object v7, v7, Lcom/a/a/a/aq;->h:Lcom/a/a/a/av;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    move-object v10, v0

    move-object v0, v7

    move-object v1, v10

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/a/a/a/av;->a(Lcom/a/a/a/aq;Ljava/lang/Object;ILcom/a/a/a/bj;)Lcom/a/a/a/bj;

    move-result-object v5

    .line 2097
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/h;->a(Lcom/a/a/a/bj;Ljava/lang/Object;)V

    .line 2098
    invoke-virtual {v8, v9, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2099
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/a/a/a/h;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2100
    invoke-virtual/range {p0 .. p0}, Lcom/a/a/a/h;->unlock()V

    .line 2103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/a/a/a/aq;->a()V

    const/4 v5, 0x0

    goto/16 :goto_5

    .line 2088
    :cond_d
    const/4 v5, 0x0

    goto :goto_6

    :cond_e
    :try_start_3
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2102
    :catchall_0
    move-exception v5

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/a/h;->unlock()V

    .line 2103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/a/a/a/aq;->a()V

    throw v5

    :cond_f
    move v6, v7

    goto :goto_7
.end method

.method final a(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2180
    invoke-virtual {p0}, Lcom/a/a/a/h;->lock()V

    .line 2182
    if-eqz p3, :cond_0

    .line 2183
    :try_start_0
    invoke-direct {p0}, Lcom/a/a/a/h;->a()V

    .line 2186
    :cond_0
    iget v0, p0, Lcom/a/a/a/h;->a:I

    sub-int v1, v0, v3

    .line 2187
    iget-object v2, p0, Lcom/a/a/a/h;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2188
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    sub-int/2addr v0, v3

    and-int v3, p2, v0

    .line 2189
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/bj;

    move-object v4, v0

    .line 2191
    :goto_0
    if-eqz v4, :cond_2

    .line 2192
    invoke-interface {v4}, Lcom/a/a/a/bj;->d()Ljava/lang/Object;

    move-result-object v5

    .line 2193
    invoke-interface {v4}, Lcom/a/a/a/bj;->h()I

    move-result v6

    if-ne v6, p2, :cond_1

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-object v6, v6, Lcom/a/a/a/aq;->b:Lcom/a/a/b/g;

    invoke-interface {v6, v5, p1}, Lcom/a/a/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2195
    invoke-interface {v4}, Lcom/a/a/a/bj;->f()Lcom/a/a/a/aw;

    move-result-object v5

    invoke-interface {v5}, Lcom/a/a/a/aw;->get()Ljava/lang/Object;

    move-result-object v5

    .line 2196
    iget v6, p0, Lcom/a/a/a/h;->b:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/a/a/a/h;->b:I

    .line 2197
    invoke-direct {p0, v0, v4}, Lcom/a/a/a/h;->a(Lcom/a/a/a/bj;Lcom/a/a/a/bj;)Lcom/a/a/a/bj;

    move-result-object v0

    .line 2198
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2199
    iput v1, p0, Lcom/a/a/a/h;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2206
    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    .line 2207
    iget-object v0, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v0}, Lcom/a/a/a/aq;->a()V

    move-object v0, v5

    :goto_1
    return-object v0

    .line 2191
    :cond_1
    :try_start_1
    invoke-interface {v4}, Lcom/a/a/a/bj;->i()Lcom/a/a/a/bj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 2204
    :cond_2
    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    .line 2207
    iget-object v0, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v0}, Lcom/a/a/a/aq;->a()V

    const/4 v0, 0x0

    goto :goto_1

    .line 2206
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    .line 2207
    iget-object v1, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v1}, Lcom/a/a/a/aq;->a()V

    throw v0
.end method

.method final a(Lcom/a/a/a/bj;I)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2259
    invoke-virtual {p0}, Lcom/a/a/a/h;->lock()V

    .line 2261
    :try_start_0
    iget v0, p0, Lcom/a/a/a/h;->a:I

    sub-int v1, v0, v6

    .line 2262
    iget-object v2, p0, Lcom/a/a/a/h;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2263
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    sub-int/2addr v0, v6

    and-int v3, p2, v0

    .line 2264
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/bj;

    move-object v4, v0

    .line 2266
    :goto_0
    if-eqz v4, :cond_2

    .line 2267
    if-ne v4, p1, :cond_1

    .line 2268
    invoke-interface {v4}, Lcom/a/a/a/bj;->f()Lcom/a/a/a/aw;

    move-result-object v5

    invoke-interface {v5}, Lcom/a/a/a/aw;->get()Ljava/lang/Object;

    move-result-object v5

    .line 2269
    if-nez v5, :cond_0

    .line 2270
    iget v5, p0, Lcom/a/a/a/h;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/a/a/a/h;->b:I

    .line 2271
    invoke-direct {p0, v0, v4}, Lcom/a/a/a/h;->a(Lcom/a/a/a/bj;Lcom/a/a/a/bj;)Lcom/a/a/a/bj;

    move-result-object v0

    .line 2272
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2273
    iput v1, p0, Lcom/a/a/a/h;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2274
    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    move v0, v6

    .line 2281
    :goto_1
    return v0

    .line 2276
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    move v0, v7

    goto :goto_1

    .line 2266
    :cond_1
    :try_start_1
    invoke-interface {v4}, Lcom/a/a/a/bj;->i()Lcom/a/a/a/bj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 2281
    :cond_2
    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    move v0, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    throw v0
.end method

.method final a(Ljava/lang/Object;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1953
    iget v0, p0, Lcom/a/a/a/h;->a:I

    if-eqz v0, :cond_2

    .line 1954
    iget-object v1, p0, Lcom/a/a/a/h;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1955
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    move v3, v6

    .line 1956
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1957
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/bj;

    :goto_1
    if-eqz v0, :cond_1

    .line 1959
    iget-object v4, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v4, v0}, Lcom/a/a/a/aq;->d(Lcom/a/a/a/bj;)Ljava/lang/Object;

    move-result-object v4

    .line 1960
    if-eqz v4, :cond_0

    .line 1961
    iget-object v5, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-object v5, v5, Lcom/a/a/a/aq;->c:Lcom/a/a/b/g;

    invoke-interface {v5, v4, p1}, Lcom/a/a/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1964
    const/4 v0, 0x1

    .line 1970
    :goto_2
    return v0

    .line 1958
    :cond_0
    invoke-interface {v0}, Lcom/a/a/a/bj;->i()Lcom/a/a/a/bj;

    move-result-object v0

    goto :goto_1

    .line 1956
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v6

    .line 1970
    goto :goto_2
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1974
    invoke-static {p3}, Lcom/a/a/b/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    invoke-static {p4}, Lcom/a/a/b/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1976
    invoke-virtual {p0}, Lcom/a/a/a/h;->lock()V

    .line 1978
    :try_start_0
    iget-object v1, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-boolean v1, v1, Lcom/a/a/a/aq;->e:Z

    if-eqz v1, :cond_0

    .line 1979
    invoke-direct {p0}, Lcom/a/a/a/h;->a()V

    .line 1982
    :cond_0
    invoke-virtual {p0, p2}, Lcom/a/a/a/h;->a(I)Lcom/a/a/a/bj;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_4

    .line 1984
    invoke-interface {v2}, Lcom/a/a/a/bj;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1985
    invoke-interface {v2}, Lcom/a/a/a/bj;->h()I

    move-result v3

    if-ne v3, p2, :cond_3

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-object v3, v3, Lcom/a/a/a/aq;->b:Lcom/a/a/b/g;

    invoke-interface {v3, p1, v1}, Lcom/a/a/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1989
    invoke-interface {v2}, Lcom/a/a/a/bj;->f()Lcom/a/a/a/aw;

    move-result-object v1

    invoke-interface {v1}, Lcom/a/a/a/aw;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1990
    if-nez v1, :cond_1

    .line 1991
    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    .line 2010
    iget-object v1, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v1}, Lcom/a/a/a/aq;->a()V

    move v1, v4

    :goto_1
    return v1

    .line 1994
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-object v3, v3, Lcom/a/a/a/aq;->c:Lcom/a/a/b/g;

    invoke-interface {v3, v1, p3}, Lcom/a/a/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1995
    invoke-direct {p0, v2, p4}, Lcom/a/a/a/h;->a(Lcom/a/a/a/bj;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1996
    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    .line 2010
    iget-object v1, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v1}, Lcom/a/a/a/aq;->a()V

    const/4 v1, 0x1

    goto :goto_1

    .line 2000
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-boolean v1, v1, Lcom/a/a/a/aq;->f:Z

    if-eqz v1, :cond_3

    .line 2001
    move-object v0, v2

    check-cast v0, Lcom/a/a/a/ba;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/a/a/a/h;->a(Lcom/a/a/a/ba;)V

    .line 1983
    :cond_3
    invoke-interface {v2}, Lcom/a/a/a/bj;->i()Lcom/a/a/a/bj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 2007
    :cond_4
    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    .line 2010
    iget-object v1, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v1}, Lcom/a/a/a/aq;->a()V

    move v1, v4

    goto :goto_1

    .line 2009
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    .line 2010
    iget-object v2, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v2}, Lcom/a/a/a/aq;->a()V

    throw v1
.end method

.method final b(Lcom/a/a/a/bj;I)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 2292
    invoke-virtual {p0}, Lcom/a/a/a/h;->lock()V

    .line 2294
    :try_start_0
    iget v0, p0, Lcom/a/a/a/h;->a:I

    sub-int v1, v0, v6

    .line 2295
    iget-object v2, p0, Lcom/a/a/a/h;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2296
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    sub-int/2addr v0, v6

    and-int v3, p2, v0

    .line 2297
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/bj;

    move-object v4, v0

    .line 2299
    :goto_0
    if-eqz v4, :cond_1

    .line 2300
    if-ne v4, p1, :cond_0

    .line 2301
    iget v5, p0, Lcom/a/a/a/h;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/a/a/a/h;->b:I

    .line 2302
    invoke-direct {p0, v0, v4}, Lcom/a/a/a/h;->a(Lcom/a/a/a/bj;Lcom/a/a/a/bj;)Lcom/a/a/a/bj;

    move-result-object v0

    .line 2303
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2304
    iput v1, p0, Lcom/a/a/a/h;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2305
    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    move v0, v6

    .line 2309
    :goto_1
    return v0

    .line 2299
    :cond_0
    :try_start_1
    invoke-interface {v4}, Lcom/a/a/a/bj;->i()Lcom/a/a/a/bj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 2309
    :cond_1
    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    throw v0
.end method

.method final b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2212
    invoke-static {p3}, Lcom/a/a/b/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    invoke-virtual {p0}, Lcom/a/a/a/h;->lock()V

    .line 2215
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-boolean v0, v0, Lcom/a/a/a/aq;->e:Z

    if-eqz v0, :cond_0

    .line 2216
    invoke-direct {p0}, Lcom/a/a/a/h;->a()V

    .line 2219
    :cond_0
    iget v0, p0, Lcom/a/a/a/h;->a:I

    sub-int v1, v0, v7

    .line 2220
    iget-object v2, p0, Lcom/a/a/a/h;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2221
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    sub-int/2addr v0, v7

    and-int v3, p2, v0

    .line 2222
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/bj;

    move-object v4, v0

    .line 2224
    :goto_0
    if-eqz v4, :cond_4

    .line 2225
    invoke-interface {v4}, Lcom/a/a/a/bj;->d()Ljava/lang/Object;

    move-result-object v5

    .line 2226
    invoke-interface {v4}, Lcom/a/a/a/bj;->h()I

    move-result v6

    if-ne v6, p2, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-object v6, v6, Lcom/a/a/a/aq;->b:Lcom/a/a/b/g;

    invoke-interface {v6, v5, p1}, Lcom/a/a/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2228
    invoke-interface {v4}, Lcom/a/a/a/bj;->f()Lcom/a/a/a/aw;

    move-result-object v5

    invoke-interface {v5}, Lcom/a/a/a/aw;->get()Ljava/lang/Object;

    move-result-object v5

    .line 2229
    if-eq p3, v5, :cond_1

    if-eqz p3, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    iget-object v6, v6, Lcom/a/a/a/aq;->c:Lcom/a/a/b/g;

    invoke-interface {v6, v5, p3}, Lcom/a/a/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2231
    :cond_1
    iget v5, p0, Lcom/a/a/a/h;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/a/a/a/h;->b:I

    .line 2232
    invoke-direct {p0, v0, v4}, Lcom/a/a/a/h;->a(Lcom/a/a/a/bj;Lcom/a/a/a/bj;)Lcom/a/a/a/bj;

    move-result-object v0

    .line 2233
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2234
    iput v1, p0, Lcom/a/a/a/h;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2235
    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    .line 2245
    iget-object v0, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v0}, Lcom/a/a/a/aq;->a()V

    move v0, v7

    :goto_1
    return v0

    .line 2237
    :cond_2
    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    .line 2245
    iget-object v0, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v0}, Lcom/a/a/a/aq;->a()V

    move v0, v8

    goto :goto_1

    .line 2224
    :cond_3
    :try_start_1
    invoke-interface {v4}, Lcom/a/a/a/bj;->i()Lcom/a/a/a/bj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 2242
    :cond_4
    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    .line 2245
    iget-object v0, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v0}, Lcom/a/a/a/aq;->a()V

    move v0, v8

    goto :goto_1

    .line 2244
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/a/a/a/h;->unlock()V

    .line 2245
    iget-object v1, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/aq;

    invoke-virtual {v1}, Lcom/a/a/a/aq;->a()V

    throw v0
.end method
