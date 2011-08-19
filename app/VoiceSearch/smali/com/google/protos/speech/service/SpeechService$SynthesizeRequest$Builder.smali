.class public final Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SynthesizeRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;",
        "Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$SynthesizeRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private audioChunkSize_:I

.field private bitField0_:I

.field private encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

.field private params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

.field private request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

.field private ssml_:Ljava/lang/Object;

.field private voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19110
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 19252
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->ULAW:Lcom/google/protos/speech/service/SpeechService$Encoding;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 19276
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->ssml_:Ljava/lang/Object;

    .line 19329
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    .line 19372
    const/16 v0, 0x400

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->audioChunkSize_:I

    .line 19393
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 19436
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    .line 19111
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->maybeForceBuilderInitialization()V

    .line 19112
    return-void
.end method

.method static synthetic access$23000()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1

    .prologue
    .line 19105
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1

    .prologue
    .line 19117
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 19115
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19105
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;
    .locals 2

    .prologue
    .line 19146
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    move-result-object v0

    .line 19147
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 19148
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 19150
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19105
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;
    .locals 5

    .prologue
    .line 19154
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 19155
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19156
    const/4 v2, 0x0

    .line 19157
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 19158
    or-int/lit8 v2, v2, 0x1

    .line 19160
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->access$23202(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;Lcom/google/protos/speech/service/SpeechService$Encoding;)Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 19161
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 19162
    or-int/lit8 v2, v2, 0x2

    .line 19164
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->ssml_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->access$23302(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19165
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 19166
    or-int/lit8 v2, v2, 0x4

    .line 19168
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->access$23402(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    .line 19169
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 19170
    or-int/lit8 v2, v2, 0x8

    .line 19172
    :cond_3
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->audioChunkSize_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->access$23502(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;I)I

    .line 19173
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 19174
    or-int/lit8 v2, v2, 0x10

    .line 19176
    :cond_4
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->access$23602(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 19177
    and-int/lit8 v1, v1, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_5

    .line 19178
    or-int/lit8 v1, v2, 0x20

    .line 19180
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->access$23702(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    .line 19181
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->access$23802(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;I)I

    .line 19182
    return-object v0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 19105
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 19105
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1

    .prologue
    .line 19121
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 19122
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->ULAW:Lcom/google/protos/speech/service/SpeechService$Encoding;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 19123
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19124
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->ssml_:Ljava/lang/Object;

    .line 19125
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19126
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    .line 19127
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19128
    const/16 v0, 0x400

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->audioChunkSize_:I

    .line 19129
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19130
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 19131
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19132
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    .line 19133
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19134
    return-object p0
.end method

.method public clearAudioChunkSize()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1

    .prologue
    .line 19386
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19387
    const/16 v0, 0x400

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->audioChunkSize_:I

    .line 19389
    return-object p0
.end method

.method public clearEncoding()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1

    .prologue
    .line 19269
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19270
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->ULAW:Lcom/google/protos/speech/service/SpeechService$Encoding;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 19272
    return-object p0
.end method

.method public clearParams()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1

    .prologue
    .line 19472
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    .line 19474
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19475
    return-object p0
.end method

.method public clearRequest()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1

    .prologue
    .line 19429
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 19431
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19432
    return-object p0
.end method

.method public clearSsml()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1

    .prologue
    .line 19312
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19313
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->getSsml()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->ssml_:Ljava/lang/Object;

    .line 19315
    return-object p0
.end method

.method public clearVoice()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1

    .prologue
    .line 19365
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    .line 19367
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19368
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 19105
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 19105
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 19105
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 2

    .prologue
    .line 19138
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

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
    .line 19105
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAudioChunkSize()I
    .locals 1

    .prologue
    .line 19377
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->audioChunkSize_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 19105
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19105
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;
    .locals 1

    .prologue
    .line 19142
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Lcom/google/protos/speech/service/SpeechService$Encoding;
    .locals 1

    .prologue
    .line 19257
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    return-object v0
.end method

.method public getParams()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 1

    .prologue
    .line 19441
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    return-object v0
.end method

.method public getRequest()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 1

    .prologue
    .line 19398
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object v0
.end method

.method public getSsml()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19281
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->ssml_:Ljava/lang/Object;

    .line 19282
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 19283
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 19284
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->ssml_:Ljava/lang/Object;

    .line 19287
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSsmlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 19292
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->ssml_:Ljava/lang/Object;

    .line 19293
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19294
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19296
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->ssml_:Ljava/lang/Object;

    .line 19299
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getVoice()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 1

    .prologue
    .line 19334
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object v0
.end method

.method public hasAudioChunkSize()Z
    .locals 2

    .prologue
    .line 19374
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

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

.method public hasEncoding()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 19254
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasParams()Z
    .locals 2

    .prologue
    .line 19438
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

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

.method public hasRequest()Z
    .locals 2

    .prologue
    .line 19395
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

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

.method public hasSsml()Z
    .locals 2

    .prologue
    .line 19278
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

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

.method public hasVoice()Z
    .locals 2

    .prologue
    .line 19331
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19211
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->hasEncoding()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 19229
    :goto_0
    return v0

    .line 19215
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->hasVoice()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 19217
    goto :goto_0

    .line 19219
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->getVoice()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 19221
    goto :goto_0

    .line 19223
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->hasRequest()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19224
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->getRequest()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 19226
    goto :goto_0

    .line 19229
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
    .line 19105
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 19105
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

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
    .line 19105
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19236
    const/4 v1, 0x0

    .line 19238
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19243
    if-eqz v0, :cond_0

    .line 19244
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    .line 19247
    :cond_0
    return-object p0

    .line 19239
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 19240
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19241
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19243
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 19244
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    :cond_1
    throw v0

    .line 19243
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 19186
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 19207
    :goto_0
    return-object v0

    .line 19187
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->hasEncoding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19188
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->getEncoding()Lcom/google/protos/speech/service/SpeechService$Encoding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->setEncoding(Lcom/google/protos/speech/service/SpeechService$Encoding;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    .line 19190
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->hasSsml()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19191
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19192
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->access$23300(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->ssml_:Ljava/lang/Object;

    .line 19195
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->hasVoice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19196
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->getVoice()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->mergeVoice(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    .line 19198
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->hasAudioChunkSize()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19199
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->getAudioChunkSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->setAudioChunkSize(I)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    .line 19201
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->hasRequest()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19202
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->getRequest()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->mergeRequest(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    .line 19204
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->hasParams()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19205
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->getParams()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->mergeParams(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    :cond_6
    move-object v0, p0

    .line 19207
    goto :goto_0
.end method

.method public mergeParams(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 19460
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 19462
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->newBuilder(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    .line 19468
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19469
    return-object p0

    .line 19465
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    goto :goto_0
.end method

.method public mergeRequest(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 19417
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 19419
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->newBuilder(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 19425
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19426
    return-object p0

    .line 19422
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    goto :goto_0
.end method

.method public mergeVoice(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 19353
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 19355
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->newBuilder(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    .line 19361
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19362
    return-object p0

    .line 19358
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    goto :goto_0
.end method

.method public setAudioChunkSize(I)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 19380
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19381
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->audioChunkSize_:I

    .line 19383
    return-object p0
.end method

.method public setEncoding(Lcom/google/protos/speech/service/SpeechService$Encoding;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 19260
    if-nez p1, :cond_0

    .line 19261
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19263
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19264
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 19266
    return-object p0
.end method

.method public setParams(Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 19454
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->build()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    .line 19456
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19457
    return-object p0
.end method

.method public setParams(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 19444
    if-nez p1, :cond_0

    .line 19445
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19447
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    .line 19449
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19450
    return-object p0
.end method

.method public setRequest(Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 19411
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 19413
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19414
    return-object p0
.end method

.method public setRequest(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 19401
    if-nez p1, :cond_0

    .line 19402
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19404
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 19406
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19407
    return-object p0
.end method

.method public setSsml(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 19303
    if-nez p1, :cond_0

    .line 19304
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19306
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19307
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->ssml_:Ljava/lang/Object;

    .line 19309
    return-object p0
.end method

.method public setSsmlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 19319
    if-nez p1, :cond_0

    .line 19320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19322
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19323
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->ssml_:Ljava/lang/Object;

    .line 19325
    return-object p0
.end method

.method public setVoice(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 19347
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->build()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    .line 19349
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19350
    return-object p0
.end method

.method public setVoice(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 19337
    if-nez p1, :cond_0

    .line 19338
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19340
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    .line 19342
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->bitField0_:I

    .line 19343
    return-object p0
.end method
