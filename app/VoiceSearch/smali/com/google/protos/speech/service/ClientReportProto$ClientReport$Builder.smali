.class public final Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protos/speech/service/ClientReportProto$ClientReportOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/protos/speech/service/ClientReportProto$ClientReport;",
        "Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/ClientReportProto$ClientReportOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

.field private clientSideError_:I

.field private inProgressResultLatencyMs_:I

.field private recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

.field private requestAckLatencyMs_:I

.field private selectedNbestIndex_:I

.field private totalLatencyMs_:I

.field private userPerceivedLatencyMs_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 665
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->NO_CLIENT_ERROR:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    .line 815
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    .line 521
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->maybeForceBuilderInitialization()V

    .line 522
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1

    .prologue
    .line 516
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->create()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1

    .prologue
    .line 527
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 525
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .locals 2

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    invoke-static {v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 564
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .locals 5

    .prologue
    .line 568
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/speech/service/ClientReportProto$1;)V

    .line 569
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 570
    const/4 v2, 0x0

    .line 571
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 572
    or-int/lit8 v2, v2, 0x1

    .line 574
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->access$302(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    .line 575
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 576
    or-int/lit8 v2, v2, 0x2

    .line 578
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->clientSideError_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->access$402(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I

    .line 579
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 580
    or-int/lit8 v2, v2, 0x4

    .line 582
    :cond_2
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->requestAckLatencyMs_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->access$502(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I

    .line 583
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 584
    or-int/lit8 v2, v2, 0x8

    .line 586
    :cond_3
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->userPerceivedLatencyMs_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->access$602(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I

    .line 587
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 588
    or-int/lit8 v2, v2, 0x10

    .line 590
    :cond_4
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->selectedNbestIndex_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->access$702(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I

    .line 591
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 592
    or-int/lit8 v2, v2, 0x20

    .line 594
    :cond_5
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->totalLatencyMs_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->access$802(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I

    .line 595
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 596
    or-int/lit8 v2, v2, 0x40

    .line 598
    :cond_6
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->inProgressResultLatencyMs_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->access$902(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I

    .line 599
    and-int/lit16 v1, v1, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_7

    .line 600
    or-int/lit16 v1, v2, 0x80

    .line 602
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->access$1002(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    .line 603
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->access$1102(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I

    .line 604
    return-object v0

    :cond_7
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->clear()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->clear()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->clear()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 531
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 532
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->NO_CLIENT_ERROR:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    .line 533
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 534
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->clientSideError_:I

    .line 535
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 536
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->requestAckLatencyMs_:I

    .line 537
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 538
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->userPerceivedLatencyMs_:I

    .line 539
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 540
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->selectedNbestIndex_:I

    .line 541
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 542
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->totalLatencyMs_:I

    .line 543
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 544
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->inProgressResultLatencyMs_:I

    .line 545
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 546
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    .line 547
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 548
    return-object p0
.end method

.method public clearClientPerceivedRequestStatus()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1

    .prologue
    .line 682
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 683
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->NO_CLIENT_ERROR:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    .line 685
    return-object p0
.end method

.method public clearClientSideError()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 704
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->clientSideError_:I

    .line 706
    return-object p0
.end method

.method public clearInProgressResultLatencyMs()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1

    .prologue
    .line 808
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 809
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->inProgressResultLatencyMs_:I

    .line 811
    return-object p0
.end method

.method public clearRecognitionQualityInfo()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1

    .prologue
    .line 851
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    .line 853
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 854
    return-object p0
.end method

.method public clearRequestAckLatencyMs()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 725
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->requestAckLatencyMs_:I

    .line 727
    return-object p0
.end method

.method public clearSelectedNbestIndex()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1

    .prologue
    .line 766
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 767
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->selectedNbestIndex_:I

    .line 769
    return-object p0
.end method

.method public clearTotalLatencyMs()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1

    .prologue
    .line 787
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 788
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->totalLatencyMs_:I

    .line 790
    return-object p0
.end method

.method public clearUserPerceivedLatencyMs()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1

    .prologue
    .line 745
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 746
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->userPerceivedLatencyMs_:I

    .line 748
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 2

    .prologue
    .line 552
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->create()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

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
    .line 516
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientPerceivedRequestStatus()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    return-object v0
.end method

.method public getClientSideError()I
    .locals 1

    .prologue
    .line 694
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->clientSideError_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .locals 1

    .prologue
    .line 556
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    return-object v0
.end method

.method public getInProgressResultLatencyMs()I
    .locals 1

    .prologue
    .line 799
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->inProgressResultLatencyMs_:I

    return v0
.end method

.method public getRecognitionQualityInfo()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    return-object v0
.end method

.method public getRequestAckLatencyMs()I
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->requestAckLatencyMs_:I

    return v0
.end method

.method public getSelectedNbestIndex()I
    .locals 1

    .prologue
    .line 757
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->selectedNbestIndex_:I

    return v0
.end method

.method public getTotalLatencyMs()I
    .locals 1

    .prologue
    .line 778
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->totalLatencyMs_:I

    return v0
.end method

.method public getUserPerceivedLatencyMs()I
    .locals 1

    .prologue
    .line 736
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->userPerceivedLatencyMs_:I

    return v0
.end method

.method public hasClientPerceivedRequestStatus()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 667
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientSideError()Z
    .locals 2

    .prologue
    .line 691
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

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

.method public hasInProgressResultLatencyMs()Z
    .locals 2

    .prologue
    .line 796
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRecognitionQualityInfo()Z
    .locals 2

    .prologue
    .line 817
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestAckLatencyMs()Z
    .locals 2

    .prologue
    .line 712
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

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

.method public hasSelectedNbestIndex()Z
    .locals 2

    .prologue
    .line 754
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTotalLatencyMs()Z
    .locals 2

    .prologue
    .line 775
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserPerceivedLatencyMs()Z
    .locals 2

    .prologue
    .line 733
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

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
    .line 638
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    const/4 v0, 0x0

    .line 642
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
    .line 516
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 516
    check-cast p1, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

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
    .line 516
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    const/4 v1, 0x0

    .line 651
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 660
    :cond_0
    return-object p0

    .line 652
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 653
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 654
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 656
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 657
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    :cond_1
    throw v0

    .line 656
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1
    .parameter

    .prologue
    .line 608
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 634
    :goto_0
    return-object v0

    .line 609
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->hasClientPerceivedRequestStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getClientPerceivedRequestStatus()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setClientPerceivedRequestStatus(Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 612
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->hasClientSideError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getClientSideError()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setClientSideError(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 615
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->hasRequestAckLatencyMs()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 616
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getRequestAckLatencyMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setRequestAckLatencyMs(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 618
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->hasUserPerceivedLatencyMs()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 619
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getUserPerceivedLatencyMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setUserPerceivedLatencyMs(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 621
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->hasSelectedNbestIndex()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 622
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getSelectedNbestIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setSelectedNbestIndex(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 624
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->hasTotalLatencyMs()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 625
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getTotalLatencyMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setTotalLatencyMs(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 627
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->hasInProgressResultLatencyMs()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 628
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getInProgressResultLatencyMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setInProgressResultLatencyMs(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 630
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->hasRecognitionQualityInfo()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 631
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getRecognitionQualityInfo()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->mergeRecognitionQualityInfo(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 633
    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    move-object v0, p0

    .line 634
    goto :goto_0
.end method

.method public mergeRecognitionQualityInfo(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 2
    .parameter

    .prologue
    .line 839
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 841
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    invoke-static {v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->newBuilder(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    .line 847
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 848
    return-object p0

    .line 844
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    goto :goto_0
.end method

.method public setClientPerceivedRequestStatus(Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1
    .parameter

    .prologue
    .line 673
    if-nez p1, :cond_0

    .line 674
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 676
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 677
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    .line 679
    return-object p0
.end method

.method public setClientSideError(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1
    .parameter

    .prologue
    .line 697
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 698
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->clientSideError_:I

    .line 700
    return-object p0
.end method

.method public setInProgressResultLatencyMs(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1
    .parameter

    .prologue
    .line 802
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 803
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->inProgressResultLatencyMs_:I

    .line 805
    return-object p0
.end method

.method public setRecognitionQualityInfo(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1
    .parameter

    .prologue
    .line 833
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    .line 835
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 836
    return-object p0
.end method

.method public setRecognitionQualityInfo(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1
    .parameter

    .prologue
    .line 823
    if-nez p1, :cond_0

    .line 824
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 826
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    .line 828
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 829
    return-object p0
.end method

.method public setRequestAckLatencyMs(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1
    .parameter

    .prologue
    .line 718
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 719
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->requestAckLatencyMs_:I

    .line 721
    return-object p0
.end method

.method public setSelectedNbestIndex(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1
    .parameter

    .prologue
    .line 760
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 761
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->selectedNbestIndex_:I

    .line 763
    return-object p0
.end method

.method public setTotalLatencyMs(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1
    .parameter

    .prologue
    .line 781
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 782
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->totalLatencyMs_:I

    .line 784
    return-object p0
.end method

.method public setUserPerceivedLatencyMs(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1
    .parameter

    .prologue
    .line 739
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->bitField0_:I

    .line 740
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->userPerceivedLatencyMs_:I

    .line 742
    return-object p0
.end method
