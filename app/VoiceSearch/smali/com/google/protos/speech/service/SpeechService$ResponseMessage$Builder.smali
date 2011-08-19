.class public final Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$ResponseMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
        "Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$ResponseMessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

.field private errorDetail_:Ljava/lang/Object;

.field private header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

.field private status_:Lcom/google/protos/speech/service/SpeechService$Status;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7544
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 7663
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 7706
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->OK:Lcom/google/protos/speech/service/SpeechService$Status;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$Status;

    .line 7730
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->errorDetail_:Ljava/lang/Object;

    .line 7783
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    .line 7545
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->maybeForceBuilderInitialization()V

    .line 7546
    return-void
.end method

.method static synthetic access$8400()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 1

    .prologue
    .line 7540
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 1

    .prologue
    .line 7551
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 7549
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .locals 2

    .prologue
    .line 7576
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    .line 7577
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7578
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 7580
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .locals 5

    .prologue
    .line 7584
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 7585
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7586
    const/4 v2, 0x0

    .line 7587
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 7588
    or-int/lit8 v2, v2, 0x1

    .line 7590
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->access$8602(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 7591
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 7592
    or-int/lit8 v2, v2, 0x2

    .line 7594
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$Status;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->access$8702(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;Lcom/google/protos/speech/service/SpeechService$Status;)Lcom/google/protos/speech/service/SpeechService$Status;

    .line 7595
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 7596
    or-int/lit8 v2, v2, 0x4

    .line 7598
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->errorDetail_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->access$8802(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7599
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 7600
    or-int/lit8 v1, v2, 0x8

    .line 7602
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->access$8902(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    .line 7603
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->access$9002(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;I)I

    .line 7604
    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1

    .prologue
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 1

    .prologue
    .line 7555
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 7556
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 7557
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7558
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->OK:Lcom/google/protos/speech/service/SpeechService$Status;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$Status;

    .line 7559
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7560
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->errorDetail_:Ljava/lang/Object;

    .line 7561
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7562
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    .line 7563
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7564
    return-object p0
.end method

.method public clearDebugEvent()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 1

    .prologue
    .line 7819
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    .line 7821
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7822
    return-object p0
.end method

.method public clearErrorDetail()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 1

    .prologue
    .line 7766
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7767
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getErrorDetail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->errorDetail_:Ljava/lang/Object;

    .line 7769
    return-object p0
.end method

.method public clearHeader()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 1

    .prologue
    .line 7699
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 7701
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7702
    return-object p0
.end method

.method public clearStatus()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 1

    .prologue
    .line 7723
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7724
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->OK:Lcom/google/protos/speech/service/SpeechService$Status;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$Status;

    .line 7726
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1

    .prologue
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 2

    .prologue
    .line 7568
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

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
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDebugEvent()Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1

    .prologue
    .line 7788
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .locals 1

    .prologue
    .line 7572
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public getErrorDetail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7735
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->errorDetail_:Ljava/lang/Object;

    .line 7736
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7737
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7738
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->errorDetail_:Ljava/lang/Object;

    .line 7741
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getErrorDetailBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 7746
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->errorDetail_:Ljava/lang/Object;

    .line 7747
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7748
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7750
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->errorDetail_:Ljava/lang/Object;

    .line 7753
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getHeader()Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1

    .prologue
    .line 7668
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object v0
.end method

.method public getStatus()Lcom/google/protos/speech/service/SpeechService$Status;
    .locals 1

    .prologue
    .line 7711
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$Status;

    return-object v0
.end method

.method public hasDebugEvent()Z
    .locals 2

    .prologue
    .line 7785
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

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

.method public hasErrorDetail()Z
    .locals 2

    .prologue
    .line 7732
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

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

    .line 7665
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 7708
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7628
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->hasHeader()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 7640
    :goto_0
    return v0

    .line 7632
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->hasStatus()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 7634
    goto :goto_0

    .line 7636
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 7638
    goto :goto_0

    .line 7640
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeDebugEvent(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7807
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7809
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->newBuilder(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    .line 7815
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7816
    return-object p0

    .line 7812
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

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
    .line 7540
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7540
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

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
    .line 7540
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7647
    const/4 v1, 0x0

    .line 7649
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7654
    if-eqz v0, :cond_0

    .line 7655
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    .line 7658
    :cond_0
    return-object p0

    .line 7650
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 7651
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7652
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7654
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 7655
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    :cond_1
    throw v0

    .line 7654
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7608
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 7624
    :goto_0
    return-object v0

    .line 7609
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7610
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getHeader()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->mergeHeader(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    .line 7612
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7613
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getStatus()Lcom/google/protos/speech/service/SpeechService$Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->setStatus(Lcom/google/protos/speech/service/SpeechService$Status;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    .line 7615
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasErrorDetail()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7616
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7617
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->access$8800(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->errorDetail_:Ljava/lang/Object;

    .line 7620
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasDebugEvent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7621
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDebugEvent()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->mergeDebugEvent(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    .line 7623
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    move-object v0, p0

    .line 7624
    goto :goto_0
.end method

.method public mergeHeader(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7687
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7689
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->newBuilder(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 7695
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7696
    return-object p0

    .line 7692
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    goto :goto_0
.end method

.method public setDebugEvent(Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7801
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->build()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    .line 7803
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7804
    return-object p0
.end method

.method public setDebugEvent(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7791
    if-nez p1, :cond_0

    .line 7792
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7794
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    .line 7796
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7797
    return-object p0
.end method

.method public setErrorDetail(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7757
    if-nez p1, :cond_0

    .line 7758
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7760
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7761
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->errorDetail_:Ljava/lang/Object;

    .line 7763
    return-object p0
.end method

.method public setErrorDetailBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7773
    if-nez p1, :cond_0

    .line 7774
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7776
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7777
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->errorDetail_:Ljava/lang/Object;

    .line 7779
    return-object p0
.end method

.method public setHeader(Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7681
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->build()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 7683
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7684
    return-object p0
.end method

.method public setHeader(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7671
    if-nez p1, :cond_0

    .line 7672
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7674
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 7676
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7677
    return-object p0
.end method

.method public setStatus(Lcom/google/protos/speech/service/SpeechService$Status;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7714
    if-nez p1, :cond_0

    .line 7715
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7717
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7718
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$Status;

    .line 7720
    return-object p0
.end method
