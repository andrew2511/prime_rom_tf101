.class Ljunit/extensions/ActiveTestSuite$1;
.super Ljava/lang/Thread;
.source "ActiveTestSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljunit/extensions/ActiveTestSuite;->runTest(Ljunit/framework/Test;Ljunit/framework/TestResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljunit/extensions/ActiveTestSuite;

.field final synthetic val$result:Ljunit/framework/TestResult;

.field final synthetic val$test:Ljunit/framework/Test;


# direct methods
.method constructor <init>(Ljunit/extensions/ActiveTestSuite;Ljunit/framework/Test;Ljunit/framework/TestResult;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Ljunit/extensions/ActiveTestSuite$1;->this$0:Ljunit/extensions/ActiveTestSuite;

    iput-object p2, p0, Ljunit/extensions/ActiveTestSuite$1;->val$test:Ljunit/framework/Test;

    iput-object p3, p0, Ljunit/extensions/ActiveTestSuite$1;->val$result:Ljunit/framework/TestResult;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Ljunit/extensions/ActiveTestSuite$1;->val$test:Ljunit/framework/Test;

    iget-object v1, p0, Ljunit/extensions/ActiveTestSuite$1;->val$result:Ljunit/framework/TestResult;

    invoke-interface {v0, v1}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_f

    .line 43
    iget-object v0, p0, Ljunit/extensions/ActiveTestSuite$1;->this$0:Ljunit/extensions/ActiveTestSuite;

    iget-object v1, p0, Ljunit/extensions/ActiveTestSuite$1;->val$test:Ljunit/framework/Test;

    invoke-virtual {v0, v1}, Ljunit/extensions/ActiveTestSuite;->runFinished(Ljunit/framework/Test;)V

    .line 45
    return-void

    .line 43
    :catchall_f
    move-exception v0

    iget-object v1, p0, Ljunit/extensions/ActiveTestSuite$1;->this$0:Ljunit/extensions/ActiveTestSuite;

    iget-object v2, p0, Ljunit/extensions/ActiveTestSuite$1;->val$test:Ljunit/framework/Test;

    invoke-virtual {v1, v2}, Ljunit/extensions/ActiveTestSuite;->runFinished(Ljunit/framework/Test;)V

    throw v0
.end method
