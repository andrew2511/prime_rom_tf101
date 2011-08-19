.class public final Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$ClientReportRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;",
        "Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$ClientReportRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientId_:Ljava/lang/Object;

.field private clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22334
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 22430
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    .line 22473
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientId_:Ljava/lang/Object;

    .line 22335
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->maybeForceBuilderInitialization()V

    .line 22336
    return-void
.end method

.method static synthetic access$27600()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    .locals 1

    .prologue
    .line 22329
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    .locals 1

    .prologue
    .line 22341
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 22339
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22329
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;
    .locals 2

    .prologue
    .line 22362
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    move-result-object v0

    .line 22363
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22364
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 22366
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22329
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;
    .locals 5

    .prologue
    .line 22370
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 22371
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    .line 22372
    const/4 v2, 0x0

    .line 22373
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 22374
    or-int/lit8 v2, v2, 0x1

    .line 22376
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->access$27802(Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    .line 22377
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 22378
    or-int/lit8 v1, v2, 0x2

    .line 22380
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->access$27902(Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22381
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->access$28002(Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;I)I

    .line 22382
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 22329
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22329
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    .locals 1

    .prologue
    .line 22345
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 22346
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    .line 22347
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    .line 22348
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientId_:Ljava/lang/Object;

    .line 22349
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    .line 22350
    return-object p0
.end method

.method public clearClientId()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    .locals 1

    .prologue
    .line 22509
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    .line 22510
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientId_:Ljava/lang/Object;

    .line 22512
    return-object p0
.end method

.method public clearClientReport()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    .locals 1

    .prologue
    .line 22466
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    .line 22468
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    .line 22469
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 22329
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 22329
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22329
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    .locals 2

    .prologue
    .line 22354
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

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
    .line 22329
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22478
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientId_:Ljava/lang/Object;

    .line 22479
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 22480
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 22481
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientId_:Ljava/lang/Object;

    .line 22484
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getClientIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 22489
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientId_:Ljava/lang/Object;

    .line 22490
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22491
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22493
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientId_:Ljava/lang/Object;

    .line 22496
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getClientReport()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .locals 1

    .prologue
    .line 22435
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 22329
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22329
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;
    .locals 1

    .prologue
    .line 22358
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    move-result-object v0

    return-object v0
.end method

.method public hasClientId()Z
    .locals 2

    .prologue
    .line 22475
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

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

.method public hasClientReport()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 22432
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

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

    .line 22399
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->hasClientReport()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 22407
    :goto_0
    return v0

    .line 22403
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->getClientReport()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 22405
    goto :goto_0

    .line 22407
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeClientReport(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 22454
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 22456
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    invoke-static {v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->newBuilder(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    .line 22462
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    .line 22463
    return-object p0

    .line 22459
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

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
    .line 22329
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 22329
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

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
    .line 22329
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22414
    const/4 v1, 0x0

    .line 22416
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22421
    if-eqz v0, :cond_0

    .line 22422
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    .line 22425
    :cond_0
    return-object p0

    .line 22417
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 22418
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22419
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22421
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 22422
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    :cond_1
    throw v0

    .line 22421
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 22386
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 22395
    :goto_0
    return-object v0

    .line 22387
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->hasClientReport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22388
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->getClientReport()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->mergeClientReport(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    .line 22390
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->hasClientId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22391
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    .line 22392
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->access$27900(Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientId_:Ljava/lang/Object;

    :cond_2
    move-object v0, p0

    .line 22395
    goto :goto_0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 22500
    if-nez p1, :cond_0

    .line 22501
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22503
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    .line 22504
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientId_:Ljava/lang/Object;

    .line 22506
    return-object p0
.end method

.method public setClientIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 22516
    if-nez p1, :cond_0

    .line 22517
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22519
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    .line 22520
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientId_:Ljava/lang/Object;

    .line 22522
    return-object p0
.end method

.method public setClientReport(Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 22448
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    .line 22450
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    .line 22451
    return-object p0
.end method

.method public setClientReport(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 22438
    if-nez p1, :cond_0

    .line 22439
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22441
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    .line 22443
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->bitField0_:I

    .line 22444
    return-object p0
.end method
