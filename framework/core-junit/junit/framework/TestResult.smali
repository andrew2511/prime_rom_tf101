.class public Ljunit/framework/TestResult;
.super Ljava/lang/Object;
.source "TestResult.java"


# instance fields
.field protected fErrors:Ljava/util/Vector;

.field protected fFailures:Ljava/util/Vector;

.field protected fListeners:Ljava/util/Vector;

.field protected fRunTests:I

.field private fStop:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/Vector;

    .line 24
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/Vector;

    .line 25
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/Vector;

    .line 26
    iput v1, p0, Ljunit/framework/TestResult;->fRunTests:I

    .line 27
    iput-boolean v1, p0, Ljunit/framework/TestResult;->fStop:Z

    .line 28
    return-void
.end method

.method private declared-synchronized cloneListeners()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "test"
    .parameter "t"

    .prologue
    .line 34
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/Vector;

    new-instance v2, Ljunit/framework/TestFailure;

    invoke-direct {v2, p1, p2}, Ljunit/framework/TestFailure;-><init>(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 35
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, e:Ljava/util/Enumeration;
    :goto_13
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 36
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestListener;

    invoke-interface {v1, p1, p2}, Ljunit/framework/TestListener;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    goto :goto_13

    .line 34
    .end local v0           #e:Ljava/util/Enumeration;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1

    .line 38
    .restart local v0       #e:Ljava/util/Enumeration;
    :cond_26
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .registers 6
    .parameter "test"
    .parameter "t"

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/Vector;

    new-instance v2, Ljunit/framework/TestFailure;

    invoke-direct {v2, p1, p2}, Ljunit/framework/TestFailure;-><init>(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 45
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, e:Ljava/util/Enumeration;
    :goto_13
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 46
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestListener;

    invoke-interface {v1, p1, p2}, Ljunit/framework/TestListener;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    goto :goto_13

    .line 44
    .end local v0           #e:Ljava/util/Enumeration;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1

    .line 48
    .restart local v0       #e:Ljava/util/Enumeration;
    :cond_26
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addListener(Ljunit/framework/TestListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 53
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 54
    monitor-exit p0

    return-void

    .line 53
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public endTest(Ljunit/framework/Test;)V
    .registers 4
    .parameter "test"

    .prologue
    .line 71
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .end local p0
    .local v0, e:Ljava/util/Enumeration;
    :goto_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 72
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljunit/framework/TestListener;

    invoke-interface {p0, p1}, Ljunit/framework/TestListener;->endTest(Ljunit/framework/Test;)V

    goto :goto_8

    .line 74
    :cond_18
    return-void
.end method

.method public declared-synchronized errorCount()I
    .registers 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized errors()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized failureCount()I
    .registers 2

    .prologue
    .line 91
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized failures()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Ljunit/framework/TestListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 60
    monitor-exit p0

    return-void

    .line 59
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected run(Ljunit/framework/TestCase;)V
    .registers 3
    .parameter "test"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Ljunit/framework/TestResult;->startTest(Ljunit/framework/Test;)V

    .line 104
    new-instance v0, Ljunit/framework/TestResult$1;

    invoke-direct {v0, p0, p1}, Ljunit/framework/TestResult$1;-><init>(Ljunit/framework/TestResult;Ljunit/framework/TestCase;)V

    .line 109
    .local v0, p:Ljunit/framework/Protectable;
    invoke-virtual {p0, p1, v0}, Ljunit/framework/TestResult;->runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V

    .line 111
    invoke-virtual {p0, p1}, Ljunit/framework/TestResult;->endTest(Ljunit/framework/Test;)V

    .line 112
    return-void
.end method

.method public declared-synchronized runCount()I
    .registers 2

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljunit/framework/TestResult;->fRunTests:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V
    .registers 4
    .parameter "test"
    .parameter "p"

    .prologue
    .line 124
    :try_start_0
    invoke-interface {p2}, Ljunit/framework/Protectable;->protect()V
    :try_end_3
    .catch Ljunit/framework/AssertionFailedError; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_3} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_b

    .line 135
    :goto_3
    return-void

    .line 126
    :catch_4
    move-exception v0

    .line 127
    .local v0, e:Ljunit/framework/AssertionFailedError;
    invoke-virtual {p0, p1, v0}, Ljunit/framework/TestResult;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V

    goto :goto_3

    .line 129
    .end local v0           #e:Ljunit/framework/AssertionFailedError;
    :catch_9
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/ThreadDeath;
    throw v0

    .line 132
    .end local v0           #e:Ljava/lang/ThreadDeath;
    :catch_b
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {p0, p1, v0}, Ljunit/framework/TestResult;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public declared-synchronized shouldStop()Z
    .registers 2

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljunit/framework/TestResult;->fStop:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startTest(Ljunit/framework/Test;)V
    .registers 5
    .parameter "test"

    .prologue
    .line 146
    invoke-interface {p1}, Ljunit/framework/Test;->countTestCases()I

    move-result v0

    .line 147
    .local v0, count:I
    monitor-enter p0

    .line 148
    :try_start_5
    iget v2, p0, Ljunit/framework/TestResult;->fRunTests:I

    add-int/2addr v2, v0

    iput v2, p0, Ljunit/framework/TestResult;->fRunTests:I

    .line 149
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_23

    .line 150
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .end local p0
    .local v1, e:Ljava/util/Enumeration;
    :goto_13
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 151
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljunit/framework/TestListener;

    invoke-interface {p0, p1}, Ljunit/framework/TestListener;->startTest(Ljunit/framework/Test;)V

    goto :goto_13

    .line 149
    .end local v1           #e:Ljava/util/Enumeration;
    .restart local p0
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v2

    .line 153
    .end local p0
    .restart local v1       #e:Ljava/util/Enumeration;
    :cond_26
    return-void
.end method

.method public declared-synchronized stop()V
    .registers 2

    .prologue
    .line 158
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljunit/framework/TestResult;->fStop:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 159
    monitor-exit p0

    return-void

    .line 158
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wasSuccessful()Z
    .registers 2

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljunit/framework/TestResult;->failureCount()I

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Ljunit/framework/TestResult;->errorCount()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
