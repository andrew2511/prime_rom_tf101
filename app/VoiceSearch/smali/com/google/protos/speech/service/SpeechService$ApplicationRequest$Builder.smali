.class public final Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$ApplicationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;",
        "Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$ApplicationRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20809
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 20892
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 20810
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 20811
    return-void
.end method

.method static synthetic access$25500()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .locals 1

    .prologue
    .line 20804
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .locals 1

    .prologue
    .line 20816
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 20814
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20804
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    .locals 2

    .prologue
    .line 20835
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-result-object v0

    .line 20836
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 20837
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 20839
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20804
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    .locals 4

    .prologue
    .line 20843
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 20844
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->bitField0_:I

    .line 20845
    const/4 v2, 0x0

    .line 20846
    and-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 20847
    or-int/lit8 v1, v2, 0x1

    .line 20849
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->access$25702(Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 20850
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->access$25802(Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;I)I

    .line 20851
    return-object v0

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 20804
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20804
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .locals 1

    .prologue
    .line 20820
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 20821
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 20822
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->bitField0_:I

    .line 20823
    return-object p0
.end method

.method public clearInputData()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .locals 1

    .prologue
    .line 20928
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 20930
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->bitField0_:I

    .line 20931
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 20804
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 20804
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20804
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .locals 2

    .prologue
    .line 20827
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

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
    .line 20804
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 20804
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20804
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    .locals 1

    .prologue
    .line 20831
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInputData()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 1

    .prologue
    .line 20897
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object v0
.end method

.method public hasInputData()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 20894
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->bitField0_:I

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
    .locals 1

    .prologue
    .line 20863
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->hasInputData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20864
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->getInputData()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20866
    const/4 v0, 0x0

    .line 20869
    :goto_0
    return v0

    :cond_0
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
    .line 20804
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 20804
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

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
    .line 20804
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20876
    const/4 v1, 0x0

    .line 20878
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20883
    if-eqz v0, :cond_0

    .line 20884
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    .line 20887
    :cond_0
    return-object p0

    .line 20879
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 20880
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20881
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20883
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 20884
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    :cond_1
    throw v0

    .line 20883
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 20855
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 20859
    :goto_0
    return-object v0

    .line 20856
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->hasInputData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20857
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->getInputData()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->mergeInputData(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    :cond_1
    move-object v0, p0

    .line 20859
    goto :goto_0
.end method

.method public mergeInputData(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 20916
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 20918
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->newBuilder(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 20924
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->bitField0_:I

    .line 20925
    return-object p0

    .line 20921
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    goto :goto_0
.end method

.method public setInputData(Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 20910
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 20912
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->bitField0_:I

    .line 20913
    return-object p0
.end method

.method public setInputData(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 20900
    if-nez p1, :cond_0

    .line 20901
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20903
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 20905
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->bitField0_:I

    .line 20906
    return-object p0
.end method
