.class public final Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "QsbLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/QsbLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogEntry"
.end annotation


# instance fields
.field private cachedSize:I

.field private experiment_:Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;

.field private hasExperiment:Z

.field private hasLatency:Z

.field private hasRelativeTimestampMs:Z

.field private hasSearch:Z

.field private hasStart:Z

.field private hasSuggestion:Z

.field private hasVoiceSearch:Z

.field private latency_:Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

.field private relativeTimestampMs_:J

.field private search_:Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;

.field private start_:Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;

.field private suggestion_:Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

.field private voiceSearch_:Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1083
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1088
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->latency_:Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    .line 1108
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->start_:Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;

    .line 1128
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->search_:Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;

    .line 1148
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->suggestion_:Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    .line 1168
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->voiceSearch_:Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;

    .line 1188
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->experiment_:Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;

    .line 1208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->relativeTimestampMs_:J

    .line 1275
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->cachedSize:I

    .line 1083
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1277
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->cachedSize:I

    if-gez v0, :cond_0

    .line 1279
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getSerializedSize()I

    .line 1281
    :cond_0
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->cachedSize:I

    return v0
.end method

.method public getExperiment()Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->experiment_:Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;

    return-object v0
.end method

.method public getLatency()Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->latency_:Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    return-object v0
.end method

.method public getRelativeTimestampMs()J
    .locals 2

    .prologue
    .line 1209
    iget-wide v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->relativeTimestampMs_:J

    return-wide v0
.end method

.method public getSearch()Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->search_:Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1285
    const/4 v0, 0x0

    .line 1286
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasLatency()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1287
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getLatency()Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1290
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1291
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getStart()Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1294
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasSearch()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1295
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getSearch()Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1298
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasSuggestion()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1299
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getSuggestion()Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1302
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasVoiceSearch()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1303
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getVoiceSearch()Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1306
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasExperiment()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1307
    const/16 v1, 0x32

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getExperiment()Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1310
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasRelativeTimestampMs()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1311
    const/16 v1, 0x33

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getRelativeTimestampMs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1314
    :cond_6
    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->cachedSize:I

    .line 1315
    return v0
.end method

.method public getStart()Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->start_:Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;

    return-object v0
.end method

.method public getSuggestion()Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->suggestion_:Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    return-object v0
.end method

.method public getVoiceSearch()Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->voiceSearch_:Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;

    return-object v0
.end method

.method public hasExperiment()Z
    .locals 1

    .prologue
    .line 1189
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasExperiment:Z

    return v0
.end method

.method public hasLatency()Z
    .locals 1

    .prologue
    .line 1089
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasLatency:Z

    return v0
.end method

.method public hasRelativeTimestampMs()Z
    .locals 1

    .prologue
    .line 1210
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasRelativeTimestampMs:Z

    return v0
.end method

.method public hasSearch()Z
    .locals 1

    .prologue
    .line 1129
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasSearch:Z

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 1109
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasStart:Z

    return v0
.end method

.method public hasSuggestion()Z
    .locals 1

    .prologue
    .line 1149
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasSuggestion:Z

    return v0
.end method

.method public hasVoiceSearch()Z
    .locals 1

    .prologue
    .line 1169
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasVoiceSearch:Z

    return v0
.end method

.method public setExperiment(Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 1192
    if-nez p1, :cond_0

    .line 1193
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1195
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasExperiment:Z

    .line 1196
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->experiment_:Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;

    .line 1197
    return-object p0
.end method

.method public setLatency(Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 1092
    if-nez p1, :cond_0

    .line 1093
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1095
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasLatency:Z

    .line 1096
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->latency_:Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    .line 1097
    return-object p0
.end method

.method public setRelativeTimestampMs(J)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 1212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasRelativeTimestampMs:Z

    .line 1213
    iput-wide p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->relativeTimestampMs_:J

    .line 1214
    return-object p0
.end method

.method public setSearch(Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 1132
    if-nez p1, :cond_0

    .line 1133
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1135
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasSearch:Z

    .line 1136
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->search_:Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;

    .line 1137
    return-object p0
.end method

.method public setStart(Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 1112
    if-nez p1, :cond_0

    .line 1113
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1115
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasStart:Z

    .line 1116
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->start_:Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;

    .line 1117
    return-object p0
.end method

.method public setSuggestion(Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 1152
    if-nez p1, :cond_0

    .line 1153
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1155
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasSuggestion:Z

    .line 1156
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->suggestion_:Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    .line 1157
    return-object p0
.end method

.method public setVoiceSearch(Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 1172
    if-nez p1, :cond_0

    .line 1173
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1175
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasVoiceSearch:Z

    .line 1176
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->voiceSearch_:Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;

    .line 1177
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1252
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasLatency()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getLatency()Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1255
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1256
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getStart()Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1258
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasSearch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1259
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getSearch()Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1261
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasSuggestion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1262
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getSuggestion()Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1264
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasVoiceSearch()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1265
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getVoiceSearch()Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1267
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasExperiment()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1268
    const/16 v0, 0x32

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getExperiment()Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1270
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasRelativeTimestampMs()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1271
    const/16 v0, 0x33

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getRelativeTimestampMs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1273
    :cond_6
    return-void
.end method
