.class public final Lcom/google/protos/MobileappsExtensions$TextModification;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$TextModificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextModification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$TextModification$Builder;,
        Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;
    }
.end annotation


# static fields
.field public static final INPUT_LENGTH_FIELD_NUMBER:I = 0x2

.field public static final MODIFICATION_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$TextModification;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$TextModification;


# instance fields
.field private bitField0_:I

.field private inputLength_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8515
    new-instance v0, Lcom/google/protos/MobileappsExtensions$TextModification$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$TextModification$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->PARSER:Lcom/google/protobuf/Parser;

    .line 8848
    new-instance v0, Lcom/google/protos/MobileappsExtensions$TextModification;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$TextModification;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->defaultInstance:Lcom/google/protos/MobileappsExtensions$TextModification;

    .line 8849
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->defaultInstance:Lcom/google/protos/MobileappsExtensions$TextModification;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$TextModification;->initFields()V

    .line 8850
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
    const/4 v3, 0x1

    const/4 v0, -0x1

    .line 8472
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8605
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedIsInitialized:B

    .line 8625
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedSerializedSize:I

    .line 8473
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$TextModification;->initFields()V

    .line 8476
    const/4 v0, 0x0

    .line 8477
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 8478
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 8479
    sparse-switch v1, :sswitch_data_0

    .line 8484
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/MobileappsExtensions$TextModification;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 8486
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 8482
    goto :goto_0

    .line 8491
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    .line 8492
    invoke-static {v1}, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    move-result-object v1

    .line 8493
    if-eqz v1, :cond_0

    .line 8494
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

    .line 8495
    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 8506
    :catch_0
    move-exception v0

    .line 8507
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8512
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification;->makeExtensionsImmutable()V

    throw v0

    .line 8500
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

    .line 8501
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->inputLength_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 8508
    :catch_1
    move-exception v0

    .line 8509
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

    .line 8512
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification;->makeExtensionsImmutable()V

    .line 8514
    return-void

    .line 8479
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 8450
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$TextModification;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 8455
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8605
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedIsInitialized:B

    .line 8625
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedSerializedSize:I

    .line 8457
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8450
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$TextModification;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 8458
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8605
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedIsInitialized:B

    .line 8625
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedSerializedSize:I

    .line 8458
    return-void
.end method

.method static synthetic access$9702(Lcom/google/protos/MobileappsExtensions$TextModification;Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;)Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8450
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    return-object p1
.end method

.method static synthetic access$9802(Lcom/google/protos/MobileappsExtensions$TextModification;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8450
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->inputLength_:I

    return p1
.end method

.method static synthetic access$9902(Lcom/google/protos/MobileappsExtensions$TextModification;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8450
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 1

    .prologue
    .line 8462
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->defaultInstance:Lcom/google/protos/MobileappsExtensions$TextModification;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 8602
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    .line 8603
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->inputLength_:I

    .line 8604
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1

    .prologue
    .line 8702
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->access$9500()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8705
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->newBuilder()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8682
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$TextModification;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8688
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$TextModification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8652
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$TextModification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8658
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$TextModification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8693
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$TextModification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8699
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$TextModification;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8672
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$TextModification;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8678
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$TextModification;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8662
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$TextModification;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8668
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$TextModification;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8450
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 1

    .prologue
    .line 8466
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->defaultInstance:Lcom/google/protos/MobileappsExtensions$TextModification;

    return-object v0
.end method

.method public getInputLength()I
    .locals 1

    .prologue
    .line 8598
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->inputLength_:I

    return v0
.end method

.method public getModification()Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;
    .locals 1

    .prologue
    .line 8588
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$TextModification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8527
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 8627
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedSerializedSize:I

    .line 8628
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8640
    :goto_0
    return v0

    .line 8630
    :cond_0
    const/4 v0, 0x0

    .line 8631
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 8632
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8635
    :cond_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 8636
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->inputLength_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8639
    :cond_2
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasInputLength()Z
    .locals 2

    .prologue
    .line 8595
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

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

.method public hasModification()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8585
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

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
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 8607
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedIsInitialized:B

    .line 8608
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 8611
    :goto_0
    return v0

    .line 8608
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 8610
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->memoizedIsInitialized:B

    move v0, v2

    .line 8611
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8450
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1

    .prologue
    .line 8703
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->newBuilder()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8450
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification;->toBuilder()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1

    .prologue
    .line 8707
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$TextModification;->newBuilder(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

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
    .line 8646
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

    .line 8616
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification;->getSerializedSize()I

    .line 8617
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 8618
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 8620
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 8621
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification;->inputLength_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 8623
    :cond_1
    return-void
.end method
