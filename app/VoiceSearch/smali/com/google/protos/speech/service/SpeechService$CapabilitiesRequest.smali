.class public final Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CapabilitiesRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;
    }
.end annotation


# static fields
.field public static final CAPABILITIES_REQUEST_FIELD_NUMBER:I = 0x12

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERY_RECOGNITION_LANGUAGES_FIELD_NUMBER:I = 0x1

.field public static final QUERY_SYNTHESIS_VOICES_FIELD_NUMBER:I = 0x2

.field public static final capabilitiesRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            "Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private queryRecognitionLanguages_:Z

.field private querySynthesisVoices_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 8802
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 9082
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    .line 9083
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->initFields()V

    .line 9091
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x12

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->capabilitiesRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 8763
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8842
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedIsInitialized:B

    .line 8862
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedSerializedSize:I

    .line 8764
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->initFields()V

    .line 8767
    const/4 v0, 0x0

    .line 8768
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 8769
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 8770
    sparse-switch v1, :sswitch_data_0

    .line 8775
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 8777
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 8773
    goto :goto_0

    .line 8782
    :sswitch_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    .line 8783
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->queryRecognitionLanguages_:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 8793
    :catch_0
    move-exception v0

    .line 8794
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8799
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->makeExtensionsImmutable()V

    throw v0

    .line 8787
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    .line 8788
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->querySynthesisVoices_:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 8795
    :catch_1
    move-exception v0

    .line 8796
    :try_start_3
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8799
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->makeExtensionsImmutable()V

    .line 8801
    return-void

    .line 8770
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 8741
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 8746
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8842
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedIsInitialized:B

    .line 8862
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedSerializedSize:I

    .line 8748
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8741
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 8749
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8842
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedIsInitialized:B

    .line 8862
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedSerializedSize:I

    .line 8749
    return-void
.end method

.method static synthetic access$10602(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8741
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->queryRecognitionLanguages_:Z

    return p1
.end method

.method static synthetic access$10702(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8741
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->querySynthesisVoices_:Z

    return p1
.end method

.method static synthetic access$10802(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8741
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    .locals 1

    .prologue
    .line 8753
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8839
    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->queryRecognitionLanguages_:Z

    .line 8840
    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->querySynthesisVoices_:Z

    .line 8841
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;
    .locals 1

    .prologue
    .line 8939
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->access$10400()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8942
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8919
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8925
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8889
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8895
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8930
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8936
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8909
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8915
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8899
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8905
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    .locals 1

    .prologue
    .line 8757
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8814
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getQueryRecognitionLanguages()Z
    .locals 1

    .prologue
    .line 8825
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->queryRecognitionLanguages_:Z

    return v0
.end method

.method public getQuerySynthesisVoices()Z
    .locals 1

    .prologue
    .line 8835
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->querySynthesisVoices_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 8864
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedSerializedSize:I

    .line 8865
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8877
    :goto_0
    return v0

    .line 8867
    :cond_0
    const/4 v0, 0x0

    .line 8868
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 8869
    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->queryRecognitionLanguages_:Z

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8872
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 8873
    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->querySynthesisVoices_:Z

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8876
    :cond_2
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasQueryRecognitionLanguages()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8822
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasQuerySynthesisVoices()Z
    .locals 2

    .prologue
    .line 8832
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

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
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 8844
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedIsInitialized:B

    .line 8845
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 8848
    :goto_0
    return v0

    .line 8845
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 8847
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedIsInitialized:B

    move v0, v2

    .line 8848
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;
    .locals 1

    .prologue
    .line 8940
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->toBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;
    .locals 1

    .prologue
    .line 8944
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->newBuilder(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

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
    .line 8883
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 8853
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->getSerializedSize()I

    .line 8854
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 8855
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->queryRecognitionLanguages_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 8857
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 8858
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->querySynthesisVoices_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 8860
    :cond_1
    return-void
.end method
