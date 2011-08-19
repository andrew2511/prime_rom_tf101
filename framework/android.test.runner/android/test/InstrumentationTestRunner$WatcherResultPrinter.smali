.class Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;
.super Ljava/lang/Object;
.source "InstrumentationTestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;
.implements Landroid/os/PerformanceCollector$PerformanceResultsWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/InstrumentationTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatcherResultPrinter"
.end annotation


# instance fields
.field mIncludeDetailedStats:Z

.field mIsTimedTest:Z

.field mPerfCollector:Landroid/os/PerformanceCollector;

.field private final mResultTemplate:Landroid/os/Bundle;

.field mTestClass:Ljava/lang/String;

.field mTestNum:I

.field mTestResult:Landroid/os/Bundle;

.field mTestResultCode:I

.field final synthetic this$0:Landroid/test/InstrumentationTestRunner;


# direct methods
.method public constructor <init>(Landroid/test/InstrumentationTestRunner;I)V
    .registers 6
    .parameter
    .parameter "numTests"

    .prologue
    const/4 v1, 0x0

    .line 721
    iput-object p1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    .line 715
    iput v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 716
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    .line 717
    new-instance v0, Landroid/os/PerformanceCollector;

    invoke-direct {v0}, Landroid/os/PerformanceCollector;-><init>()V

    iput-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    .line 718
    iput-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    .line 719
    iput-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z

    .line 722
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    .line 723
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    const-string v1, "id"

    const-string v2, "InstrumentationTestRunner"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    const-string v1, "numtests"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 725
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 9
    .parameter "test"
    .parameter "t"

    .prologue
    .line 804
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stack"

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const/4 v0, -0x1

    iput v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 807
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stream"

    const-string v2, "\nError in %s:\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast p1, Ljunit/framework/TestCase;

    .end local p1
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .registers 9
    .parameter "test"
    .parameter "t"

    .prologue
    .line 816
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stack"

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const/4 v0, -0x2

    iput v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 819
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stream"

    const-string v2, "\nFailure in %s:\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast p1, Ljunit/framework/TestCase;

    .end local p1
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .registers 6
    .parameter "test"

    .prologue
    .line 828
    iget-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    if-eqz v1, :cond_34

    iget-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z

    if-eqz v1, :cond_34

    .line 829
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    invoke-virtual {v2}, Landroid/os/PerformanceCollector;->endSnapshot()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 834
    :cond_13
    :goto_13
    iget v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    if-nez v1, :cond_20

    .line 835
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v2, "stream"

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    :cond_20
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    iget v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    iget-object v3, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/test/InstrumentationTestRunner;->sendStatus(ILandroid/os/Bundle;)V

    .line 840
    :try_start_29
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    #getter for: Landroid/test/InstrumentationTestRunner;->mDelayMsec:I
    invoke-static {v1}, Landroid/test/InstrumentationTestRunner;->access$000(Landroid/test/InstrumentationTestRunner;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_33} :catch_44

    .line 844
    return-void

    .line 830
    :cond_34
    iget-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    if-eqz v1, :cond_13

    .line 831
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/os/PerformanceCollector;->stopTiming(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->writeStopTiming(Landroid/os/Bundle;)V

    goto :goto_13

    .line 841
    :catch_44
    move-exception v1

    move-object v0, v1

    .line 842
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startTest(Ljunit/framework/Test;)V
    .registers 14
    .parameter "test"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 732
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 733
    .local v3, testClass:Ljava/lang/String;
    move-object v0, p1

    check-cast v0, Ljunit/framework/TestCase;

    move-object v6, v0

    invoke-virtual {v6}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v5

    .line 734
    .local v5, testName:Ljava/lang/String;
    new-instance v6, Landroid/os/Bundle;

    iget-object v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    invoke-direct {v6, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    .line 735
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v7, "class"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v7, "test"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v7, "current"

    iget v8, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 739
    if-eqz v3, :cond_c0

    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c0

    .line 740
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v7, "stream"

    const-string v8, "\n%s:"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iput-object v3, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    .line 747
    :goto_53
    const/4 v4, 0x0

    .line 749
    .local v4, testMethod:Ljava/lang/reflect/Method;
    :try_start_54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 751
    const-class v6, Landroid/test/RepetitiveTest;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 752
    const-class v6, Landroid/test/RepetitiveTest;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Landroid/test/RepetitiveTest;

    invoke-interface {v6}, Landroid/test/RepetitiveTest;->numIterations()I

    move-result v2

    .line 754
    .local v2, numIterations:I
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v7, "numiterations"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_7a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_54 .. :try_end_7a} :catch_102

    .line 767
    .end local v2           #numIterations:I
    :cond_7a
    :goto_7a
    :try_start_7a
    iget v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    if-ne v6, v11, :cond_88

    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    #getter for: Landroid/test/InstrumentationTestRunner;->mDelayMsec:I
    invoke-static {v6}, Landroid/test/InstrumentationTestRunner;->access$000(Landroid/test/InstrumentationTestRunner;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_88
    .catch Ljava/lang/InterruptedException; {:try_start_7a .. :try_end_88} :catch_ca

    .line 772
    :cond_88
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    iget-object v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v6, v11, v7}, Landroid/test/InstrumentationTestRunner;->sendStatus(ILandroid/os/Bundle;)V

    .line 773
    iput v10, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 775
    iput-boolean v10, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    .line 776
    iput-boolean v10, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z

    .line 779
    if-eqz v4, :cond_d2

    :try_start_97
    const-class v6, Landroid/test/TimedTest;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_d2

    .line 780
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    .line 781
    const-class v6, Landroid/test/TimedTest;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Landroid/test/TimedTest;

    invoke-interface {v6}, Landroid/test/TimedTest;->includeDetailedStats()Z

    move-result v6

    iput-boolean v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z
    :try_end_b0
    .catch Ljava/lang/SecurityException; {:try_start_97 .. :try_end_b0} :catch_f4

    .line 793
    :cond_b0
    :goto_b0
    iget-boolean v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    if-eqz v6, :cond_f6

    iget-boolean v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z

    if-eqz v6, :cond_f6

    .line 794
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/os/PerformanceCollector;->beginSnapshot(Ljava/lang/String;)V

    .line 798
    :cond_bf
    :goto_bf
    return-void

    .line 744
    .end local v4           #testMethod:Ljava/lang/reflect/Method;
    :cond_c0
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v7, "stream"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    .line 768
    .restart local v4       #testMethod:Ljava/lang/reflect/Method;
    :catch_ca
    move-exception v6

    move-object v1, v6

    .line 769
    .local v1, e:Ljava/lang/InterruptedException;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 783
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_d2
    :try_start_d2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Landroid/test/TimedTest;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 784
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    .line 785
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Landroid/test/TimedTest;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Landroid/test/TimedTest;

    invoke-interface {v6}, Landroid/test/TimedTest;->includeDetailedStats()Z

    move-result v6

    iput-boolean v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z
    :try_end_f3
    .catch Ljava/lang/SecurityException; {:try_start_d2 .. :try_end_f3} :catch_f4

    goto :goto_b0

    .line 788
    :catch_f4
    move-exception v6

    goto :goto_b0

    .line 795
    :cond_f6
    iget-boolean v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    if-eqz v6, :cond_bf

    .line 796
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/os/PerformanceCollector;->startTiming(Ljava/lang/String;)V

    goto :goto_bf

    .line 756
    :catch_102
    move-exception v6

    goto/16 :goto_7a
.end method

.method public writeBeginSnapshot(Ljava/lang/String;)V
    .registers 2
    .parameter "label"

    .prologue
    .line 848
    return-void
.end method

.method public writeEndSnapshot(Landroid/os/Bundle;)V
    .registers 3
    .parameter "results"

    .prologue
    .line 853
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    #getter for: Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/test/InstrumentationTestRunner;->access$100(Landroid/test/InstrumentationTestRunner;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 854
    return-void
.end method

.method public writeMeasurement(Ljava/lang/String;F)V
    .registers 4
    .parameter "label"
    .parameter "value"

    .prologue
    .line 883
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 884
    return-void
.end method

.method public writeMeasurement(Ljava/lang/String;J)V
    .registers 5
    .parameter "label"
    .parameter "value"

    .prologue
    .line 879
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 880
    return-void
.end method

.method public writeMeasurement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "label"
    .parameter "value"

    .prologue
    .line 887
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    return-void
.end method

.method public writeStartTiming(Ljava/lang/String;)V
    .registers 2
    .parameter "label"

    .prologue
    .line 858
    return-void
.end method

.method public writeStopTiming(Landroid/os/Bundle;)V
    .registers 12
    .parameter "results"

    .prologue
    .line 863
    const/4 v1, 0x0

    .line 865
    .local v1, i:I
    const-string v6, "iterations"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_92

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    .line 866
    .local v5, p:Landroid/os/Parcelable;
    move-object v0, v5

    check-cast v0, Landroid/os/Bundle;

    move-object v4, v0

    .line 867
    .local v4, iteration:Landroid/os/Bundle;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "iteration"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 868
    .local v3, index:Ljava/lang/String;
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "label"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "label"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "cpu_time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cpu_time"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 872
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "execution_time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "execution_time"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 874
    add-int/lit8 v1, v1, 0x1

    .line 875
    goto/16 :goto_b

    .line 876
    .end local v3           #index:Ljava/lang/String;
    .end local v4           #iteration:Landroid/os/Bundle;
    .end local v5           #p:Landroid/os/Parcelable;
    :cond_92
    return-void
.end method
