.class public Ljunit/extensions/TestSetup;
.super Ljunit/extensions/TestDecorator;
.source "TestSetup.java"


# direct methods
.method public constructor <init>(Ljunit/framework/Test;)V
    .registers 2
    .parameter "test"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljunit/extensions/TestDecorator;-><init>(Ljunit/framework/Test;)V

    .line 14
    return-void
.end method


# virtual methods
.method public run(Ljunit/framework/TestResult;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 16
    new-instance v0, Ljunit/extensions/TestSetup$1;

    invoke-direct {v0, p0, p1}, Ljunit/extensions/TestSetup$1;-><init>(Ljunit/extensions/TestSetup;Ljunit/framework/TestResult;)V

    .line 23
    .local v0, p:Ljunit/framework/Protectable;
    invoke-virtual {p1, p0, v0}, Ljunit/framework/TestResult;->runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V

    .line 24
    return-void
.end method

.method protected setUp()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    return-void
.end method

.method protected tearDown()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    return-void
.end method
