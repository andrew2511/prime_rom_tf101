.class public final Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognizeAckOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$RecognizeAck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RecognizeAck;",
        "Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$RecognizeAckOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22964
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 22965
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->maybeForceBuilderInitialization()V

    .line 22966
    return-void
.end method

.method static synthetic access$28500()Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;
    .locals 1

    .prologue
    .line 22959
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;
    .locals 1

    .prologue
    .line 22971
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 22969
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognizeAck;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$RecognizeAck;
    .locals 2

    .prologue
    .line 22988
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognizeAck;

    move-result-object v0

    .line 22989
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22990
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 22992
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognizeAck;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognizeAck;
    .locals 2

    .prologue
    .line 22996
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognizeAck;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 22997
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 22959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;
    .locals 0

    .prologue
    .line 22975
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 22976
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 22959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 22959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;
    .locals 2

    .prologue
    .line 22980
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognizeAck;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeAck;)Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;

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
    .line 22959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 22959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognizeAck;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognizeAck;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognizeAck;
    .locals 1

    .prologue
    .line 22984
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognizeAck;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 23006
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
    .line 22959
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 22959
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$RecognizeAck;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeAck;)Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;

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
    .line 22959
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23013
    const/4 v1, 0x0

    .line 23015
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeAck;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognizeAck;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23020
    if-eqz v0, :cond_0

    .line 23021
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeAck;)Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;

    .line 23024
    :cond_0
    return-object p0

    .line 23016
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 23017
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognizeAck;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23018
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23020
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 23021
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeAck;)Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;

    :cond_1
    throw v0

    .line 23020
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeAck;)Lcom/google/protos/speech/service/SpeechService$RecognizeAck$Builder;
    .locals 1
    .parameter

    .prologue
    .line 23001
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeAck;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognizeAck;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 23002
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method
