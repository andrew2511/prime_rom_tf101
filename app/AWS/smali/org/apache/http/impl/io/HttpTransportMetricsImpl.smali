.class public Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
.super Ljava/lang/Object;
.source "HttpTransportMetricsImpl.java"

# interfaces
.implements Lorg/apache/http/io/HttpTransportMetrics;


# instance fields
.field private bytesTransferred:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    .line 47
    return-void
.end method


# virtual methods
.method public getBytesTransferred()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    return-wide v0
.end method

.method public incrementBytesTransferred(J)V
    .locals 2
    .parameter "count"

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    .line 59
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    .line 63
    return-void
.end method

.method public setBytesTransferred(J)V
    .locals 0
    .parameter "count"

    .prologue
    .line 54
    iput-wide p1, p0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    .line 55
    return-void
.end method
