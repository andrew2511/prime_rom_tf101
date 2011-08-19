.class public final Lcom/google/protos/speech/service/SpeechService$MediaData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$MediaDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x1

.field public static final END_OF_DATA_FIELD_NUMBER:I = 0x2

.field public static final MEDIA_DATA_FIELD_NUMBER:I = 0x10

.field public static final MEDIA_DATA_RESPONSE_FIELD_NUMBER:I = 0x14

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$MediaData;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEQUENCE_NUMBER_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$MediaData;

.field public static final mediaData:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            "Lcom/google/protos/speech/service/SpeechService$MediaData;",
            ">;"
        }
    .end annotation
.end field

.field public static final mediaDataResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            "Lcom/google/protos/speech/service/SpeechService$MediaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private endOfData_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private sequenceNumber_:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 21451
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MediaData$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$MediaData$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->PARSER:Lcom/google/protobuf/Parser;

    .line 21790
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MediaData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MediaData;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MediaData;

    .line 21791
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MediaData;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$MediaData;->initFields()V

    .line 21799
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MediaData;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MediaData;

    move-result-object v2

    const/16 v4, 0x10

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->mediaData:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 21811
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MediaData;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MediaData;

    move-result-object v2

    const/16 v4, 0x14

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->mediaDataResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 21407
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21502
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->memoizedIsInitialized:B

    .line 21529
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->memoizedSerializedSize:I

    .line 21408
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData;->initFields()V

    .line 21411
    const/4 v0, 0x0

    .line 21412
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 21413
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 21414
    sparse-switch v1, :sswitch_data_0

    .line 21419
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/speech/service/SpeechService$MediaData;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 21421
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 21417
    goto :goto_0

    .line 21426
    :sswitch_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->bitField0_:I

    .line 21427
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->data_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 21442
    :catch_0
    move-exception v0

    .line 21443
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21448
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData;->makeExtensionsImmutable()V

    throw v0

    .line 21431
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->bitField0_:I

    .line 21432
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->endOfData_:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 21444
    :catch_1
    move-exception v0

    .line 21445
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

    .line 21436
    :sswitch_3
    :try_start_4
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->bitField0_:I

    .line 21437
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->sequenceNumber_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 21448
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData;->makeExtensionsImmutable()V

    .line 21450
    return-void

    .line 21414
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 21385
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$MediaData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 21390
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 21502
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->memoizedIsInitialized:B

    .line 21529
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->memoizedSerializedSize:I

    .line 21392
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21385
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$MediaData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 21393
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21502
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->memoizedIsInitialized:B

    .line 21529
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->memoizedSerializedSize:I

    .line 21393
    return-void
.end method

.method static synthetic access$26802(Lcom/google/protos/speech/service/SpeechService$MediaData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21385
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->data_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$26902(Lcom/google/protos/speech/service/SpeechService$MediaData;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21385
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->endOfData_:Z

    return p1
.end method

.method static synthetic access$27002(Lcom/google/protos/speech/service/SpeechService$MediaData;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21385
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->sequenceNumber_:I

    return p1
.end method

.method static synthetic access$27102(Lcom/google/protos/speech/service/SpeechService$MediaData;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21385
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MediaData;
    .locals 1

    .prologue
    .line 21397
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MediaData;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21498
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->data_:Lcom/google/protobuf/ByteString;

    .line 21499
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->endOfData_:Z

    .line 21500
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->sequenceNumber_:I

    .line 21501
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;
    .locals 1

    .prologue
    .line 21610
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->access$26600()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$MediaData;)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 21613
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaData;->newBuilder()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MediaData;)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$MediaData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21590
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MediaData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21596
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$MediaData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21560
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MediaData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21566
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$MediaData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21601
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MediaData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21607
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$MediaData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21580
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MediaData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21586
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$MediaData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21570
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MediaData;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21576
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaData;

    return-object p0
.end method


# virtual methods
.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 21474
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 21385
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MediaData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MediaData;
    .locals 1

    .prologue
    .line 21401
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MediaData;

    return-object v0
.end method

.method public getEndOfData()Z
    .locals 1

    .prologue
    .line 21484
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->endOfData_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$MediaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21463
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .prologue
    .line 21494
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->sequenceNumber_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 21531
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->memoizedSerializedSize:I

    .line 21532
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 21548
    :goto_0
    return v0

    .line 21534
    :cond_0
    const/4 v0, 0x0

    .line 21535
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 21536
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->data_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21539
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 21540
    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->endOfData_:Z

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 21543
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 21544
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->sequenceNumber_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21547
    :cond_3
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasData()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 21471
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEndOfData()Z
    .locals 2

    .prologue
    .line 21481
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->bitField0_:I

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

.method public hasSequenceNumber()Z
    .locals 2

    .prologue
    .line 21491
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->bitField0_:I

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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 21504
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->memoizedIsInitialized:B

    .line 21505
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 21512
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 21505
    goto :goto_0

    .line 21507
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData;->hasData()Z

    move-result v0

    if-nez v0, :cond_2

    .line 21508
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->memoizedIsInitialized:B

    move v0, v3

    .line 21509
    goto :goto_0

    .line 21511
    :cond_2
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->memoizedIsInitialized:B

    move v0, v2

    .line 21512
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 21385
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;
    .locals 1

    .prologue
    .line 21611
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaData;->newBuilder()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 21385
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData;->toBuilder()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;
    .locals 1

    .prologue
    .line 21615
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData;->newBuilder(Lcom/google/protos/speech/service/SpeechService$MediaData;)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

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
    .line 21554
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

    .line 21517
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData;->getSerializedSize()I

    .line 21518
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 21519
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->data_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 21521
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 21522
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->endOfData_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 21524
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 21525
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData;->sequenceNumber_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 21527
    :cond_2
    return-void
.end method
