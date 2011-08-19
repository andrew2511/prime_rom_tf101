.class public final Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PartialResult.java"

# interfaces
.implements Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/PartialResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PartialRecognitionResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final PART_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private part_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 398
    new-instance v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->defaultInstance:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    .line 399
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->defaultInstance:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    invoke-direct {v0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->initFields()V

    .line 400
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
    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v4, 0x1

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 121
    iput-byte v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->memoizedIsInitialized:B

    .line 138
    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->memoizedSerializedSize:I

    .line 43
    invoke-direct {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->initFields()V

    move v0, v1

    .line 47
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 48
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 49
    sparse-switch v2, :sswitch_data_0

    .line 54
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v4

    .line 56
    goto :goto_0

    :sswitch_0
    move v0, v4

    .line 52
    goto :goto_0

    .line 61
    :sswitch_1
    and-int/lit8 v2, v1, 0x1

    if-eq v2, v4, :cond_1

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;

    .line 63
    or-int/lit8 v1, v1, 0x1

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_2

    .line 77
    iget-object v1, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->makeExtensionsImmutable()V

    throw v0

    .line 76
    :cond_3
    and-int/lit8 v0, v1, 0x1

    if-ne v0, v4, :cond_4

    .line 77
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;

    .line 79
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->makeExtensionsImmutable()V

    .line 81
    return-void

    .line 72
    :catch_1
    move-exception v0

    .line 73
    :try_start_2
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/PartialResult$1;)V
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
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 121
    iput-byte v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->memoizedIsInitialized:B

    .line 138
    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->memoizedSerializedSize:I

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/PartialResult$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 121
    iput-byte v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->memoizedIsInitialized:B

    .line 138
    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->memoizedSerializedSize:I

    .line 28
    return-void
.end method

.method static synthetic access$300(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->defaultInstance:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;

    .line 120
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->access$100()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 1
    .parameter

    .prologue
    .line 214
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->newBuilder()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 161
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 167
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 171
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 177
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->getDefaultInstanceForType()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->defaultInstance:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPart(I)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    return-object p0
.end method

.method public getPartCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPartList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;

    return-object v0
.end method

.method public getPartOrBuilder(I)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPartOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPartOrBuilder;

    return-object p0
.end method

.method public getPartOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPartOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 140
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->memoizedSerializedSize:I

    .line 141
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 149
    :goto_0
    return v0

    :cond_0
    move v1, v2

    .line 144
    :goto_1
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 145
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 144
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 148
    :cond_1
    iput v2, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->memoizedSerializedSize:I

    move v0, v2

    .line 149
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 123
    iget-byte v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->memoizedIsInitialized:B

    .line 124
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 127
    :goto_0
    return v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->memoizedIsInitialized:B

    move v0, v2

    .line 127
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->newBuilderForType()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->newBuilder()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->toBuilder()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 1

    .prologue
    .line 216
    invoke-static {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->newBuilder(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

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
    .line 155
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
    .line 132
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->getSerializedSize()I

    .line 133
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 134
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 133
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method
