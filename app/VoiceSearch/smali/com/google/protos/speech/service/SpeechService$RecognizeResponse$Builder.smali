.class public final Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognizeResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;",
        "Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$RecognizeResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private applicationErrorCode_:I

.field private bitField0_:I

.field private deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

.field private gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

.field private partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

.field private partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

.field private recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

.field private response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15793
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 15948
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    .line 15991
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 16055
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    .line 16098
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    .line 16141
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;->PERSONALIZATION_NOT_YET_SPECIFIED:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    .line 16165
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    .line 15794
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->maybeForceBuilderInitialization()V

    .line 15795
    return-void
.end method

.method static synthetic access$18500()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1

    .prologue
    .line 15788
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1

    .prologue
    .line 15800
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 15798
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15788
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;
    .locals 2

    .prologue
    .line 15831
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    move-result-object v0

    .line 15832
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 15833
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 15835
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15788
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;
    .locals 5

    .prologue
    .line 15839
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 15840
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 15841
    const/4 v2, 0x0

    .line 15842
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 15843
    or-int/lit8 v2, v2, 0x1

    .line 15845
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->access$18702(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    .line 15846
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 15847
    or-int/lit8 v2, v2, 0x2

    .line 15849
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->access$18802(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 15850
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 15851
    or-int/lit8 v2, v2, 0x4

    .line 15853
    :cond_2
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->applicationErrorCode_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->access$18902(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;I)I

    .line 15854
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 15855
    or-int/lit8 v2, v2, 0x8

    .line 15857
    :cond_3
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->access$19002(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript;

    .line 15858
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 15859
    or-int/lit8 v2, v2, 0x10

    .line 15861
    :cond_4
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->access$19102(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    .line 15862
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 15863
    or-int/lit8 v2, v2, 0x20

    .line 15865
    :cond_5
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->access$19202(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;)Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    .line 15866
    and-int/lit8 v1, v1, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_6

    .line 15867
    or-int/lit8 v1, v2, 0x40

    .line 15869
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->access$19302(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    .line 15870
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->access$19402(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;I)I

    .line 15871
    return-object v0

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 15788
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15788
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1

    .prologue
    .line 15804
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 15805
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    .line 15806
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 15807
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 15808
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 15809
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->applicationErrorCode_:I

    .line 15810
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 15811
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    .line 15812
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 15813
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    .line 15814
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 15815
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;->PERSONALIZATION_NOT_YET_SPECIFIED:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    .line 15816
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 15817
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    .line 15818
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 15819
    return-object p0
.end method

.method public clearApplicationErrorCode()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1

    .prologue
    .line 16048
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16049
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->applicationErrorCode_:I

    .line 16051
    return-object p0
.end method

.method public clearDeprecatedPersonalizationEnabled()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1

    .prologue
    .line 16158
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16159
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;->PERSONALIZATION_NOT_YET_SPECIFIED:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    .line 16161
    return-object p0
.end method

.method public clearGaiaResult()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1

    .prologue
    .line 16134
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    .line 16136
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16137
    return-object p0
.end method

.method public clearPartialResult()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1

    .prologue
    .line 16201
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    .line 16203
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16204
    return-object p0
.end method

.method public clearPartialTranscript()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16091
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    .line 16093
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16094
    return-object p0
.end method

.method public clearRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1

    .prologue
    .line 15984
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    .line 15986
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 15987
    return-object p0
.end method

.method public clearResponse()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1

    .prologue
    .line 16027
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 16029
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16030
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 15788
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 15788
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15788
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 2

    .prologue
    .line 15823
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

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
    .line 15788
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationErrorCode()I
    .locals 1

    .prologue
    .line 16039
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->applicationErrorCode_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 15788
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15788
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;
    .locals 1

    .prologue
    .line 15827
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecatedPersonalizationEnabled()Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;
    .locals 1

    .prologue
    .line 16146
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    return-object v0
.end method

.method public getGaiaResult()Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    .locals 1

    .prologue
    .line 16103
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    return-object v0
.end method

.method public getPartialResult()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 1

    .prologue
    .line 16170
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    return-object v0
.end method

.method public getPartialTranscript()Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16060
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    return-object v0
.end method

.method public getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 1

    .prologue
    .line 15953
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    return-object v0
.end method

.method public getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 1

    .prologue
    .line 15996
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object v0
.end method

.method public hasApplicationErrorCode()Z
    .locals 2

    .prologue
    .line 16036
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

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

.method public hasDeprecatedPersonalizationEnabled()Z
    .locals 2

    .prologue
    .line 16143
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

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

.method public hasGaiaResult()Z
    .locals 2

    .prologue
    .line 16100
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

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

.method public hasPartialResult()Z
    .locals 2

    .prologue
    .line 16167
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

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

.method public hasPartialTranscript()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16057
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

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

.method public hasRecognitionResult()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 15950
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResponse()Z
    .locals 2

    .prologue
    .line 15993
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15901
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->hasRecognitionResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15902
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 15925
    :goto_0
    return v0

    .line 15907
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15908
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 15910
    goto :goto_0

    .line 15913
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->hasPartialTranscript()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15914
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->getPartialTranscript()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 15916
    goto :goto_0

    .line 15919
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->hasGaiaResult()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15920
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->getGaiaResult()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 15922
    goto :goto_0

    .line 15925
    :cond_3
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
    .line 15788
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 15788
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

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
    .line 15788
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15932
    const/4 v1, 0x0

    .line 15934
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15939
    if-eqz v0, :cond_0

    .line 15940
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    .line 15943
    :cond_0
    return-object p0

    .line 15935
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 15936
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15937
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15939
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 15940
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    :cond_1
    throw v0

    .line 15939
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 15875
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 15897
    :goto_0
    return-object v0

    .line 15876
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasRecognitionResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15877
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->mergeRecognitionResult(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    .line 15879
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15880
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->mergeResponse(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    .line 15882
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasApplicationErrorCode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15883
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getApplicationErrorCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->setApplicationErrorCode(I)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    .line 15885
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasPartialTranscript()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15886
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getPartialTranscript()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->mergePartialTranscript(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    .line 15888
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasGaiaResult()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15889
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getGaiaResult()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->mergeGaiaResult(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    .line 15891
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasDeprecatedPersonalizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15892
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getDeprecatedPersonalizationEnabled()Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->setDeprecatedPersonalizationEnabled(Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    .line 15894
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasPartialResult()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15895
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getPartialResult()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->mergePartialResult(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    :cond_7
    move-object v0, p0

    .line 15897
    goto :goto_0
.end method

.method public mergeGaiaResult(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 2
    .parameter

    .prologue
    .line 16122
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 16124
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->newBuilder(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    .line 16130
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16131
    return-object p0

    .line 16127
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    goto :goto_0
.end method

.method public mergePartialResult(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 2
    .parameter

    .prologue
    .line 16189
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 16191
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    invoke-static {v0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->newBuilder(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->buildPartial()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    .line 16197
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16198
    return-object p0

    .line 16194
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    goto :goto_0
.end method

.method public mergePartialTranscript(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16079
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 16081
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->newBuilder(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    .line 16087
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16088
    return-object p0

    .line 16084
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    goto :goto_0
.end method

.method public mergeRecognitionResult(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 2
    .parameter

    .prologue
    .line 15972
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 15974
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    .line 15980
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 15981
    return-object p0

    .line 15977
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    goto :goto_0
.end method

.method public mergeResponse(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 2
    .parameter

    .prologue
    .line 16015
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 16017
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->newBuilder(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 16023
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16024
    return-object p0

    .line 16020
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    goto :goto_0
.end method

.method public setApplicationErrorCode(I)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16042
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16043
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->applicationErrorCode_:I

    .line 16045
    return-object p0
.end method

.method public setDeprecatedPersonalizationEnabled(Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16149
    if-nez p1, :cond_0

    .line 16150
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16152
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16153
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    .line 16155
    return-object p0
.end method

.method public setGaiaResult(Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16116
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->build()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    .line 16118
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16119
    return-object p0
.end method

.method public setGaiaResult(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16106
    if-nez p1, :cond_0

    .line 16107
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16109
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    .line 16111
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16112
    return-object p0
.end method

.method public setPartialResult(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16183
    invoke-virtual {p1}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->build()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    .line 16185
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16186
    return-object p0
.end method

.method public setPartialResult(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16173
    if-nez p1, :cond_0

    .line 16174
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16176
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    .line 16178
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16179
    return-object p0
.end method

.method public setPartialTranscript(Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16073
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->build()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    .line 16075
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16076
    return-object p0
.end method

.method public setPartialTranscript(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16063
    if-nez p1, :cond_0

    .line 16064
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16066
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    .line 16068
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16069
    return-object p0
.end method

.method public setRecognitionResult(Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 15966
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    .line 15968
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 15969
    return-object p0
.end method

.method public setRecognitionResult(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 15956
    if-nez p1, :cond_0

    .line 15957
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15959
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    .line 15961
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 15962
    return-object p0
.end method

.method public setResponse(Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16009
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 16011
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16012
    return-object p0
.end method

.method public setResponse(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 15999
    if-nez p1, :cond_0

    .line 16000
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16002
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 16004
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->bitField0_:I

    .line 16005
    return-object p0
.end method
