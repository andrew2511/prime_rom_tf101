.class public final Ldalvik/system/SamplingProfiler$MalformedHprofException;
.super Ljava/io/IOException;
.source "SamplingProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/SamplingProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MalformedHprofException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 1274
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1275
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ldalvik/system/SamplingProfiler$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1272
    invoke-direct {p0, p1}, Ldalvik/system/SamplingProfiler$MalformedHprofException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 1277
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1278
    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "cause"

    .prologue
    .line 1280
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 1281
    return-void
.end method
