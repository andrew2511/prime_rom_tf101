.class final Ltwitter4j/internal/logging/SLF4JLoggerFactory;
.super Ltwitter4j/internal/logging/LoggerFactory;
.source "SLF4JLoggerFactory.java"


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
    new-instance v0, Ltwitter4j/internal/logging/SLF4JLogger;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/internal/logging/SLF4JLogger;-><init>(Lorg/slf4j/Logger;)V

    return-object v0
.end method
