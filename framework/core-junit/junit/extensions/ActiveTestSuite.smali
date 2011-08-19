.class public Ljunit/extensions/ActiveTestSuite;
.super Ljunit/framework/TestSuite;
.source "ActiveTestSuite.java"


# instance fields
.field private volatile fActiveTestDeathCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljunit/framework/TestSuite;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter "theClass"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .parameter "theClass"
    .parameter "name"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public run(Ljunit/framework/TestResult;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 30
    const/4 v0, 0x0

    iput v0, p0, Ljunit/extensions/ActiveTestSuite;->fActiveTestDeathCount:I

    .line 31
    invoke-super {p0, p1}, Ljunit/framework/TestSuite;->run(Ljunit/framework/TestResult;)V

    .line 32
    invoke-virtual {p0}, Ljunit/extensions/ActiveTestSuite;->waitUntilFinished()V

    .line 33
    return-void
.end method

.method public declared-synchronized runFinished(Ljunit/framework/Test;)V
    .registers 3
    .parameter "test"

    .prologue
    .line 61
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljunit/extensions/ActiveTestSuite;->fActiveTestDeathCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljunit/extensions/ActiveTestSuite;->fActiveTestDeathCount:I

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 63
    monitor-exit p0

    return-void

    .line 61
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public runTest(Ljunit/framework/Test;Ljunit/framework/TestResult;)V
    .registers 4
    .parameter "test"
    .parameter "result"

    .prologue
    .line 36
    new-instance v0, Ljunit/extensions/ActiveTestSuite$1;

    invoke-direct {v0, p0, p1, p2}, Ljunit/extensions/ActiveTestSuite$1;-><init>(Ljunit/extensions/ActiveTestSuite;Ljunit/framework/Test;Ljunit/framework/TestResult;)V

    .line 47
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 48
    return-void
.end method

.method declared-synchronized waitUntilFinished()V
    .registers 4

    .prologue
    .line 51
    monitor-enter p0

    :goto_1
    :try_start_1
    iget v1, p0, Ljunit/extensions/ActiveTestSuite;->fActiveTestDeathCount:I

    invoke-virtual {p0}, Ljunit/extensions/ActiveTestSuite;->testCount()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-result v2

    if-ge v1, v2, :cond_e

    .line 53
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_10
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_1

    .line 54
    :catch_d
    move-exception v0

    .line 58
    :cond_e
    monitor-exit p0

    return-void

    .line 51
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method
