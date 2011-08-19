.class public final Lorg/apache/harmony/luni/util/SneakyThrow;
.super Ljava/lang/Object;
.source "SneakyThrow.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sneakyThrow(Ljava/lang/Throwable;)V
    .registers 1
    .parameter "t"

    .prologue
    .line 59
    invoke-static {p0}, Lorg/apache/harmony/luni/util/SneakyThrow;->sneakyThrow2(Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method private static sneakyThrow2(Ljava/lang/Throwable;)V
    .registers 1
    .parameter "t"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 68
    throw p0
.end method
