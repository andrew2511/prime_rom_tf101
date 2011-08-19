.class public final Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognizeRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;",
        "Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$RecognizeRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

.field private audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

.field private bitField0_:I

.field private clientApplicationId_:Ljava/lang/Object;

.field private enableProfanityFilter_:Z

.field private gaiaAuthenticationToken_:Ljava/lang/Object;

.field private grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

.field private inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

.field private inputDevice_:Lcom/google/protos/speech/service/SpeechService$InputDevice;

.field private inputEnvironment_:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

.field private inputModality_:Lcom/google/protos/speech/service/SpeechService$InputModality;

.field private language_:Ljava/lang/Object;

.field private maxRecognitionResults_:I

.field private noiseLevel_:I

.field private personalizationOptIn_:Z

.field private prologueLengthSamples_:I

.field private sendAudioToBackend_:Z

.field private snrDeprecated_:F

.field private snr_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14151
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14407
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Grammar;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    .line 14450
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 14493
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->language_:Ljava/lang/Object;

    .line 14546
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 14589
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputModality;->PHONE_CALL:Lcom/google/protos/speech/service/SpeechService$InputModality;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputModality_:Lcom/google/protos/speech/service/SpeechService$InputModality;

    .line 14613
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;->EMBEDDED_MICROPHONE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputDevice_:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    .line 14637
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->MOBILE_UNDOCKED:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputEnvironment_:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    .line 14661
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 14882
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 14935
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    .line 14152
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->maybeForceBuilderInitialization()V

    .line 14153
    return-void
.end method

