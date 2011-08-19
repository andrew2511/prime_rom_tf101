.class public final Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$CreateSessionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;",
        "Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$CreateSessionRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientExperimentConfigHash_:I

.field private clientId_:Ljava/lang/Object;

.field private cookie_:Ljava/lang/Object;

.field private inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

.field private locale_:Ljava/lang/Object;

.field private protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

.field private protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

.field private speculative_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11748
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11908
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clientId_:Ljava/lang/Object;

    .line 11961
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Protocol;->TCP_STUN:Lcom/google/protos/speech/service/SpeechService$Protocol;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

    .line 11985
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 12028
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->cookie_:Ljava/lang/Object;

    .line 12102
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->locale_:Ljava/lang/Object;

    .line 12155
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    .line 11749
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->maybeForceBuilderInitialization()V

    .line 11750
    return-void
.end method

.method static synthetic access$13200()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1

    .prologue
    .line 11743
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1

    .prologue
    .line 11755
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 11753
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11743
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
    .locals 2

    .prologue
    .line 11788
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v0

    .line 11789
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11790
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 11792
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11743
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
    .locals 5

    .prologue
    .line 11796
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 11797
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 11798
    const/4 v2, 0x0

    .line 11799
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 11800
    or-int/lit8 v2, v2, 0x1

    .line 11802
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clientId_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->access$13402(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11803
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 11804
    or-int/lit8 v2, v2, 0x2

    .line 11806
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->access$13502(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Lcom/google/protos/speech/service/SpeechService$Protocol;)Lcom/google/protos/speech/service/SpeechService$Protocol;

    .line 11807
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 11808
    or-int/lit8 v2, v2, 0x4

    .line 11810
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->access$13602(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 11811
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 11812
    or-int/lit8 v2, v2, 0x8

    .line 11814
    :cond_3
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->cookie_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->access$13702(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11815
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 11816
    or-int/lit8 v2, v2, 0x10

    .line 11818
    :cond_4
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->speculative_:Z

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->access$13802(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Z)Z

    .line 11819
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 11820
    or-int/lit8 v2, v2, 0x20

    .line 11822
    :cond_5
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->locale_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->access$13902(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11823
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 11824
    or-int/lit8 v2, v2, 0x40

    .line 11826
    :cond_6
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->access$14002(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    .line 11827
    and-int/lit16 v1, v1, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_7

    .line 11828
    or-int/lit16 v1, v2, 0x80

    .line 11830
    :goto_0
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clientExperimentConfigHash_:I

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->access$14102(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;I)I

    .line 11831
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->access$14202(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;I)I

    .line 11832
    return-object v0

    :cond_7
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 11743
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11743
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11759
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 11760
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clientId_:Ljava/lang/Object;

    .line 11761
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 11762
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Protocol;->TCP_STUN:Lcom/google/protos/speech/service/SpeechService$Protocol;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

    .line 11763
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 11764
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 11765
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 11766
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->cookie_:Ljava/lang/Object;

    .line 11767
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 11768
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->speculative_:Z

    .line 11769
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 11770
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->locale_:Ljava/lang/Object;

    .line 11771
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 11772
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    .line 11773
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 11774
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clientExperimentConfigHash_:I

    .line 11775
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 11776
    return-object p0
.end method

.method public clearClientExperimentConfigHash()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1

    .prologue
    .line 12212
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 12213
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clientExperimentConfigHash_:I

    .line 12215
    return-object p0
.end method

.method public clearClientId()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1

    .prologue
    .line 11944
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 11945
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clientId_:Ljava/lang/Object;

    .line 11947
    return-object p0
.end method

.method public clearCookie()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1

    .prologue
    .line 12064
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 12065
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getCookie()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->cookie_:Ljava/lang/Object;

    .line 12067
    return-object p0
.end method

.method public clearInputAudioParameters()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1

    .prologue
    .line 12021
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 12023
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 12024
    return-object p0
.end method

.method public clearLocale()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1

    .prologue
    .line 12138
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 12139
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->locale_:Ljava/lang/Object;

    .line 12141
    return-object p0
.end method

.method public clearProtocol()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1

    .prologue
    .line 11978
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 11979
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Protocol;->TCP_STUN:Lcom/google/protos/speech/service/SpeechService$Protocol;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

    .line 11981
    return-object p0
.end method

.method public clearProtocolFeatures()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1

    .prologue
    .line 12191
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    .line 12193
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 12194
    return-object p0
.end method

.method public clearSpeculative()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1

    .prologue
    .line 12095
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 12096
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->speculative_:Z

    .line 12098
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 11743
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 11743
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11743
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 2

    .prologue
    .line 11780
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

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
    .line 11743
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientExperimentConfigHash()I
    .locals 1

    .prologue
    .line 12203
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clientExperimentConfigHash_:I

    return v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11913
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clientId_:Ljava/lang/Object;

    .line 11914
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 11915
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11916
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clientId_:Ljava/lang/Object;

    .line 11919
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getClientIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 11924
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clientId_:Ljava/lang/Object;

    .line 11925
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11926
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11928
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clientId_:Ljava/lang/Object;

    .line 11931
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12033
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->cookie_:Ljava/lang/Object;

    .line 12034
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 12035
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 12036
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->cookie_:Ljava/lang/Object;

    .line 12039
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCookieBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 12044
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->cookie_:Ljava/lang/Object;

    .line 12045
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12046
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12048
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->cookie_:Ljava/lang/Object;

    .line 12051
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 11743
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11743
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
    .locals 1

    .prologue
    .line 11784
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInputAudioParameters()Lcom/google/protos/speech/service/SpeechService$AudioParameters;
    .locals 1

    .prologue
    .line 11990
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12107
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->locale_:Ljava/lang/Object;

    .line 12108
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 12109
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 12110
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->locale_:Ljava/lang/Object;

    .line 12113
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 12118
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->locale_:Ljava/lang/Object;

    .line 12119
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12120
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12122
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->locale_:Ljava/lang/Object;

    .line 12125
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getProtocol()Lcom/google/protos/speech/service/SpeechService$Protocol;
    .locals 1

    .prologue
    .line 11966
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

    return-object v0
.end method

.method public getProtocolFeatures()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .locals 1

    .prologue
    .line 12160
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    return-object v0
.end method

.method public getSpeculative()Z
    .locals 1

    .prologue
    .line 12086
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->speculative_:Z

    return v0
.end method

.method public hasClientExperimentConfigHash()Z
    .locals 2

    .prologue
    .line 12200
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientId()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11910
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCookie()Z
    .locals 2

    .prologue
    .line 12030
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

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

.method public hasInputAudioParameters()Z
    .locals 2

    .prologue
    .line 11987
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

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

.method public hasLocale()Z
    .locals 2

    .prologue
    .line 12104
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProtocol()Z
    .locals 2

    .prologue
    .line 11963
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

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

.method public hasProtocolFeatures()Z
    .locals 2

    .prologue
    .line 12157
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeculative()Z
    .locals 2

    .prologue
    .line 12083
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

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

    .line 11871
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->hasClientId()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 11885
    :goto_0
    return v0

    .line 11875
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->hasProtocol()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 11877
    goto :goto_0

    .line 11879
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->hasInputAudioParameters()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11880
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->getInputAudioParameters()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 11882
    goto :goto_0

    .line 11885
    :cond_2
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
    .line 11743
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11743
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

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
    .line 11743
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11892
    const/4 v1, 0x0

    .line 11894
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11899
    if-eqz v0, :cond_0

    .line 11900
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 11903
    :cond_0
    return-object p0

    .line 11895
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 11896
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11897
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11899
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 11900
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    :cond_1
    throw v0

    .line 11899
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11836
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 11867
    :goto_0
    return-object v0

    .line 11837
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->hasClientId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11838
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 11839
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->access$13400(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clientId_:Ljava/lang/Object;

    .line 11842
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->hasProtocol()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11843
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getProtocol()Lcom/google/protos/speech/service/SpeechService$Protocol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setProtocol(Lcom/google/protos/speech/service/SpeechService$Protocol;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 11845
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->hasInputAudioParameters()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11846
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getInputAudioParameters()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->mergeInputAudioParameters(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 11848
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->hasCookie()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11849
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 11850
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->access$13700(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->cookie_:Ljava/lang/Object;

    .line 11853
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->hasSpeculative()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11854
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getSpeculative()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setSpeculative(Z)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 11856
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->hasLocale()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11857
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 11858
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->access$13900(Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->locale_:Ljava/lang/Object;

    .line 11861
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->hasProtocolFeatures()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11862
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getProtocolFeatures()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->mergeProtocolFeatures(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 11864
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->hasClientExperimentConfigHash()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 11865
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->getClientExperimentConfigHash()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setClientExperimentConfigHash(I)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    :cond_8
    move-object v0, p0

    .line 11867
    goto :goto_0
.end method

.method public mergeInputAudioParameters(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 12009
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12011
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->newBuilder(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 12017
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 12018
    return-object p0

    .line 12014
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    goto :goto_0
.end method

.method public mergeProtocolFeatures(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 12179
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12181
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->newBuilder(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    .line 12187
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 12188
    return-object p0

    .line 12184
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    goto :goto_0
.end method

.method public setClientExperimentConfigHash(I)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12206
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 12207
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clientExperimentConfigHash_:I

    .line 12209
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11935
    if-nez p1, :cond_0

    .line 11936
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11938
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 11939
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clientId_:Ljava/lang/Object;

    .line 11941
    return-object p0
.end method

.method public setClientIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11951
    if-nez p1, :cond_0

    .line 11952
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11954
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 11955
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->clientId_:Ljava/lang/Object;

    .line 11957
    return-object p0
.end method

.method public setCookie(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12055
    if-nez p1, :cond_0

    .line 12056
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12058
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 12059
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->cookie_:Ljava/lang/Object;

    .line 12061
    return-object p0
.end method

.method public setCookieBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12071
    if-nez p1, :cond_0

    .line 12072
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12074
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 12075
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->cookie_:Ljava/lang/Object;

    .line 12077
    return-object p0
.end method

.method public setInputAudioParameters(Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12003
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->build()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 12005
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 12006
    return-object p0
.end method

.method public setInputAudioParameters(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11993
    if-nez p1, :cond_0

    .line 11994
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11996
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->inputAudioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 11998
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 11999
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12129
    if-nez p1, :cond_0

    .line 12130
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12132
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 12133
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->locale_:Ljava/lang/Object;

    .line 12135
    return-object p0
.end method

.method public setLocaleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12145
    if-nez p1, :cond_0

    .line 12146
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12148
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 12149
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->locale_:Ljava/lang/Object;

    .line 12151
    return-object p0
.end method

.method public setProtocol(Lcom/google/protos/speech/service/SpeechService$Protocol;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11969
    if-nez p1, :cond_0

    .line 11970
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11972
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 11973
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->protocol_:Lcom/google/protos/speech/service/SpeechService$Protocol;

    .line 11975
    return-object p0
.end method

.method public setProtocolFeatures(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12173
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    .line 12175
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 12176
    return-object p0
.end method

.method public setProtocolFeatures(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12163
    if-nez p1, :cond_0

    .line 12164
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12166
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->protocolFeatures_:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    .line 12168
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 12169
    return-object p0
.end method

.method public setSpeculative(Z)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 12089
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->bitField0_:I

    .line 12090
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->speculative_:Z

    .line 12092
    return-object p0
.end method
