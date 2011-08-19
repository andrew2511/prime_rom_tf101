.class public final Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$ClientReportRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientReportRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_ID_FIELD_NUMBER:I = 0x3

.field public static final CLIENT_REPORT_FIELD_NUMBER:I = 0x2

.field public static final CLIENT_REPORT_REQUEST_FIELD_NUMBER:I = 0x11

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final clientReportRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            "Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;


# instance fields
.field private bitField0_:I

.field private clientId_:Ljava/lang/Object;

.field private clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 22154
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 22529
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    .line 22530
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->initFields()V

    .line 22538
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x11

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientReportRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 22107
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22217
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->memoizedIsInitialized:B

    .line 22245
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->memoizedSerializedSize:I

    .line 22108
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->initFields()V

    .line 22111
    const/4 v0, 0x0

    move v1, v0

    .line 22112
    :goto_0
    if-nez v1, :cond_2

    .line 22113
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 22114
    sparse-switch v0, :sswitch_data_0

    .line 22119
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    move v1, v0

    .line 22144
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 22117
    goto :goto_1

    .line 22126
    :sswitch_1
    const/4 v0, 0x0

    .line 22127
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_3

    .line 22128
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->toBuilder()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    move-object v2, v0

    .line 22130
    :goto_2
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    .line 22131
    if-eqz v2, :cond_0

    .line 22132
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    invoke-virtual {v2, v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 22133
    invoke-virtual {v2}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    .line 22135
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->bitField0_:I

    move v0, v1

    .line 22136
    goto :goto_1

    .line 22139
    :sswitch_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->bitField0_:I

    .line 22140
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientId_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    move v0, v1

    goto :goto_1

    .line 22151
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->makeExtensionsImmutable()V

    .line 22153
    return-void

    .line 22145
    :catch_0
    move-exception v0

    .line 22146
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22151
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->makeExtensionsImmutable()V

    throw v0

    .line 22147
    :catch_1
    move-exception v0

    .line 22148
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

    .line 22114
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
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
    .line 22085
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 22090
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 22217
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->memoizedIsInitialized:B

    .line 22245
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->memoizedSerializedSize:I

    .line 22092
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22085
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 22093
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22217
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->memoizedIsInitialized:B

    .line 22245
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->memoizedSerializedSize:I

    .line 22093
    return-void
.end method

.method static synthetic access$27802(Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22085
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    return-object p1
.end method

.method static synthetic access$27900(Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 22085
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$27902(Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22085
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28002(Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22085
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;
    .locals 1

    .prologue
    .line 22097
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 22214
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    .line 22215
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientId_:Ljava/lang/Object;

    .line 22216
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    .locals 1

    .prologue
    .line 22322
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->access$27600()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 22325
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22302
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22308
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22272
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22278
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22313
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22319
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22292
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22298
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22282
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22288
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    return-object p0
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 22187
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientId_:Ljava/lang/Object;

    .line 22188
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 22189
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 22197
    :goto_0
    return-object v1

    .line 22191
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 22193
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 22194
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22195
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 22197
    goto :goto_0
.end method

.method public getClientIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 22202
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientId_:Ljava/lang/Object;

    .line 22203
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22204
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22206
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientId_:Ljava/lang/Object;

    .line 22209
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getClientReport()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .locals 1

    .prologue
    .line 22177
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22085
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;
    .locals 1

    .prologue
    .line 22101
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22166
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 22247
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->memoizedSerializedSize:I

    .line 22248
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 22260
    :goto_0
    return v0

    .line 22250
    :cond_0
    const/4 v0, 0x0

    .line 22251
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 22252
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22255
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 22256
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->getClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22259
    :cond_2
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasClientId()Z
    .locals 2

    .prologue
    .line 22184
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->bitField0_:I

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

.method public hasClientReport()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 22174
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->bitField0_:I

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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22219
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->memoizedIsInitialized:B

    .line 22220
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 22231
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 22220
    goto :goto_0

    .line 22222
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->hasClientReport()Z

    move-result v0

    if-nez v0, :cond_2

    .line 22223
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->memoizedIsInitialized:B

    move v0, v2

    .line 22224
    goto :goto_0

    .line 22226
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->getClientReport()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 22227
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->memoizedIsInitialized:B

    move v0, v2

    .line 22228
    goto :goto_0

    .line 22230
    :cond_3
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->memoizedIsInitialized:B

    move v0, v3

    .line 22231
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22085
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    .locals 1

    .prologue
    .line 22323
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22085
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->toBuilder()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    .locals 1

    .prologue
    .line 22327
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->newBuilder(Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

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
    .line 22266
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

    .line 22236
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->getSerializedSize()I

    .line 22237
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 22238
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientReport_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 22240
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 22241
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->getClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 22243
    :cond_1
    return-void
.end method
