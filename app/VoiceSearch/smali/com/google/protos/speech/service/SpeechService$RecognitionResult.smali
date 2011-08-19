.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    }
.end annotation


# static fields
.field public static final ALTERNATES_FIELD_NUMBER:I = 0x6

.field public static final END_TIME_USEC_FIELD_NUMBER:I = 0x8

.field public static final HYPOTHESIS_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_TIME_USEC_FIELD_NUMBER:I = 0x7

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field public static final UTTERANCE_ID_FIELD_NUMBER:I = 0x3

.field public static final WAVEFORM_CLIPPED_RATIO_FIELD_NUMBER:I = 0x5

.field public static final WAVEFORM_DATA_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;


# instance fields
.field private alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

.field private bitField0_:I

.field private endTimeUsec_:J

.field private hypothesis_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private startTimeUsec_:J

.field private status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

.field private utteranceId_:Ljava/lang/Object;

.field private waveformClippedRatio_:F

.field private waveformData_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4334
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 5106
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    .line 5107
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->initFields()V

    .line 5108
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v5, 0x2

    .line 4247
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4474
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedIsInitialized:B

    .line 4528
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedSerializedSize:I

    .line 4248
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->initFields()V

    move v2, v1

    .line 4252
    :goto_0
    if-nez v1, :cond_2

    .line 4253
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 4254
    sparse-switch v0, :sswitch_data_0

    .line 4259
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    move v1, v2

    :goto_1
    move v2, v1

    move v1, v0

    .line 4321
    goto :goto_0

    :sswitch_0
    move v0, v6

    move v1, v2

    .line 4257
    goto :goto_1

    .line 4266
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 4267
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->valueOf(I)Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    move-result-object v0

    .line 4268
    if-eqz v0, :cond_1

    .line 4269
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    .line 4270
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    move v0, v1

    move v1, v2

    goto :goto_1

    .line 4275
    :sswitch_2
    and-int/lit8 v0, v2, 0x2

    if-eq v0, v5, :cond_6

    .line 4276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4277
    or-int/lit8 v0, v2, 0x2

    .line 4279
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move v7, v1

    move v1, v0

    move v0, v7

    .line 4280
    goto :goto_1

    .line 4283
    :sswitch_3
    :try_start_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    .line 4284
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->utteranceId_:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    .line 4285
    goto :goto_1

    .line 4288
    :sswitch_4
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    .line 4289
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformData_:Lcom/google/protobuf/ByteString;

    move v0, v1

    move v1, v2

    .line 4290
    goto :goto_1

    .line 4293
    :sswitch_5
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    .line 4294
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformClippedRatio_:F

    move v0, v1

    move v1, v2

    .line 4295
    goto :goto_1

    .line 4298
    :sswitch_6
    const/4 v0, 0x0

    .line 4299
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 4300
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->toBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    move-object v3, v0

    .line 4302
    :goto_3
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 4303
    if-eqz v3, :cond_0

    .line 4304
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-virtual {v3, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    .line 4305
    invoke-virtual {v3}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 4307
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    move v0, v1

    move v1, v2

    .line 4308
    goto/16 :goto_1

    .line 4311
    :sswitch_7
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    .line 4312
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->startTimeUsec_:J

    move v0, v1

    move v1, v2

    .line 4313
    goto/16 :goto_1

    .line 4316
    :sswitch_8
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    .line 4317
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->endTimeUsec_:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    move v0, v1

    move v1, v2

    goto/16 :goto_1

    .line 4328
    :cond_2
    and-int/lit8 v0, v2, 0x2

    if-ne v0, v5, :cond_3

    .line 4329
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    .line 4331
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->makeExtensionsImmutable()V

    .line 4333
    return-void

    .line 4322
    :catch_0
    move-exception v0

    move v1, v2

    .line 4323
    :goto_4
    :try_start_3
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4328
    :catchall_0
    move-exception v0

    :goto_5
    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_4

    .line 4329
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    .line 4331
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->makeExtensionsImmutable()V

    throw v0

    .line 4324
    :catch_1
    move-exception v0

    move v1, v2

    .line 4325
    :goto_6
    :try_start_4
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4328
    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_5

    .line 4324
    :catch_2
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_6

    .line 4322
    :catch_3
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_4

    :cond_5
    move-object v3, v0

    goto/16 :goto_3

    :cond_6
    move v0, v2

    goto/16 :goto_2

    .line 4254
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2d -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4225
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4230
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4474
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedIsInitialized:B

    .line 4528
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedSerializedSize:I

    .line 4232
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4225
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4233
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4474
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedIsInitialized:B

    .line 4528
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedSerializedSize:I

    .line 4233
    return-void
.end method

.method static synthetic access$4802(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;)Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4225
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 4225
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4225
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 4225
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->utteranceId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4225
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->utteranceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4225
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4225
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformClippedRatio_:F

    return p1
.end method

.method static synthetic access$5302(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4225
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4225
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->startTimeUsec_:J

    return-wide p1
.end method

.method static synthetic access$5502(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4225
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->endTimeUsec_:J

    return-wide p1
.end method

.method static synthetic access$5602(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4225
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 1

    .prologue
    .line 4237
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 4465
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->SUCCESS:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 4466
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    .line 4467
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->utteranceId_:Ljava/lang/Object;

    .line 4468
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformData_:Lcom/google/protobuf/ByteString;

    .line 4469
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformClippedRatio_:F

    .line 4470
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 4471
    iput-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->startTimeUsec_:J

    .line 4472
    iput-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->endTimeUsec_:J

    .line 4473
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1

    .prologue
    .line 4629
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->access$4600()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4632
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4609
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4615
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4579
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4585
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4620
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4626
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4599
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4605
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4589
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4595
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    return-object p0
.end method


# virtual methods
.method public getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1

    .prologue
    .line 4441
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4225
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 1

    .prologue
    .line 4241
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    return-object v0
.end method

.method public getEndTimeUsec()J
    .locals 2

    .prologue
    .line 4461
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->endTimeUsec_:J

    return-wide v0
.end method

.method public getHypothesis(I)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 1
    .parameter

    .prologue
    .line 4374
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object p0
.end method

.method public getHypothesisCount()I
    .locals 1

    .prologue
    .line 4371
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHypothesisList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4364
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    return-object v0
.end method

.method public getHypothesisOrBuilder(I)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesisOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 4378
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesisOrBuilder;

    return-object p0
.end method

.method public getHypothesisOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesisOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4368
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4346
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4530
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedSerializedSize:I

    .line 4531
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4567
    :goto_0
    return v0

    .line 4534
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_8

    .line 4535
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->getNumber()I

    move-result v0

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v2

    :goto_1
    move v1, v2

    move v2, v0

    .line 4538
    :goto_2
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 4539
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 4538
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 4542
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_7

    .line 4543
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getUtteranceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v2

    .line 4546
    :goto_3
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_2

    .line 4547
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformData_:Lcom/google/protobuf/ByteString;

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4550
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_3

    .line 4551
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformClippedRatio_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4554
    :cond_3
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 4555
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4558
    :cond_4
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 4559
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->startTimeUsec_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4562
    :cond_5
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 4563
    iget-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->endTimeUsec_:J

    invoke-static {v6, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4566
    :cond_6
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedSerializedSize:I

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method public getStartTimeUsec()J
    .locals 2

    .prologue
    .line 4451
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->startTimeUsec_:J

    return-wide v0
.end method

.method public getStatus()Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;
    .locals 1

    .prologue
    .line 4357
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    return-object v0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4388
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->utteranceId_:Ljava/lang/Object;

    .line 4389
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4390
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 4398
    :goto_0
    return-object v1

    .line 4392
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 4394
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4395
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4396
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->utteranceId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4398
    goto :goto_0
.end method

.method public getUtteranceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 4403
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->utteranceId_:Ljava/lang/Object;

    .line 4404
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4405
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4407
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->utteranceId_:Ljava/lang/Object;

    .line 4410
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getWaveformClippedRatio()F
    .locals 1

    .prologue
    .line 4431
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformClippedRatio_:F

    return v0
.end method

.method public getWaveformData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 4421
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAlternates()Z
    .locals 2

    .prologue
    .line 4438
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

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

.method public hasEndTimeUsec()Z
    .locals 2

    .prologue
    .line 4458
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

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

.method public hasStartTimeUsec()Z
    .locals 2

    .prologue
    .line 4448
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4354
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUtteranceId()Z
    .locals 2

    .prologue
    .line 4385
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

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

.method public hasWaveformClippedRatio()Z
    .locals 2

    .prologue
    .line 4428
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

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

.method public hasWaveformData()Z
    .locals 2

    .prologue
    .line 4418
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4476
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedIsInitialized:B

    .line 4477
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 4496
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 4477
    goto :goto_0

    .line 4479
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasStatus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4480
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedIsInitialized:B

    move v0, v2

    .line 4481
    goto :goto_0

    :cond_2
    move v0, v2

    .line 4483
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getHypothesisCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 4484
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getHypothesis(I)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4485
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedIsInitialized:B

    move v0, v2

    .line 4486
    goto :goto_0

    .line 4483
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4489
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasAlternates()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4490
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4491
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedIsInitialized:B

    move v0, v2

    .line 4492
    goto :goto_0

    .line 4495
    :cond_5
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedIsInitialized:B

    move v0, v3

    .line 4496
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4225
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1

    .prologue
    .line 4630
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4225
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1

    .prologue
    .line 4634
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 4573
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 4501
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getSerializedSize()I

    .line 4502
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4503
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4505
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 4506
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4505
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4508
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_2

    .line 4509
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getUtteranceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4511
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_3

    .line 4512
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4514
    :cond_3
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_4

    .line 4515
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformClippedRatio_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 4517
    :cond_4
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    .line 4518
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4520
    :cond_5
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    .line 4521
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->startTimeUsec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 4523
    :cond_6
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_7

    .line 4524
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->endTimeUsec_:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 4526
    :cond_7
    return-void
.end method
