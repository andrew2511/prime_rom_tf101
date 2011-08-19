.class public Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;
.super Ljava/io/FilterOutputStream;
.source "HttpMultipartEntityMonitored.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutputStreamMonitored"
.end annotation


# instance fields
.field private m_broadcast_count:J

.field private m_broadcast_trigger:J

.field private m_bytes_transferred:J

.field private m_length:J

.field private m_out:Ljava/io/OutputStream;

.field final synthetic this$0:Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;Ljava/io/OutputStream;J)V
    .locals 4
    .parameter
    .parameter "out"
    .parameter "length"

    .prologue
    const-wide/16 v0, 0x0

    .line 50
    iput-object p1, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;

    .line 44
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 109
    iput-wide v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_length:J

    .line 110
    iput-wide v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_bytes_transferred:J

    .line 111
    iput-wide v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_count:J

    .line 112
    iput-wide v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_trigger:J

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_out:Ljava/io/OutputStream;

    .line 46
    iput-object p2, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_out:Ljava/io/OutputStream;

    .line 47
    iput-wide p3, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_length:J

    .line 48
    iget-wide v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_length:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_trigger:J

    .line 49
    invoke-direct {p0}, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->BroadcastPercentUploaded()V

    return-void
.end method

.method private BroadcastPercentUploaded()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method private PercentUploaded()I
    .locals 4

    .prologue
    .line 106
    const-wide/high16 v0, 0x4059

    iget-wide v2, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_bytes_transferred:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_length:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public write(I)V
    .locals 6
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x1

    .line 73
    iget-object v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 74
    iget-wide v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_bytes_transferred:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_bytes_transferred:J

    .line 79
    iget-wide v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_count:J

    iget-wide v2, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_trigger:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 80
    iget-wide v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_count:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_count:J

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_count:J

    goto :goto_0
.end method

.method public write([BII)V
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 54
    iget-wide v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_bytes_transferred:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_bytes_transferred:J

    .line 59
    iget-wide v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_count:J

    iget-wide v2, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_trigger:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 60
    iget-wide v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_count:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_count:J

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_count:J

    goto :goto_0
.end method
