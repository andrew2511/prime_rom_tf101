.class Landroid/test/NoExecTestResult;
.super Ljunit/framework/TestResult;
.source "NoExecTestResult.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljunit/framework/TestResult;-><init>()V

    return-void
.end method


# virtual methods
.method protected run(Ljunit/framework/TestCase;)V
    .registers 2
    .parameter "test"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Landroid/test/NoExecTestResult;->startTest(Ljunit/framework/Test;)V

    .line 36
    invoke-virtual {p0, p1}, Landroid/test/NoExecTestResult;->endTest(Ljunit/framework/Test;)V

    .line 37
    return-void
.end method
