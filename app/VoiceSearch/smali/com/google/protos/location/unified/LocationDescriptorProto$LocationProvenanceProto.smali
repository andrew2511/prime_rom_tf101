.class public final Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LocationDescriptorProto.java"

# interfaces
.implements Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/location/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationProvenanceProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$Builder;,
        Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$LocationProvenance;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1008
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$1;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$1;-><init>()V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 1243
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;-><init>(Z)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;

    .line 1244
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->initFields()V

    .line 1245
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

    .line 980
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1081
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->memoizedIsInitialized:B

    .line 1095
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->memoizedSerializedSize:I

    .line 981
    invoke-direct {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->initFields()V

    .line 983
    const/4 v0, 0x0

    .line 984
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 985
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 986
    packed-switch v1, :pswitch_data_0

    .line 991
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 993
    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 989
    goto :goto_0

    .line 1005
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->makeExtensionsImmutable()V

    .line 1007
    return-void

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1005
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->makeExtensionsImmutable()V

    throw v0

    .line 1001
    :catch_1
    move-exception v0

    .line 1002
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

    .line 986
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
    .line 958
    invoke-direct {p0, p1, p2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 963
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1081
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->memoizedIsInitialized:B

    .line 1095
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->memoizedSerializedSize:I

    .line 965
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 958
    invoke-direct {p0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 966
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1081
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->memoizedIsInitialized:B

    .line 1095
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->memoizedSerializedSize:I

    .line 966
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 1

    .prologue
    .line 970
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1080
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$Builder;
    .locals 1

    .prologue
    .line 1164
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$Builder;->access$700()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1167
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1144
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1150
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1114
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1120
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1155
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1161
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1134
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1140
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1124
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1130
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 958
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 1

    .prologue
    .line 974
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1020
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    .prologue
    .line 1097
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->memoizedSerializedSize:I

    .line 1098
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1102
    :goto_0
    return v0

    .line 1100
    :cond_0
    const/4 v0, 0x0

    .line 1101
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1083
    iget-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->memoizedIsInitialized:B

    .line 1084
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 1087
    :goto_0
    return v0

    .line 1084
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1086
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->memoizedIsInitialized:B

    move v0, v2

    .line 1087
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 958
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->newBuilderForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$Builder;
    .locals 1

    .prologue
    .line 1165
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 958
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$Builder;
    .locals 1

    .prologue
    .line 1169
    invoke-static {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto$Builder;

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
    .line 1108
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
    .line 1092
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenanceProto;->getSerializedSize()I

    .line 1093
    return-void
.end method
