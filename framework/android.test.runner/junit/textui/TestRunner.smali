.class public Ljunit/textui/TestRunner;
.super Ljunit/runner/BaseTestRunner;
.source "TestRunner.java"


# static fields
.field public static final EXCEPTION_EXIT:I = 0x2

.field public static final FAILURE_EXIT:I = 0x1

.field public static final SUCCESS_EXIT:I


# instance fields
.field private fPrinter:Ljunit/textui/ResultPrinter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Ljunit/textui/TestRunner;-><init>(Ljava/io/PrintStream;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .registers 3
    .parameter "writer"

    .prologue
    .line 43
    new-instance v0, Ljunit/textui/ResultPrinter;

    invoke-direct {v0, p1}, Ljunit/textui/ResultPrinter;-><init>(Ljava/io/PrintStream;)V

    invoke-direct {p0, v0}, Ljunit/textui/TestRunner;-><init>(Ljunit/textui/ResultPrinter;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljunit/textui/ResultPrinter;)V
    .registers 2
    .parameter "printer"

    .prologue
    .line 49
    invoke-direct {p0}, Ljunit/runner/BaseTestRunner;-><init>()V

    .line 50
    iput-object p1, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    .line 51
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6
    .parameter "args"

    .prologue
    .line 136
    new-instance v0, Ljunit/textui/TestRunner;

    invoke-direct {v0}, Ljunit/textui/TestRunner;-><init>()V

    .line 138
    .local v0, aTestRunner:Ljunit/textui/TestRunner;
    :try_start_5
    invoke-virtual {v0, p0}, Ljunit/textui/TestRunner;->start([Ljava/lang/String;)Ljunit/framework/TestResult;

    move-result-object v2

    .line 139
    .local v2, r:Ljunit/framework/TestResult;
    invoke-virtual {v2}, Ljunit/framework/TestResult;->wasSuccessful()Z

    move-result v3

    if-nez v3, :cond_13

    .line 140
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 141
    :cond_13
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_18

    .line 146
    .end local v2           #r:Ljunit/framework/TestResult;
    :goto_17
    return-void

    .line 142
    :catch_18
    move-exception v3

    move-object v1, v3

    .line 143
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_17
.end method

.method public static run(Ljunit/framework/Test;)Ljunit/framework/TestResult;
    .registers 3
    .parameter "test"

    .prologue
    .line 71
    new-instance v0, Ljunit/textui/TestRunner;

    invoke-direct {v0}, Ljunit/textui/TestRunner;-><init>()V

    .line 72
    .local v0, runner:Ljunit/textui/TestRunner;
    invoke-virtual {v0, p0}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    move-result-object v1

    return-object v1
.end method

.method public static run(Ljava/lang/Class;)V
    .registers 2
    .parameter "testClass"

    .prologue
    .line 57
    new-instance v0, Ljunit/framework/TestSuite;

    invoke-direct {v0, p0}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    .line 58
    return-void
.end method

.method public static runAndWait(Ljunit/framework/Test;)V
    .registers 3
    .parameter "suite"

    .prologue
    .line 80
    new-instance v0, Ljunit/textui/TestRunner;

    invoke-direct {v0}, Ljunit/textui/TestRunner;-><init>()V

    .line 81
    .local v0, aTestRunner:Ljunit/textui/TestRunner;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;

    .line 82
    return-void
.end method


# virtual methods
.method protected createTestResult()Ljunit/framework/TestResult;
    .registers 2

    .prologue
    .line 105
    new-instance v0, Ljunit/framework/TestResult;

    invoke-direct {v0}, Ljunit/framework/TestResult;-><init>()V

    return-object v0
.end method

.method public doRun(Ljunit/framework/Test;)Ljunit/framework/TestResult;
    .registers 3
    .parameter "test"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;

    move-result-object v0

    return-object v0
.end method

.method public doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;
    .registers 11
    .parameter "suite"
    .parameter "wait"

    .prologue
    .line 113
    invoke-virtual {p0}, Ljunit/textui/TestRunner;->createTestResult()Ljunit/framework/TestResult;

    move-result-object v2

    .line 114
    .local v2, result:Ljunit/framework/TestResult;
    iget-object v7, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    invoke-virtual {v2, v7}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 116
    .local v5, startTime:J
    invoke-interface {p1, v2}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 118
    .local v0, endTime:J
    sub-long v3, v0, v5

    .line 119
    .local v3, runTime:J
    iget-object v7, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    invoke-virtual {v7, v2, v3, v4}, Ljunit/textui/ResultPrinter;->print(Ljunit/framework/TestResult;J)V

    .line 121
    invoke-virtual {p0, p2}, Ljunit/textui/TestRunner;->pause(Z)V

    .line 122
    return-object v2
.end method

.method public getLoader()Ljunit/runner/TestSuiteLoader;
    .registers 2

    .prologue
    .line 89
    new-instance v0, Ljunit/runner/StandardTestSuiteLoader;

    invoke-direct {v0}, Ljunit/runner/StandardTestSuiteLoader;-><init>()V

    return-object v0
.end method

.method protected pause(Z)V
    .registers 3
    .parameter "wait"

    .prologue
    .line 126
    if-nez p1, :cond_3

    .line 133
    :goto_2
    return-void

    .line 127
    :cond_3
    iget-object v0, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    invoke-virtual {v0}, Ljunit/textui/ResultPrinter;->printWaitPrompt()V

    .line 129
    :try_start_8
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_2

    .line 131
    :catch_e
    move-exception v0

    goto :goto_2
.end method

.method protected runFailed(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 180
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 182
    return-void
.end method

.method public setPrinter(Ljunit/textui/ResultPrinter;)V
    .registers 2
    .parameter "printer"

    .prologue
    .line 185
    iput-object p1, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    .line 186
    return-void
.end method

.method protected start([Ljava/lang/String;)Ljunit/framework/TestResult;
    .registers 10
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 153
    const-string v3, ""

    .line 154
    .local v3, testCase:Ljava/lang/String;
    const/4 v4, 0x0

    .line 156
    .local v4, wait:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v5, p1

    if-ge v1, v5, :cond_58

    .line 157
    aget-object v5, p1, v1

    const-string v6, "-wait"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 158
    const/4 v4, 0x1

    .line 156
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 159
    :cond_15
    aget-object v5, p1, v1

    const-string v6, "-c"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 160
    add-int/lit8 v1, v1, 0x1

    aget-object v5, p1, v1

    invoke-virtual {p0, v5}, Ljunit/textui/TestRunner;->extractClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    .line 161
    :cond_28
    aget-object v5, p1, v1

    const-string v6, "-v"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 162
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JUnit "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljunit/runner/Version;->id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " by Kent Beck and Erich Gamma"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 164
    :cond_55
    aget-object v3, p1, v1

    goto :goto_12

    .line 167
    :cond_58
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 168
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Usage: TestRunner [-wait] testCaseName, where name is the name of the TestCase class"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 171
    :cond_68
    :try_start_68
    invoke-virtual {p0, v3}, Ljunit/textui/TestRunner;->getTest(Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v2

    .line 172
    .local v2, suite:Ljunit/framework/Test;
    invoke-virtual {p0, v2, v4}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6f} :catch_71

    move-result-object v5

    return-object v5

    .line 174
    .end local v2           #suite:Ljunit/framework/Test;
    :catch_71
    move-exception v5

    move-object v0, v5

    .line 175
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not create and run test suite: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public testEnded(Ljava/lang/String;)V
    .registers 2
    .parameter "testName"

    .prologue
    .line 99
    return-void
.end method

.method public testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "status"
    .parameter "test"
    .parameter "t"

    .prologue
    .line 93
    return-void
.end method

.method public testStarted(Ljava/lang/String;)V
    .registers 2
    .parameter "testName"

    .prologue
    .line 96
    return-void
.end method
