.class public abstract Lcom/google/android/youtube/googlemobile/debug/SimpleLogger;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/debug/Logger;


# instance fields
.field private activationLevel:I

.field private buffer:Ljava/lang/StringBuffer;

.field private final logThreads:Z

.field private final logTime:Z

.field private final startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/debug/Log;->parseLogLevel(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/googlemobile/debug/SimpleLogger;->activationLevel:I

    invoke-static {}, Lcom/google/android/youtube/googlemobile/debug/Log;->logThreads()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/debug/SimpleLogger;->logThreads:Z

    invoke-static {}, Lcom/google/android/youtube/googlemobile/debug/Log;->logTime()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/debug/SimpleLogger;->logTime:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/debug/SimpleLogger;->startTime:J

    return-void
.end method


# virtual methods
.method public abstract log(Ljava/lang/String;)V
.end method

.method public logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 4

    iget v0, p0, Lcom/google/android/youtube/googlemobile/debug/SimpleLogger;->activationLevel:I

    if-gt v0, p3, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p3}, Lcom/google/android/youtube/googlemobile/debug/Log;->getLevelName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ":EXCEPTION]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/googlemobile/debug/SimpleLogger;->log(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
