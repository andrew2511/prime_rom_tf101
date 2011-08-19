.class public final Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;",
        "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEventOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private queueTime_:J

.field private requestId_:J

.field private timeMs_:I

.field private transmitTime_:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16024
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 16025
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->maybeForceBuilderInitialization()V

    .line 16026
    return-void
.end method

.method static synthetic access$17800()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
    .locals 1

    .prologue
    .line 16019
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->create()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
    .locals 1

    .prologue
    .line 16031
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 16029
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16019
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->build()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    .locals 2

    .prologue
    .line 16056
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v0

    .line 16057
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16058
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 16060
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16019
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    .locals 5

    .prologue
    .line 16064
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 16065
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    .line 16066
    const/4 v2, 0x0

    .line 16067
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 16068
    or-int/lit8 v2, v2, 0x1

    .line 16070
    :cond_0
    iget-wide v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->requestId_:J

    invoke-static {v0, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->access$18002(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;J)J

    .line 16071
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 16072
    or-int/lit8 v2, v2, 0x2

    .line 16074
    :cond_1
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->timeMs_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->access$18102(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;I)I

    .line 16075
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 16076
    or-int/lit8 v2, v2, 0x4

    .line 16078
    :cond_2
    iget-wide v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->queueTime_:J

    invoke-static {v0, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->access$18202(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;J)J

    .line 16079
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 16080
    or-int/lit8 v1, v2, 0x8

    .line 16082
    :goto_0
    iget-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->transmitTime_:J

    invoke-static {v0, v2, v3}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->access$18302(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;J)J

    .line 16083
    invoke-static {v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->access$18402(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;I)I

    .line 16084
    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 16019
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->clear()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16019
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->clear()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 16035
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16036
    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->requestId_:J

    .line 16037
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    .line 16038
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->timeMs_:I

    .line 16039
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    .line 16040
    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->queueTime_:J

    .line 16041
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    .line 16042
    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->transmitTime_:J

    .line 16043
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    .line 16044
    return-object p0
.end method

.method public clearQueueTime()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
    .locals 2

    .prologue
    .line 16192
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    .line 16193
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->queueTime_:J

    .line 16195
    return-object p0
.end method

.method public clearRequestId()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
    .locals 2

    .prologue
    .line 16150
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    .line 16151
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->requestId_:J

    .line 16153
    return-object p0
.end method

.method public clearTimeMs()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
    .locals 1

    .prologue
    .line 16171
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    .line 16172
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->timeMs_:I

    .line 16174
    return-object p0
.end method

.method public clearTransmitTime()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
    .locals 2

    .prologue
    .line 16213
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    .line 16214
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->transmitTime_:J

    .line 16216
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 16019
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 16019
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16019
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
    .locals 2

    .prologue
    .line 16048
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->create()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 16019
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 16019
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16019
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    .locals 1

    .prologue
    .line 16052
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v0

    return-object v0
.end method

.method public getQueueTime()J
    .locals 2

    .prologue
    .line 16183
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->queueTime_:J

    return-wide v0
.end method

.method public getRequestId()J
    .locals 2

    .prologue
    .line 16141
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->requestId_:J

    return-wide v0
.end method

.method public getTimeMs()I
    .locals 1

    .prologue
    .line 16162
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->timeMs_:I

    return v0
.end method

.method public getTransmitTime()J
    .locals 2

    .prologue
    .line 16204
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->transmitTime_:J

    return-wide v0
.end method

.method public hasQueueTime()Z
    .locals 2

    .prologue
    .line 16180
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestId()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16138
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeMs()Z
    .locals 2

    .prologue
    .line 16159
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransmitTime()Z
    .locals 2

    .prologue
    .line 16201
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16105
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->hasRequestId()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 16113
    :goto_0
    return v0

    .line 16109
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->hasTimeMs()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 16111
    goto :goto_0

    .line 16113
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16019
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16019
    check-cast p1, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16019
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16120
    const/4 v1, 0x0

    .line 16122
    :try_start_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16127
    if-eqz v0, :cond_0

    .line 16128
    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    .line 16131
    :cond_0
    return-object p0

    .line 16123
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 16124
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16125
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16127
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 16128
    invoke-virtual {p0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    :cond_1
    throw v0

    .line 16127
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
    .locals 2
    .parameter

    .prologue
    .line 16088
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 16101
    :goto_0
    return-object v0

    .line 16089
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16090
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->getRequestId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->setRequestId(J)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    .line 16092
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->hasTimeMs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16093
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->getTimeMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->setTimeMs(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    .line 16095
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->hasQueueTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16096
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->getQueueTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->setQueueTime(J)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    .line 16098
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->hasTransmitTime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16099
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->getTransmitTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->setTransmitTime(J)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    :cond_4
    move-object v0, p0

    .line 16101
    goto :goto_0
.end method

.method public setQueueTime(J)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16186
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    .line 16187
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->queueTime_:J

    .line 16189
    return-object p0
.end method

.method public setRequestId(J)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16144
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    .line 16145
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->requestId_:J

    .line 16147
    return-object p0
.end method

.method public setTimeMs(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16165
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    .line 16166
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->timeMs_:I

    .line 16168
    return-object p0
.end method

.method public setTransmitTime(J)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16207
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->bitField0_:I

    .line 16208
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->transmitTime_:J

    .line 16210
    return-object p0
.end method
