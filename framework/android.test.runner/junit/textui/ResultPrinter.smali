.class public Ljunit/textui/ResultPrinter;
.super Ljava/lang/Object;
.source "ResultPrinter.java"

# interfaces
.implements Ljunit/framework/TestListener;


# instance fields
.field fColumn:I

.field fWriter:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .registers 3
    .parameter "writer"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Ljunit/textui/ResultPrinter;->fColumn:I

    .line 21
    iput-object p1, p0, Ljunit/textui/ResultPrinter;->fWriter:Ljava/io/PrintStream;

    .line 22
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "test"
    .parameter "t"

    .prologue
    .line 115
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .registers 5
    .parameter "test"
    .parameter "t"

    .prologue
    .line 122
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method protected elapsedTimeAsString(J)Ljava/lang/String;
    .registers 7
    .parameter "runTime"

    .prologue
    .line 105
    long-to-double v0, p1

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public endTest(Ljunit/framework/Test;)V
    .registers 2
    .parameter "test"

    .prologue
    .line 129
    return-void
.end method

.method public getWriter()Ljava/io/PrintStream;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Ljunit/textui/ResultPrinter;->fWriter:Ljava/io/PrintStream;

    return-object v0
.end method

.method declared-synchronized print(Ljunit/framework/TestResult;J)V
    .registers 5
    .parameter "result"
    .parameter "runTime"

    .prologue
    .line 28
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p2, p3}, Ljunit/textui/ResultPrinter;->printHeader(J)V

    .line 29
    invoke-virtual {p0, p1}, Ljunit/textui/ResultPrinter;->printErrors(Ljunit/framework/TestResult;)V

    .line 30
    invoke-virtual {p0, p1}, Ljunit/textui/ResultPrinter;->printFailures(Ljunit/framework/TestResult;)V

    .line 31
    invoke-virtual {p0, p1}, Ljunit/textui/ResultPrinter;->printFooter(Ljunit/framework/TestResult;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 32
    monitor-exit p0

    return-void

    .line 28
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public printDefect(Ljunit/framework/TestFailure;I)V
    .registers 3
    .parameter "booBoo"
    .parameter "count"

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Ljunit/textui/ResultPrinter;->printDefectHeader(Ljunit/framework/TestFailure;I)V

    .line 68
    invoke-virtual {p0, p1}, Ljunit/textui/ResultPrinter;->printDefectTrace(Ljunit/framework/TestFailure;)V

    .line 69
    return-void
.end method

.method protected printDefectHeader(Ljunit/framework/TestFailure;I)V
    .registers 6
    .parameter "booBoo"
    .parameter "count"

    .prologue
    .line 74
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljunit/framework/TestFailure;->failedTest()Ljunit/framework/Test;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method protected printDefectTrace(Ljunit/framework/TestFailure;)V
    .registers 4
    .parameter "booBoo"

    .prologue
    .line 78
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p1}, Ljunit/framework/TestFailure;->trace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method protected printDefects(Ljava/util/Enumeration;ILjava/lang/String;)V
    .registers 8
    .parameter "booBoos"
    .parameter "count"
    .parameter "type"

    .prologue
    .line 56
    if-nez p2, :cond_3

    .line 64
    :cond_2
    return-void

    .line 57
    :cond_3
    const/4 v1, 0x1

    if-ne p2, v1, :cond_43

    .line 58
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    :goto_30
    const/4 v0, 0x1

    .local v0, i:I
    :goto_31
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestFailure;

    invoke-virtual {p0, v1, v0}, Ljunit/textui/ResultPrinter;->printDefect(Ljunit/framework/TestFailure;I)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 60
    .end local v0           #i:I
    :cond_43
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There were "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_30
.end method

.method protected printErrors(Ljunit/framework/TestResult;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 48
    invoke-virtual {p1}, Ljunit/framework/TestResult;->errors()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Ljunit/framework/TestResult;->errorCount()I

    move-result v1

    const-string v2, "error"

    invoke-virtual {p0, v0, v1, v2}, Ljunit/textui/ResultPrinter;->printDefects(Ljava/util/Enumeration;ILjava/lang/String;)V

    .line 49
    return-void
.end method

.method protected printFailures(Ljunit/framework/TestResult;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 52
    invoke-virtual {p1}, Ljunit/framework/TestResult;->failures()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Ljunit/framework/TestResult;->failureCount()I

    move-result v1

    const-string v2, "failure"

    invoke-virtual {p0, v0, v1, v2}, Ljunit/textui/ResultPrinter;->printDefects(Ljava/util/Enumeration;ILjava/lang/String;)V

    .line 53
    return-void
.end method

.method protected printFooter(Ljunit/framework/TestResult;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 82
    invoke-virtual {p1}, Ljunit/framework/TestResult;->wasSuccessful()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 83
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 84
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljunit/framework/TestResult;->runCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " test"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljunit/framework/TestResult;->runCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_55

    const-string v2, ""

    :goto_3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    :goto_4d
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 95
    return-void

    .line 85
    :cond_55
    const-string v2, "s"

    goto :goto_3c

    .line 88
    :cond_58
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 89
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    const-string v1, "FAILURES!!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tests run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljunit/framework/TestResult;->runCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  Failures: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljunit/framework/TestResult;->failureCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  Errors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljunit/framework/TestResult;->errorCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4d
.end method

.method protected printHeader(J)V
    .registers 6
    .parameter "runTime"

    .prologue
    .line 43
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 44
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Ljunit/textui/ResultPrinter;->elapsedTimeAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method printWaitPrompt()V
    .registers 3

    .prologue
    .line 35
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 36
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    const-string v1, "<RETURN> to continue"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public startTest(Ljunit/framework/Test;)V
    .registers 4
    .parameter "test"

    .prologue
    .line 135
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 136
    iget v0, p0, Ljunit/textui/ResultPrinter;->fColumn:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljunit/textui/ResultPrinter;->fColumn:I

    const/16 v1, 0x28

    if-lt v0, v1, :cond_1d

    .line 137
    invoke-virtual {p0}, Ljunit/textui/ResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Ljunit/textui/ResultPrinter;->fColumn:I

    .line 140
    :cond_1d
    return-void
.end method
