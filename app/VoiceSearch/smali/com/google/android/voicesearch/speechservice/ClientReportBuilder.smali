.class Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;
.super Ljava/lang/Object;
.source "ClientReportBuilder.java"


# instance fields
.field private mClientPerceivedRequestStatus:I

.field private mClientSideError:I

.field private mEndpointTriggerType:I

.field private mNetworkType:I

.field private mRequestAckLatencyMs:I

.field private mTotalLatencyMs:I

.field private final mTotalLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;

.field private mUserPerceivedLatencyMs:I

.field private final mUserPerceivedLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/android/voicesearch/speechservice/StopWatch;

    invoke-direct {v0}, Lcom/google/android/voicesearch/speechservice/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mTotalLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;

    .line 36
    new-instance v0, Lcom/google/android/voicesearch/speechservice/StopWatch;

    invoke-direct {v0}, Lcom/google/android/voicesearch/speechservice/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mUserPerceivedLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;

    .line 38
    iput v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mClientPerceivedRequestStatus:I

    .line 39
    iput v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mRequestAckLatencyMs:I

    .line 40
    iput v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mTotalLatencyMs:I

    .line 41
    iput v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mUserPerceivedLatencyMs:I

    .line 42
    iput v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mNetworkType:I

    .line 43
    iput v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mEndpointTriggerType:I

    .line 44
    iput v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mClientSideError:I

    .line 47
    return-void
.end method

.method private appendField(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 169
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    :cond_0
    return-void
.end method

.method private appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    if-eqz p3, :cond_0

    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized ackReceived()V
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mTotalLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/StopWatch;->getElapsedTime()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mRequestAckLatencyMs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createClientReportRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 54
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    .line 55
    iget v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mClientPerceivedRequestStatus:I

    if-eq v1, v3, :cond_0

    .line 56
    iget v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mClientPerceivedRequestStatus:I

    invoke-static {v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->valueOf(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setClientPerceivedRequestStatus(Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 59
    :cond_0
    iget v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mRequestAckLatencyMs:I

    if-eq v1, v3, :cond_1

    .line 60
    iget v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mRequestAckLatencyMs:I

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setRequestAckLatencyMs(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 62
    :cond_1
    iget v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mTotalLatencyMs:I

    if-eq v1, v3, :cond_2

    .line 63
    iget v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mTotalLatencyMs:I

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setTotalLatencyMs(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 65
    :cond_2
    iget v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mUserPerceivedLatencyMs:I

    if-eq v1, v3, :cond_3

    .line 66
    iget v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mUserPerceivedLatencyMs:I

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setUserPerceivedLatencyMs(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 68
    :cond_3
    iget v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mNetworkType:I

    if-eq v1, v3, :cond_4

    .line 69
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    move-result-object v1

    .line 70
    iget v2, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mNetworkType:I

    invoke-static {v2}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->valueOf(I)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->setNetworkType(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    .line 71
    sget-object v2, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->mobileInfo:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v1}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 73
    :cond_4
    iget v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mEndpointTriggerType:I

    if-eq v1, v3, :cond_5

    .line 74
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    move-result-object v1

    .line 75
    iget v2, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mEndpointTriggerType:I

    invoke-static {v2}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->valueOf(I)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->setEndpointTriggerType(Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    .line 77
    sget-object v2, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->audioInputInfo:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v1}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 79
    :cond_5
    iget v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mClientSideError:I

    if-eq v1, v3, :cond_6

    .line 80
    iget v1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mClientSideError:I

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setClientSideError(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 82
    :cond_6
    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeClientReportRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endOfSpeech()V
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mUserPerceivedLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/StopWatch;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized responseReceived()V
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mTotalLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/StopWatch;->getElapsedTime()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mTotalLatencyMs:I

    .line 113
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mUserPerceivedLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/StopWatch;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mUserPerceivedLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/StopWatch;->getElapsedTime()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mUserPerceivedLatencyMs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setClientSideError(I)V
    .locals 1
    .parameter

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mClientSideError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEndpointTriggerType(I)V
    .locals 1
    .parameter

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mEndpointTriggerType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNetworkType(I)V
    .locals 1
    .parameter

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mNetworkType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRequestStatus(I)V
    .locals 1
    .parameter

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mClientPerceivedRequestStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startRequest()V
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mTotalLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/StopWatch;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientReport{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    const-string v1, "session_id"

    invoke-virtual {p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "request_id"

    invoke-virtual {p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getRequestId()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 150
    const-string v1, "application_id"

    invoke-virtual {p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "client_perceived_request_status"

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mClientPerceivedRequestStatus:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 152
    const-string v1, "request_ack_latency_ms"

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mRequestAckLatencyMs:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 153
    const-string v1, "total_latency_ms"

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mTotalLatencyMs:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 154
    const-string v1, "user_perceived_latency_ms"

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mUserPerceivedLatencyMs:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 155
    const-string v1, "network_type"

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mNetworkType:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 156
    const-string v1, "endpoint_trigger_type"

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mEndpointTriggerType:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 157
    const-string v1, "client_side_error"

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->mClientSideError:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 158
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
