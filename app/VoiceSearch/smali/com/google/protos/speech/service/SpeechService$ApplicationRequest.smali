.class public final Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$ApplicationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApplicationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    }
.end annotation


# static fields
.field public static final APPLICATION_REQUEST_FIELD_NUMBER:I = 0xf

.field public static final INPUT_DATA_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final applicationRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;


# instance fields
.field private bitField0_:I

.field private inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 20672
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 20938
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    .line 20939
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->initFields()V

    .line 20947
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xf

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->applicationRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x1

    .line 20630
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20701
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->memoizedIsInitialized:B

    .line 20724
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->memoizedSerializedSize:I

    .line 20631
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->initFields()V

    .line 20634
    const/4 v0, 0x0

    move v1, v0

    .line 20635
    :goto_0
    if-nez v1, :cond_1

    .line 20636
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 20637
    sparse-switch v0, :sswitch_data_0

    .line 20642
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    :goto_1
    move v1, v0

    .line 20662
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 20640
    goto :goto_1

    .line 20649
    :sswitch_1
    const/4 v0, 0x0

    .line 20650
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_2

    .line 20651
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->toBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    move-object v2, v0

    .line 20653
    :goto_2
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 20654
    if-eqz v2, :cond_0

    .line 20655
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {v2, v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    .line 20656
    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 20658
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->bitField0_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 20659
    goto :goto_1

    .line 20669
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->makeExtensionsImmutable()V

    .line 20671
    return-void

    .line 20663
    :catch_0
    move-exception v0

    .line 20664
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20669
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->makeExtensionsImmutable()V

    throw v0

    .line 20665
    :catch_1
    move-exception v0

    .line 20666
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

    :cond_2
    move-object v2, v0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    .line 20637
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 20608
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 20613
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 20701
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->memoizedIsInitialized:B

    .line 20724
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->memoizedSerializedSize:I

    .line 20615
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20608
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 20616
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20701
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->memoizedIsInitialized:B

    .line 20724
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->memoizedSerializedSize:I

    .line 20616
    return-void
.end method

.method static synthetic access$25702(Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20608
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object p1
.end method

.method static synthetic access$25802(Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20608
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    .locals 1

    .prologue
    .line 20620
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 20699
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 20700
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .locals 1

    .prologue
    .line 20797
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->access$25500()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 20800
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20777
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20783
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20747
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20753
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20788
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20794
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20767
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20773
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20757
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20763
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20608
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    .locals 1

    .prologue
    .line 20624
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    return-object v0
.end method

.method public getInputData()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 1

    .prologue
    .line 20695
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20684
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 20726
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->memoizedSerializedSize:I

    .line 20727
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 20735
    :goto_0
    return v0

    .line 20729
    :cond_0
    const/4 v0, 0x0

    .line 20730
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 20731
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20734
    :cond_1
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasInputData()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 20692
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 20703
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->memoizedIsInitialized:B

    .line 20704
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 20713
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 20704
    goto :goto_0

    .line 20706
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->hasInputData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20707
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->getInputData()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 20708
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->memoizedIsInitialized:B

    move v0, v3

    .line 20709
    goto :goto_0

    .line 20712
    :cond_2
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->memoizedIsInitialized:B

    move v0, v2

    .line 20713
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20608
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .locals 1

    .prologue
    .line 20798
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20608
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->toBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .locals 1

    .prologue
    .line 20802
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->newBuilder(Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

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
    .line 20741
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 20718
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->getSerializedSize()I

    .line 20719
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 20720
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 20722
    :cond_0
    return-void
.end method
