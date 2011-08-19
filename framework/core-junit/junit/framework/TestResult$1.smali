.class Ljunit/framework/TestResult$1;
.super Ljava/lang/Object;
.source "TestResult.java"

# interfaces
.implements Ljunit/framework/Protectable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljunit/framework/TestResult;->run(Ljunit/framework/TestCase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljunit/framework/TestResult;

.field final synthetic val$test:Ljunit/framework/TestCase;


# direct methods
.method constructor <init>(Ljunit/framework/TestResult;Ljunit/framework/TestCase;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Ljunit/framework/TestResult$1;->this$0:Ljunit/framework/TestResult;

    iput-object p2, p0, Ljunit/framework/TestResult$1;->val$test:Ljunit/framework/TestCase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public protect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Ljunit/framework/TestResult$1;->val$test:Ljunit/framework/TestCase;

    invoke-virtual {v0}, Ljunit/framework/TestCase;->runBare()V

    .line 107
    return-void
.end method
