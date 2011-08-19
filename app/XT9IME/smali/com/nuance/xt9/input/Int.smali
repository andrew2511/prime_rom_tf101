.class public Lcom/nuance/xt9/input/Int;
.super Ljava/lang/Object;
.source "Int.java"


# instance fields
.field private mValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/Int;->mValue:I

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "initval"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/nuance/xt9/input/Int;->mValue:I

    .line 9
    return-void
.end method


# virtual methods
.method public dec()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/Int;->dec(I)I

    move-result v0

    return v0
.end method

.method public dec(I)I
    .locals 1
    .parameter "decBy"

    .prologue
    .line 33
    neg-int v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/Int;->inc(I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getVal()I
    .locals 1

    .prologue
    .line 16
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nuance/xt9/input/Int;->mValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/nuance/xt9/input/Int;->mValue:I

    return v0
.end method

.method public inc()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/Int;->inc(I)I

    move-result v0

    return v0
.end method

.method public inc(I)I
    .locals 1
    .parameter "incBy"

    .prologue
    .line 25
    iget v0, p0, Lcom/nuance/xt9/input/Int;->mValue:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/Int;->setVal(I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized setVal(I)I
    .locals 1
    .parameter "newval"

    .prologue
    .line 20
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/nuance/xt9/input/Int;->mValue:I

    .line 21
    iget v0, p0, Lcom/nuance/xt9/input/Int;->mValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
