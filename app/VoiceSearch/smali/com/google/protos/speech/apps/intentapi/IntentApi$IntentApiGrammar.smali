.class public final Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IntentApi.java"

# interfaces
.implements Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammarOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/apps/intentapi/IntentApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntentApiGrammar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    }
.end annotation


# static fields
.field public static final GRXML_GRAMMAR_FIELD_NUMBER:I = 0x4

.field public static final INTENT_API_GRAMMAR_FIELD_NUMBER:I = 0xd

.field public static final LANGUAGE_MODEL_FIELD_NUMBER:I = 0x1

.field public static final MAX_NBEST_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECOGNITION_CONTEXT_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

.field public static final intentApiGrammar:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$Grammar;",
            "Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private grxmlGrammar_:Ljava/lang/Object;

.field private languageModel_:Ljava/lang/Object;

.field private maxNbest_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 114
    new-instance v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$1;

    invoke-direct {v0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->PARSER:Lcom/google/protobuf/Parser;

    .line 626
    new-instance v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->defaultInstance:Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    .line 627
    sget-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->defaultInstance:Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    invoke-direct {v0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->initFields()V

    .line 635
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Grammar;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getDefaultInstance()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getDefaultInstance()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xd

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->intentApiGrammar:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 57
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 222
    iput-byte v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedIsInitialized:B

    .line 248
    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedSerializedSize:I

    .line 58
    invoke-direct {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->initFields()V

    .line 61
    const/4 v0, 0x0

    move v1, v0

    .line 62
    :goto_0
    if-nez v1, :cond_2

    .line 63
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 64
    sparse-switch v0, :sswitch_data_0

    .line 69
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    :goto_1
    move v1, v0

    .line 104
    goto :goto_0

    :sswitch_0
    move v0, v4

    .line 67
    goto :goto_1

    .line 76
    :sswitch_1
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    .line 77
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->languageModel_:Ljava/lang/Object;

    move v0, v1

    .line 78
    goto :goto_1

    .line 81
    :sswitch_2
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    .line 82
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->maxNbest_:I

    move v0, v1

    .line 83
    goto :goto_1

    .line 86
    :sswitch_3
    const/4 v0, 0x0

    .line 87
    iget v2, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 88
    iget-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    invoke-virtual {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->toBuilder()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    move-object v2, v0

    .line 90
    :goto_2
    sget-object v0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    .line 91
    if-eqz v2, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    invoke-virtual {v2, v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->mergeFrom(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 93
    invoke-virtual {v2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->buildPartial()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    .line 95
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    move v0, v1

    .line 96
    goto :goto_1

    .line 99
    :sswitch_4
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    .line 100
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->grxmlGrammar_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    move v0, v1

    goto :goto_1

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->makeExtensionsImmutable()V

    .line 113
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->makeExtensionsImmutable()V

    throw v0

    .line 107
    :catch_1
    move-exception v0

    .line 108
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

    :cond_3
    move-object v2, v0

    goto :goto_2

    .line 64
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/apps/intentapi/IntentApi$1;)V
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
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 40
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 222
    iput-byte v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedIsInitialized:B

    .line 248
    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedSerializedSize:I

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/apps/intentapi/IntentApi$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 222
    iput-byte v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedIsInitialized:B

    .line 248
    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedSerializedSize:I

    .line 43
    return-void
.end method

.method static synthetic access$300(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->languageModel_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->languageModel_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->maxNbest_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->grxmlGrammar_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->grxmlGrammar_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->defaultInstance:Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 217
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->languageModel_:Ljava/lang/Object;

    .line 218
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->maxNbest_:I

    .line 219
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->grxmlGrammar_:Ljava/lang/Object;

    .line 221
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 1

    .prologue
    .line 333
    invoke-static {}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->access$100()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 1
    .parameter

    .prologue
    .line 336
    invoke-static {}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->newBuilder()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->mergeFrom(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    sget-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    sget-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 283
    sget-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 289
    sget-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    sget-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    sget-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    sget-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    sget-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 293
    sget-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 299
    sget-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getDefaultInstanceForType()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->defaultInstance:Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    return-object v0
.end method

.method public getGrxmlGrammar()Ljava/lang/String;
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->grxmlGrammar_:Ljava/lang/Object;

    .line 191
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 192
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 200
    :goto_0
    return-object v1

    .line 194
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 196
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iput-object v2, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->grxmlGrammar_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 200
    goto :goto_0
.end method

.method public getGrxmlGrammarBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->grxmlGrammar_:Ljava/lang/Object;

    .line 206
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 207
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 209
    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->grxmlGrammar_:Ljava/lang/Object;

    .line 212
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getLanguageModel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->languageModel_:Ljava/lang/Object;

    .line 138
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 139
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 147
    :goto_0
    return-object v1

    .line 141
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 143
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iput-object v2, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->languageModel_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 147
    goto :goto_0
.end method

.method public getLanguageModelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->languageModel_:Ljava/lang/Object;

    .line 153
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 154
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 156
    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->languageModel_:Ljava/lang/Object;

    .line 159
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getMaxNbest()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->maxNbest_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRecognitionContext()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 250
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedSerializedSize:I

    .line 251
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 271
    :goto_0
    return v0

    .line 253
    :cond_0
    const/4 v0, 0x0

    .line 254
    iget v1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getLanguageModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 258
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 259
    iget v1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->maxNbest_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 262
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 263
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 266
    :cond_3
    iget v1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 267
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getGrxmlGrammarBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 270
    :cond_4
    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasGrxmlGrammar()Z
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

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

.method public hasLanguageModel()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 134
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxNbest()Z
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

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

.method public hasRecognitionContext()Z
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

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
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 224
    iget-byte v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedIsInitialized:B

    .line 225
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 228
    :goto_0
    return v0

    .line 225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedIsInitialized:B

    move v0, v2

    .line 228
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->newBuilderForType()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 1

    .prologue
    .line 334
    invoke-static {}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->newBuilder()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->toBuilder()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-static {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->newBuilder(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

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
    .line 277
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

    .line 233
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getSerializedSize()I

    .line 234
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getLanguageModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 237
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 238
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->maxNbest_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 240
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 241
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 243
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getGrxmlGrammarBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 246
    :cond_3
    return-void
.end method
