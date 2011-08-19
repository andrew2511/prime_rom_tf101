.class abstract Lcom/a/a/a/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field private d:Lcom/a/a/a/bj;

.field private e:Lcom/a/a/a/af;

.field private f:Lcom/a/a/a/af;

.field private synthetic g:Lcom/a/a/a/aq;


# direct methods
.method constructor <init>(Lcom/a/a/a/aq;)V
    .locals 2
    .parameter

    .prologue
    .line 2599
    iput-object p1, p0, Lcom/a/a/a/ag;->g:Lcom/a/a/a/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2600
    iget-object v0, p1, Lcom/a/a/a/aq;->a:[Lcom/a/a/a/h;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/a/ag;->a:I

    .line 2601
    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/a/ag;->b:I

    .line 2602
    invoke-direct {p0}, Lcom/a/a/a/ag;->b()V

    .line 2603
    return-void
.end method

.method private a(Lcom/a/a/a/bj;)Z
    .locals 4
    .parameter

    .prologue
    .line 2664
    invoke-interface {p1}, Lcom/a/a/a/bj;->d()Ljava/lang/Object;

    move-result-object v0

    .line 2665
    iget-object v1, p0, Lcom/a/a/a/ag;->g:Lcom/a/a/a/aq;

    invoke-virtual {v1, p1}, Lcom/a/a/a/aq;->d(Lcom/a/a/a/bj;)Ljava/lang/Object;

    move-result-object v1

    .line 2666
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2667
    new-instance v2, Lcom/a/a/a/af;

    iget-object v3, p0, Lcom/a/a/a/ag;->g:Lcom/a/a/a/aq;

    invoke-direct {v2, v3, v0, v1}, Lcom/a/a/a/af;-><init>(Lcom/a/a/a/aq;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/a/a/a/ag;->e:Lcom/a/a/a/af;

    .line 2668
    const/4 v0, 0x1

    .line 2671
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/ag;->e:Lcom/a/a/a/af;

    .line 2608
    invoke-direct {p0}, Lcom/a/a/a/ag;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2626
    :cond_0
    :goto_0
    return-void

    .line 2612
    :cond_1
    invoke-direct {p0}, Lcom/a/a/a/ag;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2616
    :cond_2
    iget v0, p0, Lcom/a/a/a/ag;->a:I

    if-ltz v0, :cond_0

    .line 2617
    iget-object v0, p0, Lcom/a/a/a/ag;->g:Lcom/a/a/a/aq;

    iget-object v0, v0, Lcom/a/a/a/aq;->a:[Lcom/a/a/a/h;

    iget v1, p0, Lcom/a/a/a/ag;->a:I

    sub-int v2, v1, v3

    iput v2, p0, Lcom/a/a/a/ag;->a:I

    aget-object v0, v0, v1

    .line 2618
    iget v1, v0, Lcom/a/a/a/h;->a:I

    if-eqz v1, :cond_2

    .line 2619
    iget-object v0, v0, Lcom/a/a/a/h;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/a/a/a/ag;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2620
    iget-object v0, p0, Lcom/a/a/a/ag;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/a/a/a/ag;->b:I

    .line 2621
    invoke-direct {p0}, Lcom/a/a/a/ag;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 2633
    iget-object v0, p0, Lcom/a/a/a/ag;->d:Lcom/a/a/a/bj;

    if-eqz v0, :cond_1

    .line 2634
    iget-object v0, p0, Lcom/a/a/a/ag;->d:Lcom/a/a/a/bj;

    invoke-interface {v0}, Lcom/a/a/a/bj;->i()Lcom/a/a/a/bj;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/ag;->d:Lcom/a/a/a/bj;

    :goto_0
    iget-object v0, p0, Lcom/a/a/a/ag;->d:Lcom/a/a/a/bj;

    if-eqz v0, :cond_1

    .line 2636
    iget-object v0, p0, Lcom/a/a/a/ag;->d:Lcom/a/a/a/bj;

    invoke-direct {p0, v0}, Lcom/a/a/a/ag;->a(Lcom/a/a/a/bj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2637
    const/4 v0, 0x1

    .line 2641
    :goto_1
    return v0

    .line 2635
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/ag;->d:Lcom/a/a/a/bj;

    invoke-interface {v0}, Lcom/a/a/a/bj;->i()Lcom/a/a/a/bj;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/ag;->d:Lcom/a/a/a/bj;

    goto :goto_0

    .line 2641
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2649
    :cond_0
    iget v0, p0, Lcom/a/a/a/ag;->b:I

    if-ltz v0, :cond_2

    .line 2650
    iget-object v0, p0, Lcom/a/a/a/ag;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/a/a/a/ag;->b:I

    sub-int v2, v1, v3

    iput v2, p0, Lcom/a/a/a/ag;->b:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/bj;

    iput-object v0, p0, Lcom/a/a/a/ag;->d:Lcom/a/a/a/bj;

    if-eqz v0, :cond_0

    .line 2651
    iget-object v0, p0, Lcom/a/a/a/ag;->d:Lcom/a/a/a/bj;

    invoke-direct {p0, v0}, Lcom/a/a/a/ag;->a(Lcom/a/a/a/bj;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/a/a/a/ag;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    move v0, v3

    .line 2656
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/a/a/a/af;
    .locals 1

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/a/a/a/ag;->e:Lcom/a/a/a/af;

    if-nez v0, :cond_0

    .line 2681
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 2683
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/ag;->e:Lcom/a/a/a/af;

    iput-object v0, p0, Lcom/a/a/a/ag;->f:Lcom/a/a/a/af;

    .line 2684
    invoke-direct {p0}, Lcom/a/a/a/ag;->b()V

    .line 2685
    iget-object v0, p0, Lcom/a/a/a/ag;->f:Lcom/a/a/a/af;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 2676
    iget-object v0, p0, Lcom/a/a/a/ag;->e:Lcom/a/a/a/af;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 2689
    iget-object v0, p0, Lcom/a/a/a/ag;->f:Lcom/a/a/a/af;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/a/a/b/l;->a(Z)V

    .line 2690
    iget-object v0, p0, Lcom/a/a/a/ag;->g:Lcom/a/a/a/aq;

    iget-object v1, p0, Lcom/a/a/a/ag;->f:Lcom/a/a/a/af;

    invoke-virtual {v1}, Lcom/a/a/a/af;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/aq;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2691
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/ag;->f:Lcom/a/a/a/af;

    .line 2692
    return-void

    .line 2689
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
