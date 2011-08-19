.class public Ljunit/extensions/TestDecorator;
.super Ljunit/framework/Assert;
.source "TestDecorator.java"

# interfaces
.implements Ljunit/framework/Test;


# instance fields
.field protected fTest:Ljunit/framework/Test;


# direct methods
.method public constructor <init>(Ljunit/framework/Test;)V
    .registers 2
    .parameter "test"

    .prologue
    .line 15
    invoke-direct {p0}, Ljunit/framework/Assert;-><init>()V

    .line 16
    iput-object p1, p0, Ljunit/extensions/TestDecorator;->fTest:Ljunit/framework/Test;

    .line 17
    return-void
.end method


# virtual methods
.method public basicRun(Ljunit/framework/TestResult;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 22
    iget-object v0, p0, Ljunit/extensions/TestDecorator;->fTest:Ljunit/framework/Test;

    invoke-interface {v0, p1}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    .line 23
    return-void
.end method

.method public countTestCases()I
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Ljunit/extensions/TestDecorator;->fTest:Ljunit/framework/Test;

    invoke-interface {v0}, Ljunit/framework/Test;->countTestCases()I

    move-result v0

    return v0
.end method

.method public getTest()Ljunit/framework/Test;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Ljunit/extensions/TestDecorator;->fTest:Ljunit/framework/Test;

    return-object v0
.end method

.method public run(Ljunit/framework/TestResult;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Ljunit/extensions/TestDecorator;->basicRun(Ljunit/framework/TestResult;)V

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Ljunit/extensions/TestDecorator;->fTest:Ljunit/framework/Test;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
