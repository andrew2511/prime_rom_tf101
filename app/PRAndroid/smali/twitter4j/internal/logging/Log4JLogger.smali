.class final Ltwitter4j/internal/logging/Log4JLogger;
.super Ltwitter4j/internal/logging/Logger;
.source "Log4JLogger.java"


# instance fields
.field private final LOGGER:Lorg/apache/log4j/Logger;


# direct methods
.method constructor <init>(Lorg/apache/log4j/Logger;)V
    .locals 0
    .parameter "logger"

    .prologue
    .line 36
    invoke-direct {p0}, Ltwitter4j/internal/logging/Logger;-><init>()V

    .line 37
    iput-object p1, p0, Ltwitter4j/internal/logging/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    .line 38
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 69
    iget-object v0, p0, Ltwitter4j/internal/logging/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .parameter "message2"

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/internal/logging/Log4JLogger;->debug(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 84
    iget-object v0, p0, Ltwitter4j/internal/logging/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .parameter "message2"

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/internal/logging/Log4JLogger;->info(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ltwitter4j/internal/logging/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ltwitter4j/internal/logging/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Ltwitter4j/internal/logging/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 100
    iget-object v0, p0, Ltwitter4j/internal/logging/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .parameter "message2"

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/internal/logging/Log4JLogger;->warn(Ljava/lang/String;)V

    .line 109
    return-void
.end method