.method static synthetic access$15800()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14146
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14158
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 14156
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14146
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;
    .locals 2

    .prologue
    .line 14211
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v0

    .line 14212
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14213
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 14215
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14146
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;
    .locals 8

    .prologue
    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 14219
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 14220
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14221
    const/4 v2, 0x0

    .line 14222
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 14223
    or-int/lit8 v2, v2, 0x1

    .line 14225
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16002(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/service/SpeechService$Grammar;)Lcom/google/protos/speech/service/SpeechService$Grammar;

    .line 14226
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 14227
    or-int/lit8 v2, v2, 0x2

    .line 14229
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16102(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 14230
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 14231
    or-int/lit8 v2, v2, 0x4

    .line 14233
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->language_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16202(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14234
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 14235
    or-int/lit8 v2, v2, 0x8

    .line 14237
    :cond_3
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16302(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 14238
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 14239
    or-int/lit8 v2, v2, 0x10

    .line 14241
    :cond_4
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputModality_:Lcom/google/protos/speech/service/SpeechService$InputModality;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16402(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/service/SpeechService$InputModality;)Lcom/google/protos/speech/service/SpeechService$InputModality;

    .line 14242
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 14243
    or-int/lit8 v2, v2, 0x20

    .line 14245
    :cond_5
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputDevice_:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16502(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/service/SpeechService$InputDevice;)Lcom/google/protos/speech/service/SpeechService$InputDevice;

    .line 14246
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 14247
    or-int/lit8 v2, v2, 0x40

    .line 14249
    :cond_6
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputEnvironment_:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16602(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/service/SpeechService$InputEnvironment;)Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    .line 14250
    and-int/lit16 v3, v1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 14251
    or-int/lit16 v2, v2, 0x80

    .line 14253
    :cond_7
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clientApplicationId_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16702(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14254
    and-int/lit16 v3, v1, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 14255
    or-int/lit16 v2, v2, 0x100

    .line 14257
    :cond_8
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->snrDeprecated_:F

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16802(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;F)F

    .line 14258
    and-int/lit16 v3, v1, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 14259
    or-int/lit16 v2, v2, 0x200

    .line 14261
    :cond_9
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->noiseLevel_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16902(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;I)I

    .line 14262
    and-int/lit16 v3, v1, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 14263
    or-int/lit16 v2, v2, 0x400

    .line 14265
    :cond_a
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->snr_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17002(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;I)I

    .line 14266
    and-int/lit16 v3, v1, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 14267
    or-int/lit16 v2, v2, 0x800

    .line 14269
    :cond_b
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->prologueLengthSamples_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17102(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;I)I

    .line 14270
    and-int/lit16 v3, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 14271
    or-int/lit16 v2, v2, 0x1000

    .line 14273
    :cond_c
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->sendAudioToBackend_:Z

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17202(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Z)Z

    .line 14274
    and-int/lit16 v3, v1, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 14275
    or-int/lit16 v2, v2, 0x2000

    .line 14277
    :cond_d
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->maxRecognitionResults_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17302(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;I)I

    .line 14278
    and-int/lit16 v3, v1, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 14279
    or-int/lit16 v2, v2, 0x4000

    .line 14281
    :cond_e
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->enableProfanityFilter_:Z

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17402(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Z)Z

    .line 14282
    and-int v3, v1, v5

    if-ne v3, v5, :cond_f

    .line 14283
    or-int/2addr v2, v5

    .line 14285
    :cond_f
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->personalizationOptIn_:Z

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17502(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Z)Z

    .line 14286
    and-int v3, v1, v6

    if-ne v3, v6, :cond_10

    .line 14287
    or-int/2addr v2, v6

    .line 14289
    :cond_10
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17602(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14290
    and-int/2addr v1, v7

    if-ne v1, v7, :cond_11

    .line 14291
    or-int v1, v2, v7

    .line 14293
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17702(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams;

    .line 14294
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17802(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;I)I

    .line 14295
    return-object v0

    :cond_11
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 14146
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14146
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14162
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 14163
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Grammar;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    .line 14164
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14165
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 14166
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14167
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->language_:Ljava/lang/Object;

    .line 14168
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14169
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 14170
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14171
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputModality;->PHONE_CALL:Lcom/google/protos/speech/service/SpeechService$InputModality;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputModality_:Lcom/google/protos/speech/service/SpeechService$InputModality;

    .line 14172
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14173
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;->EMBEDDED_MICROPHONE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputDevice_:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    .line 14174
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14175
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->MOBILE_UNDOCKED:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputEnvironment_:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    .line 14176
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14177
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 14178
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14179
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->snrDeprecated_:F

    .line 14180
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14181
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->noiseLevel_:I

    .line 14182
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14183
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->snr_:I

    .line 14184
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14185
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->prologueLengthSamples_:I

    .line 14186
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14187
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->sendAudioToBackend_:Z

    .line 14188
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14189
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->maxRecognitionResults_:I

    .line 14190
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14191
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->enableProfanityFilter_:Z

    .line 14192
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14193
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->personalizationOptIn_:Z

    .line 14194
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14195
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 14196
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14197
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    .line 14198
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14199
    return-object p0
.end method

.method public clearAlternateParams()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2

    .prologue
    .line 14971
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    .line 14973
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14974
    return-object p0
.end method

.method public clearAudioParameters()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14582
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 14584
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14585
    return-object p0
.end method

.method public clearClientApplicationId()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14697
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14698
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getClientApplicationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 14700
    return-object p0
.end method

.method public clearEnableProfanityFilter()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14854
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14855
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->enableProfanityFilter_:Z

    .line 14857
    return-object p0
.end method

.method public clearGaiaAuthenticationToken()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2

    .prologue
    .line 14918
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14919
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getGaiaAuthenticationToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 14921
    return-object p0
.end method

.method public clearGrammar()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14443
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Grammar;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    .line 14445
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14446
    return-object p0
.end method

.method public clearInputData()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14486
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 14488
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14489
    return-object p0
.end method

.method public clearInputDevice()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14630
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14631
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;->EMBEDDED_MICROPHONE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputDevice_:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    .line 14633
    return-object p0
.end method

.method public clearInputEnvironment()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14654
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14655
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->MOBILE_UNDOCKED:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputEnvironment_:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    .line 14657
    return-object p0
.end method

.method public clearInputModality()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14606
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14607
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputModality;->PHONE_CALL:Lcom/google/protos/speech/service/SpeechService$InputModality;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputModality_:Lcom/google/protos/speech/service/SpeechService$InputModality;

    .line 14609
    return-object p0
.end method

.method public clearLanguage()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14529
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14530
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->language_:Ljava/lang/Object;

    .line 14532
    return-object p0
.end method

.method public clearMaxRecognitionResults()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14833
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14834
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->maxRecognitionResults_:I

    .line 14836
    return-object p0
.end method

.method public clearNoiseLevel()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14749
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14750
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->noiseLevel_:I

    .line 14752
    return-object p0
.end method

.method public clearPersonalizationOptIn()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2

    .prologue
    .line 14875
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->personalizationOptIn_:Z

    .line 14878
    return-object p0
.end method

.method public clearPrologueLengthSamples()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14791
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14792
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->prologueLengthSamples_:I

    .line 14794
    return-object p0
.end method

.method public clearSendAudioToBackend()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14812
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14813
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->sendAudioToBackend_:Z

    .line 14815
    return-object p0
.end method

.method public clearSnr()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14770
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14771
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->snr_:I

    .line 14773
    return-object p0
.end method

.method public clearSnrDeprecated()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14728
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14729
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->snrDeprecated_:F

    .line 14731
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 14146
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 14146
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14146
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2

    .prologue
    .line 14203
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

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
    .line 14146
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlternateParams()Lcom/google/protos/speech/common/Alternates$AlternateParams;
    .locals 1

    .prologue
    .line 14940
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    return-object v0
.end method

.method public getAudioParameters()Lcom/google/protos/speech/service/SpeechService$AudioParameters;
    .locals 1

    .prologue
    .line 14551
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    return-object v0
.end method

.method public getClientApplicationId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14666
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 14667
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 14668
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 14669
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 14672
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getClientApplicationIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 14677
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 14678
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14679
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14681
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 14684
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 14146
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14146
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;
    .locals 1

    .prologue
    .line 14207
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getEnableProfanityFilter()Z
    .locals 1

    .prologue
    .line 14845
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->enableProfanityFilter_:Z

    return v0
.end method

.method public getGaiaAuthenticationToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14887
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 14888
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 14889
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 14890
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 14893
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getGaiaAuthenticationTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 14898
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 14899
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14900
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14902
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 14905
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getGrammar()Lcom/google/protos/speech/service/SpeechService$Grammar;
    .locals 1

    .prologue
    .line 14412
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    return-object v0
.end method

.method public getInputData()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 1

    .prologue
    .line 14455
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object v0
.end method

.method public getInputDevice()Lcom/google/protos/speech/service/SpeechService$InputDevice;
    .locals 1

    .prologue
    .line 14618
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputDevice_:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    return-object v0
.end method

.method public getInputEnvironment()Lcom/google/protos/speech/service/SpeechService$InputEnvironment;
    .locals 1

    .prologue
    .line 14642
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputEnvironment_:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    return-object v0
.end method

.method public getInputModality()Lcom/google/protos/speech/service/SpeechService$InputModality;
    .locals 1

    .prologue
    .line 14594
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputModality_:Lcom/google/protos/speech/service/SpeechService$InputModality;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14498
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->language_:Ljava/lang/Object;

    .line 14499
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 14500
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 14501
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->language_:Ljava/lang/Object;

    .line 14504
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 14509
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->language_:Ljava/lang/Object;

    .line 14510
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14511
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14513
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->language_:Ljava/lang/Object;

    .line 14516
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getMaxRecognitionResults()I
    .locals 1

    .prologue
    .line 14824
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->maxRecognitionResults_:I

    return v0
.end method

.method public getNoiseLevel()I
    .locals 1

    .prologue
    .line 14740
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->noiseLevel_:I

    return v0
.end method

.method public getPersonalizationOptIn()Z
    .locals 1

    .prologue
    .line 14866
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->personalizationOptIn_:Z

    return v0
.end method

.method public getPrologueLengthSamples()I
    .locals 1

    .prologue
    .line 14782
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->prologueLengthSamples_:I

    return v0
.end method

.method public getSendAudioToBackend()Z
    .locals 1

    .prologue
    .line 14803
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->sendAudioToBackend_:Z

    return v0
.end method

.method public getSnr()I
    .locals 1

    .prologue
    .line 14761
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->snr_:I

    return v0
.end method

.method public getSnrDeprecated()F
    .locals 1

    .prologue
    .line 14719
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->snrDeprecated_:F

    return v0
.end method

.method public hasAlternateParams()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 14937
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAudioParameters()Z
    .locals 2

    .prologue
    .line 14548
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

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

.method public hasClientApplicationId()Z
    .locals 2

    .prologue
    .line 14663
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

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

.method public hasEnableProfanityFilter()Z
    .locals 2

    .prologue
    .line 14842
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGaiaAuthenticationToken()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 14884
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGrammar()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 14409
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputData()Z
    .locals 2

    .prologue
    .line 14452
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

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

.method public hasInputDevice()Z
    .locals 2

    .prologue
    .line 14615
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

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

.method public hasInputEnvironment()Z
    .locals 2

    .prologue
    .line 14639
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

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

.method public hasInputModality()Z
    .locals 2

    .prologue
    .line 14591
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

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

.method public hasLanguage()Z
    .locals 2

    .prologue
    .line 14495
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

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

.method public hasMaxRecognitionResults()Z
    .locals 2

    .prologue
    .line 14821
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNoiseLevel()Z
    .locals 2

    .prologue
    .line 14737
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPersonalizationOptIn()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 14863
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrologueLengthSamples()Z
    .locals 2

    .prologue
    .line 14779
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSendAudioToBackend()Z
    .locals 2

    .prologue
    .line 14800
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSnr()Z
    .locals 2

    .prologue
    .line 14758
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSnrDeprecated()Z
    .locals 2

    .prologue
    .line 14716
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

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

    .line 14364
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->hasGrammar()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 14384
    :goto_0
    return v0

    .line 14368
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->getGrammar()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$Grammar;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 14370
    goto :goto_0

    .line 14372
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->hasInputData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14373
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->getInputData()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 14375
    goto :goto_0

    .line 14378
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->hasAudioParameters()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14379
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->getAudioParameters()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 14381
    goto :goto_0

    .line 14384
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeAlternateParams(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x2

    .line 14959
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 14961
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    invoke-static {v0}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->newBuilder(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    .line 14967
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14968
    return-object p0

    .line 14964
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    goto :goto_0
.end method

.method public mergeAudioParameters(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 14570
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 14572
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->newBuilder(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 14578
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14579
    return-object p0

    .line 14575
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

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
    .line 14146
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14146
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

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
    .line 14146
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14391
    const/4 v1, 0x0

    .line 14393
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14398
    if-eqz v0, :cond_0

    .line 14399
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14402
    :cond_0
    return-object p0

    .line 14394
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 14395
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14396
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14398
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 14399
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    :cond_1
    throw v0

    .line 14398
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 14299
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 14360
    :goto_0
    return-object v0

    .line 14300
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasGrammar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14301
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getGrammar()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeGrammar(Lcom/google/protos/speech/service/SpeechService$Grammar;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14303
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasInputData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14304
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getInputData()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeInputData(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14306
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasLanguage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14307
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14308
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16200(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->language_:Ljava/lang/Object;

    .line 14311
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasAudioParameters()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14312
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getAudioParameters()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeAudioParameters(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14314
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasInputModality()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14315
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getInputModality()Lcom/google/protos/speech/service/SpeechService$InputModality;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setInputModality(Lcom/google/protos/speech/service/SpeechService$InputModality;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14317
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasInputDevice()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14318
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getInputDevice()Lcom/google/protos/speech/service/SpeechService$InputDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setInputDevice(Lcom/google/protos/speech/service/SpeechService$InputDevice;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14320
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasInputEnvironment()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14321
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getInputEnvironment()Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setInputEnvironment(Lcom/google/protos/speech/service/SpeechService$InputEnvironment;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14323
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasClientApplicationId()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 14324
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14325
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16700(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 14328
    :cond_8
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasSnrDeprecated()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 14329
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getSnrDeprecated()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setSnrDeprecated(F)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14331
    :cond_9
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasNoiseLevel()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 14332
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getNoiseLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setNoiseLevel(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14334
    :cond_a
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasSnr()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 14335
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getSnr()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setSnr(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14337
    :cond_b
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasPrologueLengthSamples()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 14338
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getPrologueLengthSamples()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setPrologueLengthSamples(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14340
    :cond_c
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasSendAudioToBackend()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 14341
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getSendAudioToBackend()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setSendAudioToBackend(Z)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14343
    :cond_d
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasMaxRecognitionResults()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 14344
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getMaxRecognitionResults()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setMaxRecognitionResults(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14346
    :cond_e
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasEnableProfanityFilter()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 14347
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getEnableProfanityFilter()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setEnableProfanityFilter(Z)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14349
    :cond_f
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasPersonalizationOptIn()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 14350
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getPersonalizationOptIn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setPersonalizationOptIn(Z)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14352
    :cond_10
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasGaiaAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 14353
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14354
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17600(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 14357
    :cond_11
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasAlternateParams()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 14358
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getAlternateParams()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeAlternateParams(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    :cond_12
    move-object v0, p0

    .line 14360
    goto/16 :goto_0
.end method

.method public mergeGrammar(Lcom/google/protos/speech/service/SpeechService$Grammar;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 14431
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Grammar;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 14433
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$Grammar;->newBuilder(Lcom/google/protos/speech/service/SpeechService$Grammar;)Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$Grammar;)Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    .line 14439
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14440
    return-object p0

    .line 14436
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    goto :goto_0
.end method

.method public mergeInputData(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 14474
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 14476
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->newBuilder(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 14482
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14483
    return-object p0

    .line 14479
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    goto :goto_0
.end method

.method public setAlternateParams(Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 14953
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->build()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    .line 14955
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14956
    return-object p0
.end method

.method public setAlternateParams(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 14943
    if-nez p1, :cond_0

    .line 14944
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14946
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    .line 14948
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14949
    return-object p0
.end method

.method public setAudioParameters(Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14564
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->build()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 14566
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14567
    return-object p0
.end method

.method public setAudioParameters(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14554
    if-nez p1, :cond_0

    .line 14555
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14557
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 14559
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14560
    return-object p0
.end method

.method public setClientApplicationId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14688
    if-nez p1, :cond_0

    .line 14689
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14691
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14692
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 14694
    return-object p0
.end method

.method public setClientApplicationIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14704
    if-nez p1, :cond_0

    .line 14705
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14707
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14708
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 14710
    return-object p0
.end method

.method public setEnableProfanityFilter(Z)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14848
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14849
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->enableProfanityFilter_:Z

    .line 14851
    return-object p0
.end method

.method public setGaiaAuthenticationToken(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 14909
    if-nez p1, :cond_0

    .line 14910
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14912
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14913
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 14915
    return-object p0
.end method

.method public setGaiaAuthenticationTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 14925
    if-nez p1, :cond_0

    .line 14926
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14928
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14929
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 14931
    return-object p0
.end method

.method public setGrammar(Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14425
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;->build()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    .line 14427
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14428
    return-object p0
.end method

.method public setGrammar(Lcom/google/protos/speech/service/SpeechService$Grammar;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14415
    if-nez p1, :cond_0

    .line 14416
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14418
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    .line 14420
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14421
    return-object p0
.end method

.method public setInputData(Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14468
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 14470
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14471
    return-object p0
.end method

.method public setInputData(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14458
    if-nez p1, :cond_0

    .line 14459
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14461
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 14463
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14464
    return-object p0
.end method

.method public setInputDevice(Lcom/google/protos/speech/service/SpeechService$InputDevice;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14621
    if-nez p1, :cond_0

    .line 14622
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14624
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14625
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputDevice_:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    .line 14627
    return-object p0
.end method

.method public setInputEnvironment(Lcom/google/protos/speech/service/SpeechService$InputEnvironment;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14645
    if-nez p1, :cond_0

    .line 14646
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14648
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14649
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputEnvironment_:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    .line 14651
    return-object p0
.end method

.method public setInputModality(Lcom/google/protos/speech/service/SpeechService$InputModality;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14597
    if-nez p1, :cond_0

    .line 14598
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14600
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14601
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputModality_:Lcom/google/protos/speech/service/SpeechService$InputModality;

    .line 14603
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14520
    if-nez p1, :cond_0

    .line 14521
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14523
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14524
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->language_:Ljava/lang/Object;

    .line 14526
    return-object p0
.end method

.method public setLanguageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14536
    if-nez p1, :cond_0

    .line 14537
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14539
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14540
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->language_:Ljava/lang/Object;

    .line 14542
    return-object p0
.end method

.method public setMaxRecognitionResults(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14827
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14828
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->maxRecognitionResults_:I

    .line 14830
    return-object p0
.end method

.method public setNoiseLevel(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14743
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14744
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->noiseLevel_:I

    .line 14746
    return-object p0
.end method

.method public setPersonalizationOptIn(Z)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 14869
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14870
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->personalizationOptIn_:Z

    .line 14872
    return-object p0
.end method

.method public setPrologueLengthSamples(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14785
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14786
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->prologueLengthSamples_:I

    .line 14788
    return-object p0
.end method

.method public setSendAudioToBackend(Z)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14806
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14807
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->sendAudioToBackend_:Z

    .line 14809
    return-object p0
.end method

.method public setSnr(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14764
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14765
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->snr_:I

    .line 14767
    return-object p0
.end method

.method public setSnrDeprecated(F)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14722
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14723
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->snrDeprecated_:F

    .line 14725
    return-object p0
.end method
