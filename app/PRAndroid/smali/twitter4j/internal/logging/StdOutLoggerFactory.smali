.class final Ltwitter4j/internal/logging/StdOutLoggerFactory;
.super Ltwitter4j/internal/logging/LoggerFactory;
.source "StdOutLoggerFactory.java"


# static fields
.field private static final SINGLETON:Ltwitter4j/internal/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ltwitter4j/internal/logging/StdOutLogger;

    invoke-direct {v0}, Ltwitter4j/internal/logging/StdOutLogger;-><init>()V

    sput-object v0, Ltwitter4j/internal/logging/StdOutLoggerFactory;->SINGLETON:Ltwitter4j/internal/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ltwitter4j/internal/logging/LoggerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;
    .locals 1
    .parameter "clazz"

    .prologue
    .line 41
    sget-object v0, Ltwitter4j/internal/logging/StdOutLoggerFactory;->SINGLETON:Ltwitter4j/internal/logging/Logger;

    return-object v0
.end method
