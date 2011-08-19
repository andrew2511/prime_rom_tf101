.class public final Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SynthesisVoiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;",
        "Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$SynthesisVoiceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private engine_:Ljava/lang/Object;

.field private gender_:Ljava/lang/Object;

.field private language_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private sampleRate_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17926
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 18051
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->language_:Ljava/lang/Object;

    .line 18104
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->gender_:Ljava/lang/Object;

    .line 18157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->name_:Ljava/lang/Object;

    .line 18231
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->engine_:Ljava/lang/Object;

    .line 17927
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->maybeForceBuilderInitialization()V

    .line 17928
    return-void
.end method

.method static synthetic access$21400()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1

    .prologue
    .line 17921
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1

    .prologue
    .line 17933
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 17931
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17921
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->build()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 2

    .prologue
    .line 17960
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    .line 17961
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 17962
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 17964
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17921
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 5

    .prologue
    .line 17968
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 17969
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 17970
    const/4 v2, 0x0

    .line 17971
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 17972
    or-int/lit8 v2, v2, 0x1

    .line 17974
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->language_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$21602(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17975
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 17976
    or-int/lit8 v2, v2, 0x2

    .line 17978
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->gender_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$21702(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17979
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 17980
    or-int/lit8 v2, v2, 0x4

    .line 17982
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$21802(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17983
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 17984
    or-int/lit8 v2, v2, 0x8

    .line 17986
    :cond_3
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->sampleRate_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$21902(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;I)I

    .line 17987
    and-int/lit8 v1, v1, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_4

    .line 17988
    or-int/lit8 v1, v2, 0x10

    .line 17990
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->engine_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$22002(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17991
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$22102(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;I)I

    .line 17992
    return-object v0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 17921
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17921
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1

    .prologue
    .line 17937
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 17938
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->language_:Ljava/lang/Object;

    .line 17939
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 17940
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->gender_:Ljava/lang/Object;

    .line 17941
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 17942
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->name_:Ljava/lang/Object;

    .line 17943
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 17944
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->sampleRate_:I

    .line 17945
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 17946
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->engine_:Ljava/lang/Object;

    .line 17947
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 17948
    return-object p0
.end method

.method public clearEngine()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1

    .prologue
    .line 18267
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18268
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->engine_:Ljava/lang/Object;

    .line 18270
    return-object p0
.end method

.method public clearGender()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1

    .prologue
    .line 18140
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18141
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getGender()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->gender_:Ljava/lang/Object;

    .line 18143
    return-object p0
.end method

.method public clearLanguage()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1

    .prologue
    .line 18087
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18088
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->language_:Ljava/lang/Object;

    .line 18090
    return-object p0
.end method

.method public clearName()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1

    .prologue
    .line 18193
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18194
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->name_:Ljava/lang/Object;

    .line 18196
    return-object p0
.end method

.method public clearSampleRate()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1

    .prologue
    .line 18224
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18225
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->sampleRate_:I

    .line 18227
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 17921
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 17921
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17921
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 2

    .prologue
    .line 17952
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

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
    .line 17921
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 17921
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17921
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 1

    .prologue
    .line 17956
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    return-object v0
.end method

.method public getEngine()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18236
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->engine_:Ljava/lang/Object;

    .line 18237
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 18238
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 18239
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->engine_:Ljava/lang/Object;

    .line 18242
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getEngineBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 18247
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->engine_:Ljava/lang/Object;

    .line 18248
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18249
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18251
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->engine_:Ljava/lang/Object;

    .line 18254
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getGender()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18109
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->gender_:Ljava/lang/Object;

    .line 18110
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 18111
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 18112
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->gender_:Ljava/lang/Object;

    .line 18115
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getGenderBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 18120
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->gender_:Ljava/lang/Object;

    .line 18121
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18122
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18124
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->gender_:Ljava/lang/Object;

    .line 18127
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18056
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->language_:Ljava/lang/Object;

    .line 18057
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 18058
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 18059
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->language_:Ljava/lang/Object;

    .line 18062
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 18067
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->language_:Ljava/lang/Object;

    .line 18068
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18069
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18071
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->language_:Ljava/lang/Object;

    .line 18074
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18162
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->name_:Ljava/lang/Object;

    .line 18163
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 18164
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 18165
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->name_:Ljava/lang/Object;

    .line 18168
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 18173
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->name_:Ljava/lang/Object;

    .line 18174
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18175
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18177
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->name_:Ljava/lang/Object;

    .line 18180
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 18215
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->sampleRate_:I

    return v0
.end method

.method public hasEngine()Z
    .locals 2

    .prologue
    .line 18233
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

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

.method public hasGender()Z
    .locals 2

    .prologue
    .line 18106
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

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

.method public hasLanguage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 18053
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    .line 18159
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

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

.method public hasSampleRate()Z
    .locals 2

    .prologue
    .line 18212
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

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
    .locals 1

    .prologue
    .line 18024
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->hasLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18026
    const/4 v0, 0x0

    .line 18028
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
    .line 17921
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17921
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

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
    .line 17921
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18035
    const/4 v1, 0x0

    .line 18037
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18042
    if-eqz v0, :cond_0

    .line 18043
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    .line 18046
    :cond_0
    return-object p0

    .line 18038
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 18039
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18040
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18042
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 18043
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    :cond_1
    throw v0

    .line 18042
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17996
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 18020
    :goto_0
    return-object v0

    .line 17997
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->hasLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17998
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 17999
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$21600(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->language_:Ljava/lang/Object;

    .line 18002
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->hasGender()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18003
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18004
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$21700(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->gender_:Ljava/lang/Object;

    .line 18007
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->hasName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18008
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18009
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$21800(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->name_:Ljava/lang/Object;

    .line 18012
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->hasSampleRate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18013
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getSampleRate()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->setSampleRate(I)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    .line 18015
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->hasEngine()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18016
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18017
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$22000(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->engine_:Ljava/lang/Object;

    :cond_5
    move-object v0, p0

    .line 18020
    goto :goto_0
.end method

.method public setEngine(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18258
    if-nez p1, :cond_0

    .line 18259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18261
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18262
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->engine_:Ljava/lang/Object;

    .line 18264
    return-object p0
.end method

.method public setEngineBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18274
    if-nez p1, :cond_0

    .line 18275
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18277
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18278
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->engine_:Ljava/lang/Object;

    .line 18280
    return-object p0
.end method

.method public setGender(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18131
    if-nez p1, :cond_0

    .line 18132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18134
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18135
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->gender_:Ljava/lang/Object;

    .line 18137
    return-object p0
.end method

.method public setGenderBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18147
    if-nez p1, :cond_0

    .line 18148
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18150
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18151
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->gender_:Ljava/lang/Object;

    .line 18153
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18078
    if-nez p1, :cond_0

    .line 18079
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18081
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18082
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->language_:Ljava/lang/Object;

    .line 18084
    return-object p0
.end method

.method public setLanguageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18094
    if-nez p1, :cond_0

    .line 18095
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18097
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18098
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->language_:Ljava/lang/Object;

    .line 18100
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18184
    if-nez p1, :cond_0

    .line 18185
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18187
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18188
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->name_:Ljava/lang/Object;

    .line 18190
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18200
    if-nez p1, :cond_0

    .line 18201
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18203
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18204
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->name_:Ljava/lang/Object;

    .line 18206
    return-object p0
.end method

.method public setSampleRate(I)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18218
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18219
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->sampleRate_:I

    .line 18221
    return-object p0
.end method
