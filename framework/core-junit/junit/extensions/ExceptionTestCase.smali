.class public Ljunit/extensions/ExceptionTestCase;
.super Ljunit/framework/TestCase;
.source "ExceptionTestCase.java"


# instance fields
.field fExpected:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .parameter "name"
    .parameter "exception"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljunit/framework/TestCase;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p2, p0, Ljunit/extensions/ExceptionTestCase;->fExpected:Ljava/lang/Class;

    .line 29
    return-void
.end method


# virtual methods
.method protected runTest()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    :try_start_0
    invoke-super {p0}, Ljunit/framework/TestCase;->runTest()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_1c

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljunit/extensions/ExceptionTestCase;->fExpected:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/extensions/ExceptionTestCase;->fail(Ljava/lang/String;)V

    .line 45
    :cond_1b
    return-void

    .line 38
    :catch_1c
    move-exception v0

    .line 39
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Ljunit/extensions/ExceptionTestCase;->fExpected:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 42
    throw v0
.end method
