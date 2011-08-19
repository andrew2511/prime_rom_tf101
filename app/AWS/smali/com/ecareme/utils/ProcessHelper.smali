.class public Lcom/ecareme/utils/ProcessHelper;
.super Ljava/lang/Object;
.source "ProcessHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/utils/ProcessHelper$OutputThread;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/ecareme/utils/ProcessHelper;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/ecareme/utils/ProcessHelper;

    invoke-direct {v0}, Lcom/ecareme/utils/ProcessHelper;-><init>()V

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/String;)I
    .locals 2
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1, v0, v1}, Lcom/ecareme/utils/ProcessHelper;->run(Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public run(Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/OutputStream;)I
    .locals 6
    .parameter "cmd"
    .parameter "stdout"
    .parameter "stderr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 25
    .local v4, rt:Ljava/lang/Runtime;
    invoke-virtual {v4, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 26
    .local v3, p:Ljava/lang/Process;
    new-instance v2, Lcom/ecareme/utils/ProcessHelper$OutputThread;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5, p2}, Lcom/ecareme/utils/ProcessHelper$OutputThread;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 27
    .local v2, out:Lcom/ecareme/utils/ProcessHelper$OutputThread;
    invoke-virtual {v2}, Lcom/ecareme/utils/ProcessHelper$OutputThread;->start()V

    .line 28
    new-instance v1, Lcom/ecareme/utils/ProcessHelper$OutputThread;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5, p3}, Lcom/ecareme/utils/ProcessHelper$OutputThread;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 29
    .local v1, err:Lcom/ecareme/utils/ProcessHelper$OutputThread;
    invoke-virtual {v1}, Lcom/ecareme/utils/ProcessHelper$OutputThread;->start()V

    .line 32
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 34
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
