.class public final Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LocationDescriptorProto.java"

# interfaces
.implements Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;",
        ">;",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 881
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 882
    invoke-direct {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->maybeForceBuilderInitialization()V

    .line 883
    return-void
.end method

.method static synthetic access$400()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;
    .locals 1

    .prologue
    .line 876
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->create()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;
    .locals 1

    .prologue
    .line 888
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 886
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->build()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 2

    .prologue
    .line 905
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    move-result-object v0

    .line 906
    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 907
    invoke-static {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 909
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 2

    .prologue
    .line 913
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V

    .line 914
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->clear()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->clear()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;
    .locals 0

    .prologue
    .line 892
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 893
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->clone()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->clone()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->clone()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;
    .locals 2

    .prologue
    .line 897
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->create()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->clone()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 1

    .prologue
    .line 901
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 923
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 876
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 876
    check-cast p1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    invoke-virtual {p0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 876
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 930
    const/4 v1, 0x0

    .line 932
    :try_start_0
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    .line 941
    :cond_0
    return-object p0

    .line 933
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 934
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 935
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 937
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 938
    invoke-virtual {p0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;

    :cond_1
    throw v0

    .line 937
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 918
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducerProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 919
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method
