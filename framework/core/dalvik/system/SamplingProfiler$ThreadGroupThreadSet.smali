.class Ldalvik/system/SamplingProfiler$ThreadGroupThreadSet;
.super Ljava/lang/Object;
.source "SamplingProfiler.java"

# interfaces
.implements Ldalvik/system/SamplingProfiler$ThreadSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/SamplingProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadGroupThreadSet"
.end annotation


# instance fields
.field private lastThread:I

.field private final threadGroup:Ljava/lang/ThreadGroup;

.field private threads:[Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/ThreadGroup;)V
    .registers 4
    .parameter "threadGroup"

    .prologue
    .line 1489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1490
    if-nez p1, :cond_d

    .line 1491
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadGroup == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1493
    :cond_d
    iput-object p1, p0, Ldalvik/system/SamplingProfiler$ThreadGroupThreadSet;->threadGroup:Ljava/lang/ThreadGroup;

    .line 1494
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$ThreadGroupThreadSet;->resize()V

    .line 1495
    return-void
.end method

.method private resize()V
    .registers 3

    .prologue
    .line 1498
    iget-object v1, p0, Ldalvik/system/SamplingProfiler$ThreadGroupThreadSet;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    .line 1503
    .local v0, count:I
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Ljava/lang/Thread;

    iput-object v1, p0, Ldalvik/system/SamplingProfiler$ThreadGroupThreadSet;->threads:[Ljava/lang/Thread;

    .line 1504
    const/4 v1, 0x0

    iput v1, p0, Ldalvik/system/SamplingProfiler$ThreadGroupThreadSet;->lastThread:I

    .line 1505
    return-void
.end method


# virtual methods
.method public threads()[Ljava/lang/Thread;
    .registers 5

    .prologue
    .line 1510
    :goto_0
    iget-object v1, p0, Ldalvik/system/SamplingProfiler$ThreadGroupThreadSet;->threadGroup:Ljava/lang/ThreadGroup;

    iget-object v2, p0, Ldalvik/system/SamplingProfiler$ThreadGroupThreadSet;->threads:[Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    .line 1511
    .local v0, threadCount:I
    iget-object v1, p0, Ldalvik/system/SamplingProfiler$ThreadGroupThreadSet;->threads:[Ljava/lang/Thread;

    array-length v1, v1

    if-ne v0, v1, :cond_11

    .line 1512
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$ThreadGroupThreadSet;->resize()V

    goto :goto_0

    .line 1517
    :cond_11
    iget v1, p0, Ldalvik/system/SamplingProfiler$ThreadGroupThreadSet;->lastThread:I

    if-ge v0, v1, :cond_1d

    .line 1519
    iget-object v1, p0, Ldalvik/system/SamplingProfiler$ThreadGroupThreadSet;->threads:[Ljava/lang/Thread;

    iget v2, p0, Ldalvik/system/SamplingProfiler$ThreadGroupThreadSet;->lastThread:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 1521
    :cond_1d
    iput v0, p0, Ldalvik/system/SamplingProfiler$ThreadGroupThreadSet;->lastThread:I

    .line 1522
    iget-object v1, p0, Ldalvik/system/SamplingProfiler$ThreadGroupThreadSet;->threads:[Ljava/lang/Thread;

    return-object v1
.end method
