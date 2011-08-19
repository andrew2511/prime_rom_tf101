.class public final Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$ApplicationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApplicationResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;
    }
.end annotation


# static fields
.field public static final APPLICATION_ERROR_CODE_FIELD_NUMBER:I = 0x2

.field public static final APPLICATION_RESPONSE_FIELD_NUMBER:I = 0xf

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_FIELD_NUMBER:I = 0x1

.field public static final applicationResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;


# instance fields
.field private applicationErrorCode_:I

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 21037
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 21351
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    .line 21352
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->initFields()V

    .line 21360
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xf

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->applicationResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 20990
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21077
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedIsInitialized:B

    .line 21103
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedSerializedSize:I

    .line 20991
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->initFields()V

    .line 20994
    const/4 v0, 0x0

    move v1, v0

    .line 20995
    :goto_0
    if-nez v1, :cond_2

    .line 20996
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 20997
    sparse-switch v0, :sswitch_data_0

    .line 21002
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    move v1, v0

    .line 21027
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 21000
    goto :goto_1

    .line 21009
    :sswitch_1
    const/4 v0, 0x0

    .line 21010
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_3

    .line 21011
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->toBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    move-object v2, v0

    .line 21013
    :goto_2
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 21014
    if-eqz v2, :cond_0

    .line 21015
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {v2, v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    .line 21016
    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 21018
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

    move v0, v1

    .line 21019
    goto :goto_1

    .line 21022
    :sswitch_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

    .line 21023
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->applicationErrorCode_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    move v0, v1

    goto :goto_1

    .line 21034
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->makeExtensionsImmutable()V

    .line 21036
    return-void

    .line 21028
    :catch_0
    move-exception v0

    .line 21029
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21034
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->makeExtensionsImmutable()V

    throw v0

    .line 21030
    :catch_1
    move-exception v0

    .line 21031
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

    .line 20997
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 20968
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 20973
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 21077
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedIsInitialized:B

    .line 21103
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedSerializedSize:I

    .line 20975
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20968
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 20976
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21077
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedIsInitialized:B

    .line 21103
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedSerializedSize:I

    .line 20976
    return-void
.end method

.method static synthetic access$26202(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20968
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object p1
.end method

.method static synthetic access$26302(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20968
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->applicationErrorCode_:I

    return p1
.end method

.method static synthetic access$26402(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20968
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    .locals 1

    .prologue
    .line 20980
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 21074
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 21075
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->applicationErrorCode_:I

    .line 21076
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;
    .locals 1

    .prologue
    .line 21180
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->access$26000()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 21183
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21160
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21166
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21130
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21136
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21171
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21177
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21150
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21156
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21140
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21146
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    return-object p0
.end method


# virtual methods
.method public getApplicationErrorCode()I
    .locals 1

    .prologue
    .line 21070
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->applicationErrorCode_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20968
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    .locals 1

    .prologue
    .line 20984
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21049
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 1

    .prologue
    .line 21060
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 21105
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedSerializedSize:I

    .line 21106
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 21118
    :goto_0
    return v0

    .line 21108
    :cond_0
    const/4 v0, 0x0

    .line 21109
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 21110
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21113
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 21114
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->applicationErrorCode_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21117
    :cond_2
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasApplicationErrorCode()Z
    .locals 2

    .prologue
    .line 21067
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

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

.method public hasResponse()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 21057
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

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

    .line 21079
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedIsInitialized:B

    .line 21080
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 21089
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 21080
    goto :goto_0

    .line 21082
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21083
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 21084
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedIsInitialized:B

    move v0, v3

    .line 21085
    goto :goto_0

    .line 21088
    :cond_2
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedIsInitialized:B

    move v0, v2

    .line 21089
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20968
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;
    .locals 1

    .prologue
    .line 21181
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20968
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->toBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;
    .locals 1

    .prologue
    .line 21185
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->newBuilder(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

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
    .line 21124
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

    .line 21094
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->getSerializedSize()I

    .line 21095
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 21096
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 21098
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 21099
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->applicationErrorCode_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 21101
    :cond_1
    return-void
.end method
