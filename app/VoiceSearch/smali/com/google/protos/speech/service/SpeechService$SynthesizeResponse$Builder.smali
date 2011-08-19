.class public final Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SynthesizeResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;",
        "Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$SynthesizeResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private applicationErrorCode_:I

.field private audioEncoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

.field private audioRate_:I

.field private bitField0_:I

.field private response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

.field private status_:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19825
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 19944
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->SYNTHESIS_SUCCESS:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    .line 19968
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 20032
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->ULAW:Lcom/google/protos/speech/service/SpeechService$Encoding;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->audioEncoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 19826
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->maybeForceBuilderInitialization()V

    .line 19827
    return-void
.end method

.method static synthetic access$24000()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 1

    .prologue
    .line 19820
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 1

    .prologue
    .line 19832
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 19830
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19820
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->build()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;
    .locals 2

    .prologue
    .line 19859
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;

    move-result-object v0

    .line 19860
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 19861
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 19863
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19820
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;
    .locals 5

    .prologue
    .line 19867
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 19868
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    .line 19869
    const/4 v2, 0x0

    .line 19870
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 19871
    or-int/lit8 v2, v2, 0x1

    .line 19873
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->access$24202(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;)Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    .line 19874
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 19875
    or-int/lit8 v2, v2, 0x2

    .line 19877
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->access$24302(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 19878
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 19879
    or-int/lit8 v2, v2, 0x4

    .line 19881
    :cond_2
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->applicationErrorCode_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->access$24402(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;I)I

    .line 19882
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 19883
    or-int/lit8 v2, v2, 0x8

    .line 19885
    :cond_3
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->audioEncoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->access$24502(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;Lcom/google/protos/speech/service/SpeechService$Encoding;)Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 19886
    and-int/lit8 v1, v1, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_4

    .line 19887
    or-int/lit8 v1, v2, 0x10

    .line 19889
    :goto_0
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->audioRate_:I

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->access$24602(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;I)I

    .line 19890
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->access$24702(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;I)I

    .line 19891
    return-object v0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 19820
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 19820
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19836
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 19837
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->SYNTHESIS_SUCCESS:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    .line 19838
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    .line 19839
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 19840
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    .line 19841
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->applicationErrorCode_:I

    .line 19842
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    .line 19843
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->ULAW:Lcom/google/protos/speech/service/SpeechService$Encoding;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->audioEncoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 19844
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    .line 19845
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->audioRate_:I

    .line 19846
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    .line 19847
    return-object p0
.end method

.method public clearApplicationErrorCode()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 1

    .prologue
    .line 20025
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    .line 20026
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->applicationErrorCode_:I

    .line 20028
    return-object p0
.end method

.method public clearAudioEncoding()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 1

    .prologue
    .line 20049
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    .line 20050
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->ULAW:Lcom/google/protos/speech/service/SpeechService$Encoding;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->audioEncoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 20052
    return-object p0
.end method

.method public clearAudioRate()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 1

    .prologue
    .line 20070
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    .line 20071
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->audioRate_:I

    .line 20073
    return-object p0
.end method

.method public clearResponse()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 1

    .prologue
    .line 20004
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 20006
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    .line 20007
    return-object p0
.end method

.method public clearStatus()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 1

    .prologue
    .line 19961
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    .line 19962
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->SYNTHESIS_SUCCESS:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    .line 19964
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 19820
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 19820
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 19820
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 2

    .prologue
    .line 19851
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

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
    .line 19820
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationErrorCode()I
    .locals 1

    .prologue
    .line 20016
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->applicationErrorCode_:I

    return v0
.end method

.method public getAudioEncoding()Lcom/google/protos/speech/service/SpeechService$Encoding;
    .locals 1

    .prologue
    .line 20037
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->audioEncoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    return-object v0
.end method

.method public getAudioRate()I
    .locals 1

    .prologue
    .line 20061
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->audioRate_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 19820
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19820
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;
    .locals 1

    .prologue
    .line 19855
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 1

    .prologue
    .line 19973
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object v0
.end method

.method public getStatus()Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;
    .locals 1

    .prologue
    .line 19949
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    return-object v0
.end method

.method public hasApplicationErrorCode()Z
    .locals 2

    .prologue
    .line 20013
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

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

.method public hasAudioEncoding()Z
    .locals 2

    .prologue
    .line 20034
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

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

.method public hasAudioRate()Z
    .locals 2

    .prologue
    .line 20058
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

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

.method public hasResponse()Z
    .locals 2

    .prologue
    .line 19970
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 19946
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

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
    .locals 1

    .prologue
    .line 19915
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19916
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19918
    const/4 v0, 0x0

    .line 19921
    :goto_0
    return v0

    :cond_0
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
    .line 19820
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 19820
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

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
    .line 19820
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19928
    const/4 v1, 0x0

    .line 19930
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19935
    if-eqz v0, :cond_0

    .line 19936
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    .line 19939
    :cond_0
    return-object p0

    .line 19931
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 19932
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19933
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19935
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 19936
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    :cond_1
    throw v0

    .line 19935
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 19895
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 19911
    :goto_0
    return-object v0

    .line 19896
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19897
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->getStatus()Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->setStatus(Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    .line 19899
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19900
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->mergeResponse(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    .line 19902
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->hasApplicationErrorCode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19903
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->getApplicationErrorCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->setApplicationErrorCode(I)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    .line 19905
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->hasAudioEncoding()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19906
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->getAudioEncoding()Lcom/google/protos/speech/service/SpeechService$Encoding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->setAudioEncoding(Lcom/google/protos/speech/service/SpeechService$Encoding;)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    .line 19908
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->hasAudioRate()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19909
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->getAudioRate()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->setAudioRate(I)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    :cond_5
    move-object v0, p0

    .line 19911
    goto :goto_0
.end method

.method public mergeResponse(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 2
    .parameter

    .prologue
    .line 19992
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 19994
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->newBuilder(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 20000
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    .line 20001
    return-object p0

    .line 19997
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    goto :goto_0
.end method

.method public setApplicationErrorCode(I)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 20019
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    .line 20020
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->applicationErrorCode_:I

    .line 20022
    return-object p0
.end method

.method public setAudioEncoding(Lcom/google/protos/speech/service/SpeechService$Encoding;)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 20040
    if-nez p1, :cond_0

    .line 20041
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20043
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    .line 20044
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->audioEncoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 20046
    return-object p0
.end method

.method public setAudioRate(I)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 20064
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    .line 20065
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->audioRate_:I

    .line 20067
    return-object p0
.end method

.method public setResponse(Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 19986
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 19988
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    .line 19989
    return-object p0
.end method

.method public setResponse(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 19976
    if-nez p1, :cond_0

    .line 19977
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19979
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 19981
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    .line 19982
    return-object p0
.end method

.method public setStatus(Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 19952
    if-nez p1, :cond_0

    .line 19953
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19955
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->bitField0_:I

    .line 19956
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    .line 19958
    return-object p0
.end method
