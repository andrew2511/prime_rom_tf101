.class public final Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$MediaDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$MediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$MediaData;",
        "Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$MediaDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private endOfData_:Z

.field private sequenceNumber_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21622
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 21721
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 21623
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->maybeForceBuilderInitialization()V

    .line 21624
    return-void
.end method

.method static synthetic access$26600()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;
    .locals 1

    .prologue
    .line 21617
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->create()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;
    .locals 1

    .prologue
    .line 21629
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 21627
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 21617
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->build()Lcom/google/protos/speech/service/SpeechService$MediaData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$MediaData;
    .locals 2

    .prologue
    .line 21652
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MediaData;

    move-result-object v0

    .line 21653
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MediaData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 21654
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 21656
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 21617
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MediaData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$MediaData;
    .locals 5

    .prologue
    .line 21660
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MediaData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$MediaData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 21661
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    .line 21662
    const/4 v2, 0x0

    .line 21663
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 21664
    or-int/lit8 v2, v2, 0x1

    .line 21666
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->data_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$MediaData;->access$26802(Lcom/google/protos/speech/service/SpeechService$MediaData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 21667
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 21668
    or-int/lit8 v2, v2, 0x2

    .line 21670
    :cond_1
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->endOfData_:Z

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$MediaData;->access$26902(Lcom/google/protos/speech/service/SpeechService$MediaData;Z)Z

    .line 21671
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 21672
    or-int/lit8 v1, v2, 0x4

    .line 21674
    :goto_0
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->sequenceNumber_:I

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$MediaData;->access$27002(Lcom/google/protos/speech/service/SpeechService$MediaData;I)I

    .line 21675
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MediaData;->access$27102(Lcom/google/protos/speech/service/SpeechService$MediaData;I)I

    .line 21676
    return-object v0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 21617
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 21617
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21633
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21634
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 21635
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    .line 21636
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->endOfData_:Z

    .line 21637
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    .line 21638
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->sequenceNumber_:I

    .line 21639
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    .line 21640
    return-object p0
.end method

.method public clearData()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;
    .locals 1

    .prologue
    .line 21738
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    .line 21739
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MediaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MediaData;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 21741
    return-object p0
.end method

.method public clearEndOfData()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;
    .locals 1

    .prologue
    .line 21759
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    .line 21760
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->endOfData_:Z

    .line 21762
    return-object p0
.end method

.method public clearSequenceNumber()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;
    .locals 1

    .prologue
    .line 21780
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    .line 21781
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->sequenceNumber_:I

    .line 21783
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 21617
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 21617
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 21617
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;
    .locals 2

    .prologue
    .line 21644
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->create()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MediaData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MediaData;)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

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
    .line 21617
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 21726
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 21617
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MediaData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 21617
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MediaData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MediaData;
    .locals 1

    .prologue
    .line 21648
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MediaData;

    move-result-object v0

    return-object v0
.end method

.method public getEndOfData()Z
    .locals 1

    .prologue
    .line 21750
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->endOfData_:Z

    return v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .prologue
    .line 21771
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->sequenceNumber_:I

    return v0
.end method

.method public hasData()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 21723
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEndOfData()Z
    .locals 2

    .prologue
    .line 21747
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

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

.method public hasSequenceNumber()Z
    .locals 2

    .prologue
    .line 21768
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 21694
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->hasData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21696
    const/4 v0, 0x0

    .line 21698
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
    .line 21617
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 21617
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$MediaData;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MediaData;)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

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
    .line 21617
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21705
    const/4 v1, 0x0

    .line 21707
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$MediaData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21712
    if-eqz v0, :cond_0

    .line 21713
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MediaData;)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    .line 21716
    :cond_0
    return-object p0

    .line 21708
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 21709
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$MediaData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21710
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21712
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 21713
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MediaData;)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    :cond_1
    throw v0

    .line 21712
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$MediaData;)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 21680
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MediaData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 21690
    :goto_0
    return-object v0

    .line 21681
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$MediaData;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21682
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$MediaData;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    .line 21684
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$MediaData;->hasEndOfData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21685
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$MediaData;->getEndOfData()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->setEndOfData(Z)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    .line 21687
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$MediaData;->hasSequenceNumber()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21688
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$MediaData;->getSequenceNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->setSequenceNumber(I)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    :cond_3
    move-object v0, p0

    .line 21690
    goto :goto_0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 21729
    if-nez p1, :cond_0

    .line 21730
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21732
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    .line 21733
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 21735
    return-object p0
.end method

.method public setEndOfData(Z)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 21753
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    .line 21754
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->endOfData_:Z

    .line 21756
    return-object p0
.end method

.method public setSequenceNumber(I)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 21774
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->bitField0_:I

    .line 21775
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->sequenceNumber_:I

    .line 21777
    return-object p0
.end method
