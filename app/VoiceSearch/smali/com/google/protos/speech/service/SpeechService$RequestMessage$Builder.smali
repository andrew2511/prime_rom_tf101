.class public final Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RequestMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$RequestMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
        "Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$RequestMessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private enableDebugPassword_:Ljava/lang/Object;

.field private enableDebug_:Z

.field private header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5941
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 6047
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 6111
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebugPassword_:Ljava/lang/Object;

    .line 5942
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->maybeForceBuilderInitialization()V

    .line 5943
    return-void
.end method

.method static synthetic access$6500()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1

    .prologue
    .line 5937
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1

    .prologue
    .line 5948
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 5946
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 2

    .prologue
    .line 5971
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    .line 5972
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5973
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5975
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 5

    .prologue
    .line 5979
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 5980
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    .line 5981
    const/4 v2, 0x0

    .line 5982
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5983
    or-int/lit8 v2, v2, 0x1

    .line 5985
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->access$6702(Lcom/google/protos/speech/service/SpeechService$RequestMessage;Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 5986
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5987
    or-int/lit8 v2, v2, 0x2

    .line 5989
    :cond_1
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebug_:Z

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->access$6802(Lcom/google/protos/speech/service/SpeechService$RequestMessage;Z)Z

    .line 5990
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 5991
    or-int/lit8 v1, v2, 0x4

    .line 5993
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebugPassword_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->access$6902(Lcom/google/protos/speech/service/SpeechService$RequestMessage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5994
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->access$7002(Lcom/google/protos/speech/service/SpeechService$RequestMessage;I)I

    .line 5995
    return-object v0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1

    .prologue
    .line 5952
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 5953
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 5954
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    .line 5955
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebug_:Z

    .line 5956
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    .line 5957
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebugPassword_:Ljava/lang/Object;

    .line 5958
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    .line 5959
    return-object p0
.end method

.method public clearEnableDebug()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1

    .prologue
    .line 6104
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    .line 6105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebug_:Z

    .line 6107
    return-object p0
.end method

.method public clearEnableDebugPassword()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1

    .prologue
    .line 6147
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    .line 6148
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getEnableDebugPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebugPassword_:Ljava/lang/Object;

    .line 6150
    return-object p0
.end method

.method public clearHeader()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1

    .prologue
    .line 6083
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 6085
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    .line 6086
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 2

    .prologue
    .line 5963
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

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
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 1

    .prologue
    .line 5967
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public getEnableDebug()Z
    .locals 1

    .prologue
    .line 6095
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebug_:Z

    return v0
.end method

.method public getEnableDebugPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6116
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebugPassword_:Ljava/lang/Object;

    .line 6117
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6118
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6119
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebugPassword_:Ljava/lang/Object;

    .line 6122
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getEnableDebugPasswordBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 6127
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebugPassword_:Ljava/lang/Object;

    .line 6128
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6129
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6131
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebugPassword_:Ljava/lang/Object;

    .line 6134
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getHeader()Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1

    .prologue
    .line 6052
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object v0
.end method

.method public hasEnableDebug()Z
    .locals 2

    .prologue
    .line 6092
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

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

.method public hasEnableDebugPassword()Z
    .locals 2

    .prologue
    .line 6113
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

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

.method public hasHeader()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6049
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6016
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->hasHeader()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 6024
    :goto_0
    return v0

    .line 6020
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 6022
    goto :goto_0

    .line 6024
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
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
    .line 5937
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5937
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

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
    .line 5937
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6031
    const/4 v1, 0x0

    .line 6033
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6038
    if-eqz v0, :cond_0

    .line 6039
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    .line 6042
    :cond_0
    return-object p0

    .line 6034
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 6035
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6036
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6038
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 6039
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    :cond_1
    throw v0

    .line 6038
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5999
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 6012
    :goto_0
    return-object v0

    .line 6000
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6001
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getHeader()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->mergeHeader(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    .line 6003
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->hasEnableDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6004
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getEnableDebug()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->setEnableDebug(Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    .line 6006
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->hasEnableDebugPassword()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6007
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    .line 6008
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->access$6900(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebugPassword_:Ljava/lang/Object;

    .line 6011
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    move-object v0, p0

    .line 6012
    goto :goto_0
.end method

.method public mergeHeader(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 2
    .parameter

    .prologue
    .line 6071
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6073
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->newBuilder(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 6079
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    .line 6080
    return-object p0

    .line 6076
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    goto :goto_0
.end method

.method public setEnableDebug(Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6098
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    .line 6099
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebug_:Z

    .line 6101
    return-object p0
.end method

.method public setEnableDebugPassword(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6138
    if-nez p1, :cond_0

    .line 6139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6141
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    .line 6142
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebugPassword_:Ljava/lang/Object;

    .line 6144
    return-object p0
.end method

.method public setEnableDebugPasswordBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6154
    if-nez p1, :cond_0

    .line 6155
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6157
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    .line 6158
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebugPassword_:Ljava/lang/Object;

    .line 6160
    return-object p0
.end method

.method public setHeader(Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6065
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->build()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 6067
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    .line 6068
    return-object p0
.end method

.method public setHeader(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6055
    if-nez p1, :cond_0

    .line 6056
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6058
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 6060
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    .line 6061
    return-object p0
.end method
