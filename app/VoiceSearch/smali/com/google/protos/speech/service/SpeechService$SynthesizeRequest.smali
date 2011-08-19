.class public final Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SynthesizeRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SynthesizeRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    }
.end annotation


# static fields
.field public static final AUDIO_CHUNK_SIZE_FIELD_NUMBER:I = 0x4

.field public static final ENCODING_FIELD_NUMBER:I = 0x1

.field public static final PARAMS_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_FIELD_NUMBER:I = 0x5

.field public static final SSML_FIELD_NUMBER:I = 0x2

.field public static final SYNTHESIZE_REQUEST_FIELD_NUMBER:I = 0xd

.field public static final VOICE_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

.field public static final synthesizeRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            "Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private audioChunkSize_:I

.field private bitField0_:I

.field private encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

.field private request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

.field private ssml_:Ljava/lang/Object;

.field private voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 18848
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 19482
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    .line 19483
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->initFields()V

    .line 19491
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xd

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->synthesizeRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 18761
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18955
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->memoizedIsInitialized:B

    .line 19005
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->memoizedSerializedSize:I

    .line 18762
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->initFields()V

    .line 18765
    const/4 v0, 0x0

    move v1, v0

    .line 18766
    :goto_0
    if-nez v1, :cond_3

    .line 18767
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 18768
    sparse-switch v0, :sswitch_data_0

    .line 18773
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v4

    :goto_1
    move v1, v0

    .line 18838
    goto :goto_0

    :sswitch_0
    move v0, v4

    .line 18771
    goto :goto_1

    .line 18780
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 18781
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$Encoding;->valueOf(I)Lcom/google/protos/speech/service/SpeechService$Encoding;

    move-result-object v0

    .line 18782
    if-eqz v0, :cond_7

    .line 18783
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    .line 18784
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    move v0, v1

    goto :goto_1

    .line 18789
    :sswitch_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    .line 18790
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->ssml_:Ljava/lang/Object;

    move v0, v1

    .line 18791
    goto :goto_1

    .line 18795
    :sswitch_3
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    .line 18796
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->toBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    move-object v2, v0

    .line 18798
    :goto_2
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    .line 18799
    if-eqz v2, :cond_0

    .line 18800
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    invoke-virtual {v2, v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    .line 18801
    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    .line 18803
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    move v0, v1

    .line 18804
    goto :goto_1

    .line 18807
    :sswitch_4
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    .line 18808
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->audioChunkSize_:I

    move v0, v1

    .line 18809
    goto :goto_1

    .line 18813
    :sswitch_5
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v2, 0x10

    if-ne v0, v2, :cond_5

    .line 18814
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->toBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    move-object v2, v0

    .line 18816
    :goto_3
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 18817
    if-eqz v2, :cond_1

    .line 18818
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {v2, v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    .line 18819
    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 18821
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    move v0, v1

    .line 18822
    goto/16 :goto_1

    .line 18826
    :sswitch_6
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_4

    .line 18827
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->toBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    move-object v2, v0

    .line 18829
    :goto_4
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    .line 18830
    if-eqz v2, :cond_2

    .line 18831
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    invoke-virtual {v2, v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    .line 18832
    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    .line 18834
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 18835
    goto/16 :goto_1

    .line 18845
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->makeExtensionsImmutable()V

    .line 18847
    return-void

    .line 18839
    :catch_0
    move-exception v0

    .line 18840
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18845
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->makeExtensionsImmutable()V

    throw v0

    .line 18841
    :catch_1
    move-exception v0

    .line 18842
    :try_start_2
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    move-object v2, v3

    goto :goto_4

    :cond_5
    move-object v2, v3

    goto :goto_3

    :cond_6
    move-object v2, v3

    goto/16 :goto_2

    :cond_7
    move v0, v1

    goto/16 :goto_1

    .line 18768
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
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
    .line 18739
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 18744
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 18955
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->memoizedIsInitialized:B

    .line 19005
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->memoizedSerializedSize:I

    .line 18746
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18739
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 18747
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18955
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->memoizedIsInitialized:B

    .line 19005
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->memoizedSerializedSize:I

    .line 18747
    return-void
.end method

.method static synthetic access$23202(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;Lcom/google/protos/speech/service/SpeechService$Encoding;)Lcom/google/protos/speech/service/SpeechService$Encoding;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18739
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    return-object p1
.end method

.method static synthetic access$23300(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 18739
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->ssml_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$23302(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18739
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->ssml_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$23402(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18739
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object p1
.end method

.method static synthetic access$23502(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18739
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->audioChunkSize_:I

    return p1
.end method

.method static synthetic access$23602(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18739
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object p1
.end method

.method static synthetic access$23702(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18739
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    return-object p1
.end method

.method static synthetic access$23802(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18739
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;
    .locals 1

    .prologue
    .line 18751
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 18948
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->ULAW:Lcom/google/protos/speech/service/SpeechService$Encoding;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 18949
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->ssml_:Ljava/lang/Object;

    .line 18950
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    .line 18951
    const/16 v0, 0x400

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->audioChunkSize_:I

    .line 18952
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 18953
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    .line 18954
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1

    .prologue
    .line 19098
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->access$23000()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 19101
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19078
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19084
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19048
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19054
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19089
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19095
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19068
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19074
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19058
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19064
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    return-object p0
.end method


# virtual methods
.method public getAudioChunkSize()I
    .locals 1

    .prologue
    .line 18924
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->audioChunkSize_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18739
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;
    .locals 1

    .prologue
    .line 18755
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;

    return-object v0
.end method

.method public getEncoding()Lcom/google/protos/speech/service/SpeechService$Encoding;
    .locals 1

    .prologue
    .line 18871
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    return-object v0
.end method

.method public getParams()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 1

    .prologue
    .line 18944
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18860
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRequest()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 1

    .prologue
    .line 18934
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 19007
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->memoizedSerializedSize:I

    .line 19008
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 19036
    :goto_0
    return v0

    .line 19010
    :cond_0
    const/4 v0, 0x0

    .line 19011
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 19012
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$Encoding;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 19015
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 19016
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->getSsmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19019
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 19020
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19023
    :cond_3
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 19024
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->audioChunkSize_:I

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 19027
    :cond_4
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 19028
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19031
    :cond_5
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 19032
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19035
    :cond_6
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getSsml()Ljava/lang/String;
    .locals 3

    .prologue
    .line 18881
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->ssml_:Ljava/lang/Object;

    .line 18882
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 18883
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 18891
    :goto_0
    return-object v1

    .line 18885
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 18887
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 18888
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18889
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->ssml_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 18891
    goto :goto_0
.end method

.method public getSsmlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 18896
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->ssml_:Ljava/lang/Object;

    .line 18897
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18898
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18900
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->ssml_:Ljava/lang/Object;

    .line 18903
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getVoice()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 1

    .prologue
    .line 18914
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object v0
.end method

.method public hasAudioChunkSize()Z
    .locals 2

    .prologue
    .line 18921
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

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

    .line 18868
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

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
    .line 18941
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

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
    .line 18931
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

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
    .line 18878
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

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
    .line 18911
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

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

    .line 18957
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->memoizedIsInitialized:B

    .line 18958
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 18979
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 18958
    goto :goto_0

    .line 18960
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->hasEncoding()Z

    move-result v0

    if-nez v0, :cond_2

    .line 18961
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->memoizedIsInitialized:B

    move v0, v2

    .line 18962
    goto :goto_0

    .line 18964
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->hasVoice()Z

    move-result v0

    if-nez v0, :cond_3

    .line 18965
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->memoizedIsInitialized:B

    move v0, v2

    .line 18966
    goto :goto_0

    .line 18968
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->getVoice()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18969
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->memoizedIsInitialized:B

    move v0, v2

    .line 18970
    goto :goto_0

    .line 18972
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->hasRequest()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18973
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->getRequest()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    .line 18974
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->memoizedIsInitialized:B

    move v0, v2

    .line 18975
    goto :goto_0

    .line 18978
    :cond_5
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->memoizedIsInitialized:B

    move v0, v3

    .line 18979
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18739
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1

    .prologue
    .line 19099
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18739
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->toBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;
    .locals 1

    .prologue
    .line 19103
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->newBuilder(Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;)Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest$Builder;

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
    .line 19042
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 18984
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->getSerializedSize()I

    .line 18985
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 18986
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$Encoding;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 18988
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 18989
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->getSsmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18991
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 18992
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->voice_:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18994
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 18995
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->audioChunkSize_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 18997
    :cond_3
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 18998
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->request_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 19000
    :cond_4
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 19001
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->params_:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 19003
    :cond_5
    return-void
.end method
