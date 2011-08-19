.class public final Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LocationDescriptorProto.java"

# interfaces
.implements Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/location/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationProducerProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;,
        Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$LocationProducer;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 626
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$1;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$1;-><init>()V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 948
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;-><init>(Z)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    .line 949
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->initFields()V

    .line 950
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

    .line 598
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 786
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->memoizedIsInitialized:B

    .line 800
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->memoizedSerializedSize:I

    .line 599
    invoke-direct {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->initFields()V

    .line 601
    const/4 v0, 0x0

    .line 602
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 603
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 604
    packed-switch v1, :pswitch_data_0

    .line 609
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 611
    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 607
    goto :goto_0

    .line 623
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->makeExtensionsImmutable()V

    .line 625
    return-void

    .line 617
    :catch_0
    move-exception v0

    .line 618
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->makeExtensionsImmutable()V

    throw v0

    .line 619
    :catch_1
    move-exception v0

    .line 620
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

    .line 604
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V
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
    .line 576
    invoke-direct {p0, p1, p2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 581
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 786
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->memoizedIsInitialized:B

    .line 800
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->memoizedSerializedSize:I

    .line 583
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 584
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 786
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->memoizedIsInitialized:B

    .line 800
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->memoizedSerializedSize:I

    .line 584
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 1

    .prologue
    .line 588
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 785
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;
    .locals 1

    .prologue
    .line 869
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->access$400()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 872
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 849
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 855
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 819
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 825
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 866
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 829
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 835
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 1

    .prologue
    .line 592
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 638
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    .prologue
    .line 802
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->memoizedSerializedSize:I

    .line 803
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 807
    :goto_0
    return v0

    .line 805
    :cond_0
    const/4 v0, 0x0

    .line 806
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 788
    iget-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->memoizedIsInitialized:B

    .line 789
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 792
    :goto_0
    return v0

    .line 789
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 791
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->memoizedIsInitialized:B

    move v0, v2

    .line 792
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->newBuilderForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;
    .locals 1

    .prologue
    .line 870
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;
    .locals 1

    .prologue
    .line 874
    invoke-static {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

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
    .line 813
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->getSerializedSize()I

    .line 798
    return-void
.end method
