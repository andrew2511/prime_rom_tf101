.class public final Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CapabilitiesResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    }
.end annotation


# static fields
.field public static final CAPABILITIES_RESPONSE_FIELD_NUMBER:I = 0x15

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECOGNITION_LANGUAGE_FIELD_NUMBER:I = 0x1

.field public static final SYNTHESIS_VOICE_FIELD_NUMBER:I = 0x2

.field public static final capabilitiesResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            "Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private recognitionLanguage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private synthesisVoice_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 9189
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 9664
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    .line 9665
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->initFields()V

    .line 9673
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x15

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->capabilitiesResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 9138
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9250
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedIsInitialized:B

    .line 9282
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedSerializedSize:I

    .line 9139
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->initFields()V

    move v0, v1

    .line 9143
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 9144
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 9145
    sparse-switch v2, :sswitch_data_0

    .line 9150
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v4

    .line 9152
    goto :goto_0

    :sswitch_0
    move v0, v4

    .line 9148
    goto :goto_0

    .line 9157
    :sswitch_1
    and-int/lit8 v2, v1, 0x1

    if-eq v2, v4, :cond_1

    .line 9158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    .line 9159
    or-int/lit8 v1, v1, 0x1

    .line 9161
    :cond_1
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 9174
    :catch_0
    move-exception v0

    .line 9175
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9180
    :catchall_0
    move-exception v0

    and-int/lit8 v2, v1, 0x1

    if-ne v2, v4, :cond_2

    .line 9181
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    .line 9183
    :cond_2
    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_3

    .line 9184
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    .line 9186
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->makeExtensionsImmutable()V

    throw v0

    .line 9165
    :sswitch_2
    and-int/lit8 v2, v1, 0x2

    if-eq v2, v5, :cond_4

    .line 9166
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    .line 9167
    or-int/lit8 v1, v1, 0x2

    .line 9169
    :cond_4
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 9176
    :catch_1
    move-exception v0

    .line 9177
    :try_start_3
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9180
    :cond_5
    and-int/lit8 v0, v1, 0x1

    if-ne v0, v4, :cond_6

    .line 9181
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    .line 9183
    :cond_6
    and-int/lit8 v0, v1, 0x2

    if-ne v0, v5, :cond_7

    .line 9184
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    .line 9186
    :cond_7
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->makeExtensionsImmutable()V

    .line 9188
    return-void

    .line 9145
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 9116
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 9121
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9250
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedIsInitialized:B

    .line 9282
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedSerializedSize:I

    .line 9123
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9116
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 9124
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9250
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedIsInitialized:B

    .line 9282
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedSerializedSize:I

    .line 9124
    return-void
.end method

.method static synthetic access$11200(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 9116
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11202(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9116
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11300(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 9116
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11302(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9116
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .locals 1

    .prologue
    .line 9128
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 9247
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    .line 9248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    .line 9249
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1

    .prologue
    .line 9359
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->access$11000()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 9362
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9339
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9345
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9309
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9315
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9350
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9356
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9329
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9335
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9319
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9325
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9116
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .locals 1

    .prologue
    .line 9132
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9201
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRecognitionLanguage(I)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 1
    .parameter

    .prologue
    .line 9218
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    return-object p0
.end method

.method public getRecognitionLanguageCount()I
    .locals 1

    .prologue
    .line 9215
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecognitionLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9208
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    return-object v0
.end method

.method public getRecognitionLanguageOrBuilder(I)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguageOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 9222
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguageOrBuilder;

    return-object p0
.end method

.method public getRecognitionLanguageOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionLanguageOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9212
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 9284
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedSerializedSize:I

    .line 9285
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 9297
    :goto_0
    return v0

    :cond_0
    move v1, v4

    move v2, v4

    .line 9288
    :goto_1
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 9289
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 9288
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v1, v4

    .line 9292
    :goto_2
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 9293
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 9292
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 9296
    :cond_2
    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedSerializedSize:I

    move v0, v2

    .line 9297
    goto :goto_0
.end method

.method public getSynthesisVoice(I)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 1
    .parameter

    .prologue
    .line 9239
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object p0
.end method

.method public getSynthesisVoiceCount()I
    .locals 1

    .prologue
    .line 9236
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSynthesisVoiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9229
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    return-object v0
.end method

.method public getSynthesisVoiceOrBuilder(I)Lcom/google/protos/speech/service/SpeechService$SynthesisVoiceOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 9243
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoiceOrBuilder;

    return-object p0
.end method

.method public getSynthesisVoiceOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/speech/service/SpeechService$SynthesisVoiceOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9233
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9252
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedIsInitialized:B

    .line 9253
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 9268
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 9253
    goto :goto_0

    :cond_1
    move v0, v2

    .line 9255
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getRecognitionLanguageCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 9256
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getRecognitionLanguage(I)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9257
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedIsInitialized:B

    move v0, v2

    .line 9258
    goto :goto_0

    .line 9255
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 9261
    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getSynthesisVoiceCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 9262
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getSynthesisVoice(I)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_4

    .line 9263
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedIsInitialized:B

    move v0, v2

    .line 9264
    goto :goto_0

    .line 9261
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9267
    :cond_5
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedIsInitialized:B

    move v0, v3

    .line 9268
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9116
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1

    .prologue
    .line 9360
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9116
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->toBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1

    .prologue
    .line 9364
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->newBuilder(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

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
    .line 9303
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
    const/4 v3, 0x0

    .line 9273
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getSerializedSize()I

    move v1, v3

    .line 9274
    :goto_0
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 9275
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9274
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 9277
    :goto_1
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 9278
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9277
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 9280
    :cond_1
    return-void
.end method
