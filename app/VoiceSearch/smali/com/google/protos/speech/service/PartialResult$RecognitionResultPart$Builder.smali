.class public final Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PartialResult.java"

# interfaces
.implements Lcom/google/protos/speech/service/PartialResult$RecognitionResultPartOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
        "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPartOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private stabilityConfidence_:D

.field private transcript_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 739
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->transcript_:Ljava/lang/Object;

    .line 652
    invoke-direct {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->maybeForceBuilderInitialization()V

    .line 653
    return-void
.end method

.method static synthetic access$500()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 1

    .prologue
    .line 646
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->create()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 1

    .prologue
    .line 658
    new-instance v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 656
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->build()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 2

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->buildPartial()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v0

    .line 680
    invoke-virtual {v0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 681
    invoke-static {v0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 683
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->buildPartial()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 5

    .prologue
    .line 687
    new-instance v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/PartialResult$1;)V

    .line 688
    iget v1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    .line 689
    const/4 v2, 0x0

    .line 690
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 691
    or-int/lit8 v2, v2, 0x1

    .line 693
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->transcript_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->access$702(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 695
    or-int/lit8 v1, v2, 0x2

    .line 697
    :goto_0
    iget-wide v2, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->stabilityConfidence_:D

    invoke-static {v0, v2, v3}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->access$802(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;D)D

    .line 698
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->access$902(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;I)I

    .line 699
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->clear()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->clear()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 2

    .prologue
    .line 662
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 663
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->transcript_:Ljava/lang/Object;

    .line 664
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    .line 665
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->stabilityConfidence_:D

    .line 666
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    .line 667
    return-object p0
.end method

.method public clearStabilityConfidence()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 2

    .prologue
    .line 806
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    .line 807
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->stabilityConfidence_:D

    .line 809
    return-object p0
.end method

.method public clearTranscript()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 1

    .prologue
    .line 775
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    .line 776
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getDefaultInstance()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getTranscript()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->transcript_:Ljava/lang/Object;

    .line 778
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->clone()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->clone()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->clone()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 2

    .prologue
    .line 671
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->create()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->buildPartial()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

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
    .line 646
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->clone()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 1

    .prologue
    .line 675
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getDefaultInstance()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v0

    return-object v0
.end method

.method public getStabilityConfidence()D
    .locals 2

    .prologue
    .line 797
    iget-wide v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->stabilityConfidence_:D

    return-wide v0
.end method

.method public getTranscript()Ljava/lang/String;
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->transcript_:Ljava/lang/Object;

    .line 745
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 746
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 747
    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->transcript_:Ljava/lang/Object;

    .line 750
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTranscriptBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->transcript_:Ljava/lang/Object;

    .line 756
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 757
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 759
    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->transcript_:Ljava/lang/Object;

    .line 762
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasStabilityConfidence()Z
    .locals 2

    .prologue
    .line 794
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

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

.method public hasTranscript()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 741
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

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
    .line 716
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
    .line 646
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 646
    check-cast p1, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

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
    .line 646
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    const/4 v1, 0x0

    .line 725
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    .line 734
    :cond_0
    return-object p0

    .line 726
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 727
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 728
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 730
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 731
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    :cond_1
    throw v0

    .line 730
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 2
    .parameter

    .prologue
    .line 703
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getDefaultInstance()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 712
    :goto_0
    return-object v0

    .line 704
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->hasTranscript()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    .line 706
    invoke-static {p1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->access$700(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->transcript_:Ljava/lang/Object;

    .line 709
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->hasStabilityConfidence()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 710
    invoke-virtual {p1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getStabilityConfidence()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->setStabilityConfidence(D)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    :cond_2
    move-object v0, p0

    .line 712
    goto :goto_0
.end method

.method public setStabilityConfidence(D)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 1
    .parameter

    .prologue
    .line 800
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    .line 801
    iput-wide p1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->stabilityConfidence_:D

    .line 803
    return-object p0
.end method

.method public setTranscript(Ljava/lang/String;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 1
    .parameter

    .prologue
    .line 766
    if-nez p1, :cond_0

    .line 767
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 769
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    .line 770
    iput-object p1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->transcript_:Ljava/lang/Object;

    .line 772
    return-object p0
.end method

.method public setTranscriptBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 1
    .parameter

    .prologue
    .line 782
    if-nez p1, :cond_0

    .line 783
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 785
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    .line 786
    iput-object p1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->transcript_:Ljava/lang/Object;

    .line 788
    return-object p0
.end method
