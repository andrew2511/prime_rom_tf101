.class final Ltwitter4j/internal/logging/CommonsLoggingLoggerFactory;
.super Ltwitter4j/internal/logging/LoggerFactory;
.source "CommonsLoggingLoggerFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ltwitter4j/internal/logging/LoggerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;
    .locals 2
    .parameter "clazz"

    .prologue
    .line 40
    new-instance v0, Ltwitter4j/internal/logging/CommonsLoggingLogger;

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/internal/logging/CommonsLoggingLogger;-><init>(Lorg/apache/commons/logging/Log;)V

    return-object v0
.end method
