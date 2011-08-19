.class public Landroid/test/TestPrinter;
.super Ljava/lang/Object;
.source "TestPrinter.java"

# interfaces
.implements Landroid/test/TestRunner$Listener;
.implements Ljunit/framework/TestListener;


# instance fields
.field private mFailedTests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnlyFailures:Z

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .parameter "tag"
    .parameter "onlyFailures"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/test/TestPrinter;->mFailedTests:Ljava/util/Set;

    .line 44
    iput-object p1, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    .line 45
    iput-boolean p2, p0, Landroid/test/TestPrinter;->mOnlyFailures:Z

    .line 46
    return-void
.end method

.method private failed(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "test"
    .parameter "t"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/test/TestPrinter;->mFailedTests:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/test/TestPrinter;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "test"
    .parameter "t"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/test/TestPrinter;->failed(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    .line 95
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .registers 3
    .parameter "test"
    .parameter "t"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/test/TestPrinter;->failed(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .registers 4
    .parameter "test"

    .prologue
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/test/TestPrinter;->finished(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Landroid/test/TestPrinter;->mFailedTests:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/test/TestPrinter;->passed(Ljava/lang/String;)V

    .line 106
    :cond_1a
    iget-object v0, p0, Landroid/test/TestPrinter;->mFailedTests:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public failed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "className"
    .parameter "exception"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    const-string v1, "----- begin exception -----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    const-string v1, "----- end exception -----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public finished(Ljava/lang/String;)V
    .registers 5
    .parameter "className"

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/test/TestPrinter;->mOnlyFailures:Z

    if-nez v0, :cond_1c

    .line 56
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1c
    return-void
.end method

.method public passed(Ljava/lang/String;)V
    .registers 5
    .parameter "className"

    .prologue
    .line 76
    iget-boolean v0, p0, Landroid/test/TestPrinter;->mOnlyFailures:Z

    if-nez v0, :cond_1c

    .line 77
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "passed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_1c
    return-void
.end method

.method public performance(Ljava/lang/String;JILjava/util/List;)V
    .registers 13
    .parameter "className"
    .parameter "itemTimeNS"
    .parameter "iterations"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/List",
            "<",
            "Landroid/test/TestRunner$IntermediateTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p5, intermediates:Ljava/util/List;,"Ljava/util/List<Landroid/test/TestRunner$IntermediateTime;>;"
    iget-object v3, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "perf: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ns/op (done "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " times)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-eqz p5, :cond_76

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_76

    .line 66
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    .line 67
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3f
    if-ge v1, v0, :cond_76

    .line 68
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/test/TestRunner$IntermediateTime;

    .line 69
    .local v2, time:Landroid/test/TestRunner$IntermediateTime;
    iget-object v3, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  intermediate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/test/TestRunner$IntermediateTime;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Landroid/test/TestRunner$IntermediateTime;->timeInNS:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ns"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 73
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #time:Landroid/test/TestRunner$IntermediateTime;
    :cond_76
    return-void
.end method

.method public startTest(Ljunit/framework/Test;)V
    .registers 3
    .parameter "test"

    .prologue
    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/test/TestPrinter;->started(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public started(Ljava/lang/String;)V
    .registers 5
    .parameter "className"

    .prologue
    .line 49
    iget-boolean v0, p0, Landroid/test/TestPrinter;->mOnlyFailures:Z

    if-nez v0, :cond_1c

    .line 50
    iget-object v0, p0, Landroid/test/TestPrinter;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_1c
    return-void
.end method
