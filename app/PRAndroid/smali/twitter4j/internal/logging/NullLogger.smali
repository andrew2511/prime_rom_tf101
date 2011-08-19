.class final Ltwitter4j/internal/logging/NullLogger;
.super Ltwitter4j/internal/logging/Logger;
.source "NullLogger.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ltwitter4j/internal/logging/Logger;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 63
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "message2"

    .prologue
    .line 70
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 77
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "message2"

    .prologue
    .line 84
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 91
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "message2"

    .prologue
    .line 98
    return-void
.end method
