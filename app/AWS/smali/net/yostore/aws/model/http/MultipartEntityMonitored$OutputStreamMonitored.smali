.class public Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;
.super Ljava/io/FilterOutputStream;
.source "MultipartEntityMonitored.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/model/http/MultipartEntityMonitored;
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

.field final synthetic this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/model/http/MultipartEntityMonitored;Ljava/io/OutputStream;J)V
    .locals 4
    .parameter
    .parameter "out"
    .parameter "length"

    .prologue
    const-wide/16 v0, 0x0

    .line 55
    iput-object p1, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    .line 49
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 136
    iput-wide v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_length:J

    .line 137
    iput-wide v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_bytes_transferred:J

    .line 138
    iput-wide v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_count:J

    .line 139
    iput-wide v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_trigger:J

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_out:Ljava/io/OutputStream;

    .line 51
    iput-object p2, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_out:Ljava/io/OutputStream;

    .line 52
    iput-wide p3, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_length:J

    .line 53
    iget-wide v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_length:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_trigger:J

    .line 54
    invoke-direct {p0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->BroadcastPercentUploaded()V

    return-void
.end method

.method private BroadcastPercentUploaded()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$1(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v1}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$5(Lnet/yostore/aws/model/http/MultipartEntityMonitored;Landroid/content/Intent;)V

    .line 122
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$1(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "net.yostore.aws.service.UploadPercentUpdate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$1(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "percent"

    invoke-direct {p0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->PercentUploaded()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$1(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "upid"

    iget-object v2, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v2}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$0(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 126
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$2(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$2(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v1}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$1(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_count:J

    .line 130
    return-void
.end method

.method private PercentUploaded()I
    .locals 4

    .prologue
    .line 133
    const-wide/high16 v0, 0x4059

    iget-wide v2, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_bytes_transferred:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_length:J

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

    .line 100
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 101
    iget-wide v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_bytes_transferred:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_bytes_transferred:J

    .line 106
    iget-wide v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_count:J

    iget-wide v2, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_trigger:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 107
    iget-wide v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_count:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_count:J

    .line 117
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$1(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "percent"

    invoke-direct {p0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->PercentUploaded()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$1(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "upid"

    iget-object v2, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v2}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$0(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$2(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$2(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v1}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$1(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_count:J

    goto :goto_0
.end method

.method public write([BII)V
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 58
    sget-object v0, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    if-eqz v0, :cond_3

    sget-object v0, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    iget-wide v0, v0, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    iget-object v2, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v2}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$0(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 59
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 60
    iget-wide v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_bytes_transferred:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_bytes_transferred:J

    .line 65
    iget-wide v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_count:J

    iget-wide v2, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_trigger:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 66
    iget-wide v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_count:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_count:J

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$1(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "percent"

    invoke-direct {p0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->PercentUploaded()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$1(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "upid"

    iget-object v2, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v2}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$0(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$2(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$2(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v1}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$1(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 74
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_broadcast_count:J

    goto :goto_0

    .line 76
    :cond_3
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$3(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 78
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 79
    iput-object v4, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->m_out:Ljava/io/OutputStream;

    .line 81
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0, v4}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$4(Lnet/yostore/aws/model/http/MultipartEntityMonitored;Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;)V

    .line 82
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$1(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "percent"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$1(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "upid"

    iget-object v2, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v2}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$0(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 84
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$2(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$2(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-static {v1}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->access$1(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 89
    :cond_4
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;->this$0:Lnet/yostore/aws/model/http/MultipartEntityMonitored;

    invoke-virtual {v0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->cancelUpload()V
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 91
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
