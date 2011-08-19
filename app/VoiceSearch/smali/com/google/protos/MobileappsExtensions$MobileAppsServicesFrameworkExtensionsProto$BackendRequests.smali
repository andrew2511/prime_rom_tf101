.class public final Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequestsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BackendRequests"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_CODE_FIELD_NUMBER:I = 0xb

.field public static final SERVICE_URI_FIELD_NUMBER:I = 0xa

.field public static final TIME_MS_FIELD_NUMBER:I = 0xc

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private responseCode_:I

.field private serviceUri_:Ljava/lang/Object;

.field private timeMs_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15333
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->PARSER:Lcom/google/protobuf/Parser;

    .line 15734
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    .line 15735
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->initFields()V

    .line 15736
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

    .line 15289
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15407
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->memoizedIsInitialized:B

    .line 15438
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->memoizedSerializedSize:I

    .line 15290
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->initFields()V

    .line 15293
    const/4 v0, 0x0

    .line 15294
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 15295
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 15296
    sparse-switch v1, :sswitch_data_0

    .line 15301
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 15303
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 15299
    goto :goto_0

    .line 15308
    :sswitch_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->bitField0_:I

    .line 15309
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->serviceUri_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 15324
    :catch_0
    move-exception v0

    .line 15325
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15330
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->makeExtensionsImmutable()V

    throw v0

    .line 15313
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->bitField0_:I

    .line 15314
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->responseCode_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 15326
    :catch_1
    move-exception v0

    .line 15327
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

    .line 15318
    :sswitch_3
    :try_start_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->bitField0_:I

    .line 15319
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->timeMs_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 15330
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->makeExtensionsImmutable()V

    .line 15332
    return-void

    .line 15296
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x52 -> :sswitch_1
        0x58 -> :sswitch_2
        0x60 -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/MobileappsExtensions$1;)V
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
    .line 15267
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 15272
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 15407
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->memoizedIsInitialized:B

    .line 15438
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->memoizedSerializedSize:I

    .line 15274
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15267
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 15275
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15407
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->memoizedIsInitialized:B

    .line 15438
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->memoizedSerializedSize:I

    .line 15275
    return-void
.end method

.method static synthetic access$17300(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 15267
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->serviceUri_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$17302(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15267
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->serviceUri_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17402(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15267
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->responseCode_:I

    return p1
.end method

.method static synthetic access$17502(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15267
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->timeMs_:I

    return p1
.end method

.method static synthetic access$17602(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15267
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
    .locals 1

    .prologue
    .line 15279
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 15403
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->serviceUri_:Ljava/lang/Object;

    .line 15404
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->responseCode_:I

    .line 15405
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->timeMs_:I

    .line 15406
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;
    .locals 1

    .prologue
    .line 15519
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->access$17100()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;
    .locals 1
    .parameter

    .prologue
    .line 15522
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->newBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15499
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15505
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15469
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15475
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15510
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15516
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15489
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15495
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15479
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15485
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15267
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
    .locals 1

    .prologue
    .line 15283
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15345
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 15389
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->responseCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 15440
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->memoizedSerializedSize:I

    .line 15441
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 15457
    :goto_0
    return v0

    .line 15443
    :cond_0
    const/4 v0, 0x0

    .line 15444
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 15445
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->getServiceUriBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15448
    :cond_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 15449
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->responseCode_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15452
    :cond_2
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 15453
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->timeMs_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15456
    :cond_3
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getServiceUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 15356
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->serviceUri_:Ljava/lang/Object;

    .line 15357
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15358
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 15366
    :goto_0
    return-object v1

    .line 15360
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 15362
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15363
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15364
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->serviceUri_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 15366
    goto :goto_0
.end method

.method public getServiceUriBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 15371
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->serviceUri_:Ljava/lang/Object;

    .line 15372
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15373
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15375
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->serviceUri_:Ljava/lang/Object;

    .line 15378
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getTimeMs()I
    .locals 1

    .prologue
    .line 15399
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->timeMs_:I

    return v0
.end method

.method public hasResponseCode()Z
    .locals 2

    .prologue
    .line 15386
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->bitField0_:I

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

.method public hasServiceUri()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 15353
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeMs()Z
    .locals 2

    .prologue
    .line 15396
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->bitField0_:I

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

    .line 15409
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->memoizedIsInitialized:B

    .line 15410
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 15421
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 15410
    goto :goto_0

    .line 15412
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->hasServiceUri()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15413
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->memoizedIsInitialized:B

    move v0, v2

    .line 15414
    goto :goto_0

    .line 15416
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->hasTimeMs()Z

    move-result v0

    if-nez v0, :cond_3

    .line 15417
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->memoizedIsInitialized:B

    move v0, v2

    .line 15418
    goto :goto_0

    .line 15420
    :cond_3
    iput-byte v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->memoizedIsInitialized:B

    move v0, v3

    .line 15421
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15267
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;
    .locals 1

    .prologue
    .line 15520
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->newBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15267
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->toBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;
    .locals 1

    .prologue
    .line 15524
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->newBuilder(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests$Builder;

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
    .line 15463
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
    .line 15426
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->getSerializedSize()I

    .line 15427
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 15428
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->getServiceUriBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15430
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 15431
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->responseCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 15433
    :cond_1
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 15434
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->timeMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 15436
    :cond_2
    return-void
.end method
