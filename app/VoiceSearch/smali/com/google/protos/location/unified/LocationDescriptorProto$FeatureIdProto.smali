.class public final Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LocationDescriptorProto.java"

# interfaces
.implements Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/location/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureIdProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    }
.end annotation


# static fields
.field public static final CELL_ID_FIELD_NUMBER:I = 0x1

.field public static final FPRINT_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;


# instance fields
.field private bitField0_:I

.field private cellId_:J

.field private fprint_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1681
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$1;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$1;-><init>()V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 1961
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;-><init>(Z)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    .line 1962
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->initFields()V

    .line 1963
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

    .line 1642
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1721
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedIsInitialized:B

    .line 1741
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedSerializedSize:I

    .line 1643
    invoke-direct {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->initFields()V

    .line 1646
    const/4 v0, 0x0

    .line 1647
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1648
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1649
    sparse-switch v1, :sswitch_data_0

    .line 1654
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 1656
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 1652
    goto :goto_0

    .line 1661
    :sswitch_1
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    .line 1662
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1672
    :catch_0
    move-exception v0

    .line 1673
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1678
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->makeExtensionsImmutable()V

    throw v0

    .line 1666
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    .line 1667
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1674
    :catch_1
    move-exception v0

    .line 1675
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

    .line 1678
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->makeExtensionsImmutable()V

    .line 1680
    return-void

    .line 1649
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
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
    .line 1620
    invoke-direct {p0, p1, p2}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1625
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1721
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedIsInitialized:B

    .line 1741
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedSerializedSize:I

    .line 1627
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1620
    invoke-direct {p0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1628
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1721
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedIsInitialized:B

    .line 1741
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedSerializedSize:I

    .line 1628
    return-void
.end method

.method static synthetic access$1802(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1620
    iput-wide p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    return-wide p1
.end method

.method static synthetic access$1902(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1620
    iput-wide p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    return-wide p1
.end method

.method static synthetic access$2002(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1620
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1

    .prologue
    .line 1632
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1718
    iput-wide v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    .line 1719
    iput-wide v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    .line 1720
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    .locals 1

    .prologue
    .line 1818
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->access$1600()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1821
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1798
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1804
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1768
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1774
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1809
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1815
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1788
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1794
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1778
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1784
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    return-object p0
.end method


# virtual methods
.method public getCellId()J
    .locals 2

    .prologue
    .line 1704
    iget-wide v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1620
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1

    .prologue
    .line 1636
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    return-object v0
.end method

.method public getFprint()J
    .locals 2

    .prologue
    .line 1714
    iget-wide v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1693
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1743
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedSerializedSize:I

    .line 1744
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1756
    :goto_0
    return v0

    .line 1746
    :cond_0
    const/4 v0, 0x0

    .line 1747
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_1

    .line 1748
    iget-wide v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1751
    :cond_1
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    .line 1752
    iget-wide v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    invoke-static {v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1755
    :cond_2
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasCellId()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1701
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFprint()Z
    .locals 2

    .prologue
    .line 1711
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1723
    iget-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedIsInitialized:B

    .line 1724
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 1727
    :goto_0
    return v0

    .line 1724
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1726
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->memoizedIsInitialized:B

    move v0, v2

    .line 1727
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1620
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->newBuilderForType()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    .locals 1

    .prologue
    .line 1819
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1620
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    .locals 1

    .prologue
    .line 1823
    invoke-static {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

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
    .line 1762
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1732
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->getSerializedSize()I

    .line 1733
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 1734
    iget-wide v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 1736
    :cond_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 1737
    iget-wide v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 1739
    :cond_1
    return-void
.end method
