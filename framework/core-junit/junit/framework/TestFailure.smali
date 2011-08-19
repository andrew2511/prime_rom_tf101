.class public Ljunit/framework/TestFailure;
.super Ljava/lang/Object;
.source "TestFailure.java"


# instance fields
.field protected fFailedTest:Ljunit/framework/Test;

.field protected fThrownException:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "failedTest"
    .parameter "thrownException"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Ljunit/framework/TestFailure;->fFailedTest:Ljunit/framework/Test;

    .line 22
    iput-object p2, p0, Ljunit/framework/TestFailure;->fThrownException:Ljava/lang/Throwable;

    .line 23
    return-void
.end method


# virtual methods
.method public exceptionMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    invoke-virtual {p0}, Ljunit/framework/TestFailure;->thrownException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public failedTest()Ljunit/framework/Test;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Ljunit/framework/TestFailure;->fFailedTest:Ljunit/framework/Test;

    return-object v0
.end method

.method public isFailure()Z
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Ljunit/framework/TestFailure;->thrownException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljunit/framework/AssertionFailedError;

    return v0
.end method

.method public thrownException()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Ljunit/framework/TestFailure;->fThrownException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .local v0, buffer:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljunit/framework/TestFailure;->fFailedTest:Ljunit/framework/Test;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljunit/framework/TestFailure;->fThrownException:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trace()Ljava/lang/String;
    .registers 5

    .prologue
    .line 45
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 46
    .local v1, stringWriter:Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 47
    .local v2, writer:Ljava/io/PrintWriter;
    invoke-virtual {p0}, Ljunit/framework/TestFailure;->thrownException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 48
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 49
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
