.class Ltwitter4j/internal/async/ExecuteThread;
.super Ljava/lang/Thread;
.source "DispatcherImpl.java"


# instance fields
.field private alive:Z

.field q:Ltwitter4j/internal/async/DispatcherImpl;


# direct methods
.method constructor <init>(Ljava/lang/String;Ltwitter4j/internal/async/DispatcherImpl;I)V
    .locals 2
    .parameter "name"
    .parameter "q"
    .parameter "index"

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltwitter4j/internal/async/ExecuteThread;->alive:Z

    .line 105
    iput-object p2, p0, Ltwitter4j/internal/async/ExecuteThread;->q:Ltwitter4j/internal/async/DispatcherImpl;

    .line 106
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 114
    :cond_0
    :goto_0
    iget-boolean v2, p0, Ltwitter4j/internal/async/ExecuteThread;->alive:Z

    if-eqz v2, :cond_1

    .line 115
    iget-object v2, p0, Ltwitter4j/internal/async/ExecuteThread;->q:Ltwitter4j/internal/async/DispatcherImpl;

    invoke-virtual {v2}, Ltwitter4j/internal/async/DispatcherImpl;->poll()Ljava/lang/Runnable;

    move-result-object v1

    .line 116
    .local v1, task:Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 118
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #task:Ljava/lang/Runnable;
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/internal/async/ExecuteThread;->alive:Z

    .line 110
    return-void
.end method
