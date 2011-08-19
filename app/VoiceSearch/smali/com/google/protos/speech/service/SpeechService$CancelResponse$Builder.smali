.class public final Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$CancelResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$CancelResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$CancelResponse;",
        "Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$CancelResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20515
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 20516
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->maybeForceBuilderInitialization()V

    .line 20517
    return-void
.end method

.method static synthetic access$25200()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;
    .locals 1

    .prologue
    .line 20510
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;
    .locals 1

    .prologue
    .line 20522
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 20520
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20510
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->build()Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$CancelResponse;
    .locals 2

    .prologue
    .line 20539
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    move-result-object v0

    .line 20540
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 20541
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 20543
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20510
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$CancelResponse;
    .locals 2

    .prologue
    .line 20547
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 20548
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 20510
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20510
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;
    .locals 0

    .prologue
    .line 20526
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 20527
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 20510
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 20510
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20510
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;
    .locals 2

    .prologue
    .line 20531
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CancelResponse;)Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

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
    .line 20510
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 20510
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20510
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CancelResponse;
    .locals 1

    .prologue
    .line 20535
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 20557
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
    .line 20510
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 20510
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CancelResponse;)Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

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
    .line 20510
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20564
    const/4 v1, 0x0

    .line 20566
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20571
    if-eqz v0, :cond_0

    .line 20572
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CancelResponse;)Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

    .line 20575
    :cond_0
    return-object p0

    .line 20567
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 20568
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20569
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20571
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 20572
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CancelResponse;)Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;

    :cond_1
    throw v0

    .line 20571
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$CancelResponse;)Lcom/google/protos/speech/service/SpeechService$CancelResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 20552
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CancelResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 20553
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method
