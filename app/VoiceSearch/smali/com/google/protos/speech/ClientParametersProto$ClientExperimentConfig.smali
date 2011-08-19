.class public final Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClientParametersProto.java"

# interfaces
.implements Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/ClientParametersProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientExperimentConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_PARAMETERS_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;


# instance fields
.field private bitField0_:I

.field private clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 669
    new-instance v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$1;

    invoke-direct {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 923
    new-instance v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    .line 924
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    invoke-direct {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->initFields()V

    .line 925
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

    .line 627
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 698
    iput-byte v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedIsInitialized:B

    .line 715
    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedSerializedSize:I

    .line 628
    invoke-direct {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->initFields()V

    .line 631
    const/4 v0, 0x0

    move v1, v0

    .line 632
    :goto_0
    if-nez v1, :cond_1

    .line 633
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 634
    sparse-switch v0, :sswitch_data_0

    .line 639
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    :goto_1
    move v1, v0

    .line 659
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 637
    goto :goto_1

    .line 646
    :sswitch_1
    const/4 v0, 0x0

    .line 647
    iget v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_2

    .line 648
    iget-object v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    invoke-virtual {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->toBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    move-object v2, v0

    .line 650
    :goto_2
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    iput-object v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    .line 651
    if-eqz v2, :cond_0

    .line 652
    iget-object v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    invoke-virtual {v2, v0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    .line 653
    invoke-virtual {v2}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->buildPartial()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    .line 655
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->bitField0_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 656
    goto :goto_1

    .line 666
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->makeExtensionsImmutable()V

    .line 668
    return-void

    .line 660
    :catch_0
    move-exception v0

    .line 661
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->makeExtensionsImmutable()V

    throw v0

    .line 662
    :catch_1
    move-exception v0

    .line 663
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

    .line 634
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/ClientParametersProto$1;)V
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
    .line 605
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 610
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 698
    iput-byte v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedIsInitialized:B

    .line 715
    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedSerializedSize:I

    .line 612
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/ClientParametersProto$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 613
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 698
    iput-byte v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedIsInitialized:B

    .line 715
    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedSerializedSize:I

    .line 613
    return-void
.end method

.method static synthetic access$1302(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 605
    iput p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .locals 1

    .prologue
    .line 617
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 696
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    .line 697
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
    .locals 1

    .prologue
    .line 788
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->access$1100()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
    .locals 1
    .parameter

    .prologue
    .line 791
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->newBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 768
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 774
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 738
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 744
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 779
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 785
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 758
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 764
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 748
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 754
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    return-object p0
.end method


# virtual methods
.method public getClientParameters()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->getDefaultInstanceForType()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .locals 1

    .prologue
    .line 621
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 717
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedSerializedSize:I

    .line 718
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 726
    :goto_0
    return v0

    .line 720
    :cond_0
    const/4 v0, 0x0

    .line 721
    iget v1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 722
    iget-object v1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 725
    :cond_1
    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasClientParameters()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 689
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->bitField0_:I

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

    .line 700
    iget-byte v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedIsInitialized:B

    .line 701
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 704
    :goto_0
    return v0

    .line 701
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 703
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->memoizedIsInitialized:B

    move v0, v2

    .line 704
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->newBuilderForType()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
    .locals 1

    .prologue
    .line 789
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->newBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->toBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
    .locals 1

    .prologue
    .line 793
    invoke-static {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->newBuilder(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

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
    .line 732
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

    .line 709
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->getSerializedSize()I

    .line 710
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 711
    iget-object v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 713
    :cond_0
    return-void
.end method
