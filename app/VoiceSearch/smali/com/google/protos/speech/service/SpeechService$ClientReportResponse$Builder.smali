.class public final Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$ClientReportResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;",
        "Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$ClientReportResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22713
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 22714
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->maybeForceBuilderInitialization()V

    .line 22715
    return-void
.end method

.method static synthetic access$28200()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;
    .locals 1

    .prologue
    .line 22708
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;
    .locals 1

    .prologue
    .line 22720
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 22718
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22708
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;
    .locals 2

    .prologue
    .line 22737
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;

    move-result-object v0

    .line 22738
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22739
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 22741
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22708
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;
    .locals 2

    .prologue
    .line 22745
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 22746
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 22708
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22708
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;
    .locals 0

    .prologue
    .line 22724
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 22725
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 22708
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 22708
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22708
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;
    .locals 2

    .prologue
    .line 22729
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;)Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

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
    .line 22708
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 22708
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22708
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;
    .locals 1

    .prologue
    .line 22733
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 22755
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
    .line 22708
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 22708
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;)Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

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
    .line 22708
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22762
    const/4 v1, 0x0

    .line 22764
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22769
    if-eqz v0, :cond_0

    .line 22770
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;)Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

    .line 22773
    :cond_0
    return-object p0

    .line 22765
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 22766
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22767
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22769
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 22770
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;)Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

    :cond_1
    throw v0

    .line 22769
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;)Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 22750
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 22751
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method
