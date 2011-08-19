.class public final Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$CreateSessionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;",
        "Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$CreateSessionResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientExperimentConfigHash_:I

.field private clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

.field private serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

.field private stunId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12563
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 12675
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    .line 12718
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->stunId_:Ljava/lang/Object;

    .line 12771
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    .line 12564
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->maybeForceBuilderInitialization()V

    .line 12565
    return-void
.end method

.method static synthetic access$14400()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1

    .prologue
    .line 12558
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1

    .prologue
    .line 12570
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 12568
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12558
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->build()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .locals 2

    .prologue
    .line 12595
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v0

    .line 12596
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12597
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 12599
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12558
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .locals 5

    .prologue
    .line 12603
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 12604
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12605
    const/4 v2, 0x0

    .line 12606
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 12607
    or-int/lit8 v2, v2, 0x1

    .line 12609
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->access$14602(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    .line 12610
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 12611
    or-int/lit8 v2, v2, 0x2

    .line 12613
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->stunId_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->access$14702(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12614
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 12615
    or-int/lit8 v2, v2, 0x4

    .line 12617
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->access$14802(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    .line 12618
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 12619
    or-int/lit8 v1, v2, 0x8

    .line 12621
    :goto_0
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfigHash_:I

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->access$14902(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;I)I

    .line 12622
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->access$15002(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;I)I

    .line 12623
    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 12558
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12558
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1

    .prologue
    .line 12574
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 12575
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    .line 12576
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12577
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->stunId_:Ljava/lang/Object;

    .line 12578
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12579
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    .line 12580
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12581
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfigHash_:I

    .line 12582
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12583
    return-object p0
.end method

.method public clearClientExperimentConfig()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1

    .prologue
    .line 12807
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    .line 12809
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12810
    return-object p0
.end method

.method public clearClientExperimentConfigHash()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1

    .prologue
    .line 12828
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12829
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfigHash_:I

    .line 12831
    return-object p0
.end method

.method public clearServerAddress()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1

    .prologue
    .line 12711
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    .line 12713
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12714
    return-object p0
.end method

.method public clearStunId()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1

    .prologue
    .line 12754
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12755
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getStunId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->stunId_:Ljava/lang/Object;

    .line 12757
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 12558
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 12558
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12558
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 2

    .prologue
    .line 12587
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

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
    .line 12558
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientExperimentConfig()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .locals 1

    .prologue
    .line 12776
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    return-object v0
.end method

.method public getClientExperimentConfigHash()I
    .locals 1

    .prologue
    .line 12819
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfigHash_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 12558
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12558
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .locals 1

    .prologue
    .line 12591
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getServerAddress()Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 1

    .prologue
    .line 12680
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object v0
.end method

.method public getStunId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12723
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->stunId_:Ljava/lang/Object;

    .line 12724
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 12725
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 12726
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->stunId_:Ljava/lang/Object;

    .line 12729
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getStunIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 12734
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->stunId_:Ljava/lang/Object;

    .line 12735
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12736
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12738
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->stunId_:Ljava/lang/Object;

    .line 12741
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasClientExperimentConfig()Z
    .locals 2

    .prologue
    .line 12773
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

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

.method public hasClientExperimentConfigHash()Z
    .locals 2

    .prologue
    .line 12816
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

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

.method public hasServerAddress()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 12677
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStunId()Z
    .locals 2

    .prologue
    .line 12720
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 12646
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->hasServerAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12647
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->getServerAddress()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12649
    const/4 v0, 0x0

    .line 12652
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeClientExperimentConfig(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 2
    .parameter

    .prologue
    .line 12795
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12797
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    invoke-static {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->newBuilder(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->buildPartial()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    .line 12803
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12804
    return-object p0

    .line 12800
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

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
    .line 12558
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12558
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

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
    .line 12558
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12659
    const/4 v1, 0x0

    .line 12661
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12666
    if-eqz v0, :cond_0

    .line 12667
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    .line 12670
    :cond_0
    return-object p0

    .line 12662
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 12663
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12664
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12666
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 12667
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    :cond_1
    throw v0

    .line 12666
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12627
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 12642
    :goto_0
    return-object v0

    .line 12628
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->hasServerAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12629
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getServerAddress()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->mergeServerAddress(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    .line 12631
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->hasStunId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12632
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12633
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->access$14700(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->stunId_:Ljava/lang/Object;

    .line 12636
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->hasClientExperimentConfig()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12637
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getClientExperimentConfig()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->mergeClientExperimentConfig(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    .line 12639
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->hasClientExperimentConfigHash()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12640
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getClientExperimentConfigHash()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->setClientExperimentConfigHash(I)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    :cond_4
    move-object v0, p0

    .line 12642
    goto :goto_0
.end method

.method public mergeServerAddress(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 2
    .parameter

    .prologue
    .line 12699
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12701
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->newBuilder(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    .line 12707
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12708
    return-object p0

    .line 12704
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    goto :goto_0
.end method

.method public setClientExperimentConfig(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12789
    invoke-virtual {p1}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->build()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    .line 12791
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12792
    return-object p0
.end method

.method public setClientExperimentConfig(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12779
    if-nez p1, :cond_0

    .line 12780
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12782
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    .line 12784
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12785
    return-object p0
.end method

.method public setClientExperimentConfigHash(I)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12822
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12823
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfigHash_:I

    .line 12825
    return-object p0
.end method

.method public setServerAddress(Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12693
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->build()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    .line 12695
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12696
    return-object p0
.end method

.method public setServerAddress(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12683
    if-nez p1, :cond_0

    .line 12684
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12686
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    .line 12688
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12689
    return-object p0
.end method

.method public setStunId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12745
    if-nez p1, :cond_0

    .line 12746
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12748
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12749
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->stunId_:Ljava/lang/Object;

    .line 12751
    return-object p0
.end method

.method public setStunIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12761
    if-nez p1, :cond_0

    .line 12762
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12764
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12765
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->stunId_:Ljava/lang/Object;

    .line 12767
    return-object p0
.end method
