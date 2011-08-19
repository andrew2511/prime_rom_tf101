.class public Lcom/google/android/street/UsageReportRequest;
.super Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;
.source "UsageReportRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/street/UsageReportRequest$Counters;
    }
.end annotation


# instance fields
.field private final indoorCounters:Lcom/google/android/street/UsageReportRequest$Counters;

.field private final outdoorCounters:Lcom/google/android/street/UsageReportRequest$Counters;

.field private wasQueued:Z

.field private wasSent:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;-><init>()V

    .line 90
    iput-boolean v1, p0, Lcom/google/android/street/UsageReportRequest;->wasQueued:Z

    .line 91
    iput-boolean v1, p0, Lcom/google/android/street/UsageReportRequest;->wasSent:Z

    .line 92
    new-instance v0, Lcom/google/android/street/UsageReportRequest$Counters;

    invoke-direct {v0, v1}, Lcom/google/android/street/UsageReportRequest$Counters;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/street/UsageReportRequest;->outdoorCounters:Lcom/google/android/street/UsageReportRequest$Counters;

    .line 94
    new-instance v0, Lcom/google/android/street/UsageReportRequest$Counters;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/street/UsageReportRequest$Counters;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/street/UsageReportRequest;->indoorCounters:Lcom/google/android/street/UsageReportRequest$Counters;

    .line 99
    return-void
.end method


# virtual methods
.method public addCounts(IIII)Z
    .locals 7
    .parameter "sceneType"
    .parameter "panningCount"
    .parameter "zoomingCount"
    .parameter "navigationCount"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 132
    const/4 v3, 0x0

    .line 133
    .local v3, shouldEnqueue:Z
    const/4 v0, 0x0

    .line 135
    .local v0, becameImmediate:Z
    monitor-enter p0

    .line 136
    :try_start_0
    iget-boolean v4, p0, Lcom/google/android/street/UsageReportRequest;->wasSent:Z

    if-eqz v4, :cond_0

    .line 137
    monitor-exit p0

    move v4, v6

    .line 166
    :goto_0
    return v4

    .line 140
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/street/UsageReportRequest;->getCountersForSceneType(I)Lcom/google/android/street/UsageReportRequest$Counters;

    move-result-object v1

    .line 141
    .local v1, c:Lcom/google/android/street/UsageReportRequest$Counters;
    invoke-virtual {p0}, Lcom/google/android/street/UsageReportRequest;->isImmediate()Z

    move-result v4

    if-nez v4, :cond_4

    if-lez p4, :cond_4

    move v0, v5

    .line 142
    :goto_1
    iget v4, v1, Lcom/google/android/street/UsageReportRequest$Counters;->panningCount:I

    add-int/2addr v4, p2

    iput v4, v1, Lcom/google/android/street/UsageReportRequest$Counters;->panningCount:I

    .line 143
    iget v4, v1, Lcom/google/android/street/UsageReportRequest$Counters;->zoomingCount:I

    add-int/2addr v4, p3

    iput v4, v1, Lcom/google/android/street/UsageReportRequest$Counters;->zoomingCount:I

    .line 144
    iget v4, v1, Lcom/google/android/street/UsageReportRequest$Counters;->navigationCount:I

    add-int/2addr v4, p4

    iput v4, v1, Lcom/google/android/street/UsageReportRequest$Counters;->navigationCount:I

    .line 146
    iget-boolean v4, p0, Lcom/google/android/street/UsageReportRequest;->wasQueued:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/google/android/street/UsageReportRequest;->indoorCounters:Lcom/google/android/street/UsageReportRequest$Counters;

    invoke-virtual {v4}, Lcom/google/android/street/UsageReportRequest$Counters;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/street/UsageReportRequest;->outdoorCounters:Lcom/google/android/street/UsageReportRequest$Counters;

    invoke-virtual {v4}, Lcom/google/android/street/UsageReportRequest$Counters;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 148
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/street/UsageReportRequest;->wasQueued:Z

    .line 149
    const/4 v3, 0x1

    .line 151
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-static {}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->getInstance()Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v2

    .line 158
    .local v2, drd:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
    if-eqz v2, :cond_3

    .line 159
    if-eqz v3, :cond_5

    .line 160
    invoke-virtual {v2, p0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V

    :cond_3
    :goto_2
    move v4, v5

    .line 166
    goto :goto_0

    .end local v2           #drd:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
    :cond_4
    move v0, v6

    .line 141
    goto :goto_1

    .line 151
    .end local v1           #c:Lcom/google/android/street/UsageReportRequest$Counters;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 161
    .restart local v1       #c:Lcom/google/android/street/UsageReportRequest$Counters;
    .restart local v2       #drd:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
    :cond_5
    if-eqz v0, :cond_3

    .line 162
    invoke-virtual {v2}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->suspend()V

    .line 163
    invoke-virtual {v2}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->unsuspend()V

    goto :goto_2
.end method

.method getCountersForSceneType(I)Lcom/google/android/street/UsageReportRequest$Counters;
    .locals 1
    .parameter "sceneType"

    .prologue
    .line 171
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/street/UsageReportRequest;->indoorCounters:Lcom/google/android/street/UsageReportRequest$Counters;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/street/UsageReportRequest;->outdoorCounters:Lcom/google/android/street/UsageReportRequest$Counters;

    goto :goto_0
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 179
    const/16 v0, 0x2d

    return v0
.end method

.method public declared-synchronized isImmediate()Z
    .locals 1

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/street/UsageReportRequest;->outdoorCounters:Lcom/google/android/street/UsageReportRequest$Counters;

    iget v0, v0, Lcom/google/android/street/UsageReportRequest$Counters;->navigationCount:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/street/UsageReportRequest;->indoorCounters:Lcom/google/android/street/UsageReportRequest$Counters;

    iget v0, v0, Lcom/google/android/street/UsageReportRequest$Counters;->navigationCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .locals 1
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    sget-object v0, Lcom/google/mobile/googlenav/proto/GmmMessageTypes;->STREET_VIEW_REPORT_RESPONSE_PROTO:Lcom/google/mobile/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/mobile/common/io/protocol/ProtoBufUtil;->readProtoBufResponse(Lcom/google/mobile/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized writeRequestData(Ljava/io/DataOutput;)V
    .locals 2
    .parameter "dos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/street/UsageReportRequest;->wasSent:Z

    .line 199
    new-instance v0, Lcom/google/mobile/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/mobile/googlenav/proto/GmmMessageTypes;->STREET_VIEW_REPORT_PROTO:Lcom/google/mobile/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/mobile/common/io/protocol/ProtoBufType;)V

    .line 201
    .local v0, request:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    iget-object v1, p0, Lcom/google/android/street/UsageReportRequest;->outdoorCounters:Lcom/google/android/street/UsageReportRequest$Counters;

    invoke-virtual {v1, v0}, Lcom/google/android/street/UsageReportRequest$Counters;->addViewpointProto(Lcom/google/mobile/common/io/protocol/ProtoBuf;)V

    .line 202
    iget-object v1, p0, Lcom/google/android/street/UsageReportRequest;->indoorCounters:Lcom/google/android/street/UsageReportRequest$Counters;

    invoke-virtual {v1, v0}, Lcom/google/android/street/UsageReportRequest$Counters;->addViewpointProto(Lcom/google/mobile/common/io/protocol/ProtoBuf;)V

    .line 203
    check-cast p1, Ljava/io/OutputStream;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 198
    .end local v0           #request:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
