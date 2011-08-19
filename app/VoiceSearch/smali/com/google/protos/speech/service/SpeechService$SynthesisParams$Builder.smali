.class public final Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SynthesisParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$SynthesisParams;",
        "Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$SynthesisParamsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private pitch_:D

.field private speed_:D

.field private volume_:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18542
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 18543
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->maybeForceBuilderInitialization()V

    .line 18544
    return-void
.end method

.method static synthetic access$22300()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 1

    .prologue
    .line 18537
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 1

    .prologue
    .line 18549
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 18547
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18537
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->build()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 2

    .prologue
    .line 18572
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    .line 18573
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 18574
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 18576
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18537
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 5

    .prologue
    .line 18580
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 18581
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    .line 18582
    const/4 v2, 0x0

    .line 18583
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 18584
    or-int/lit8 v2, v2, 0x1

    .line 18586
    :cond_0
    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->speed_:D

    invoke-static {v0, v3, v4}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->access$22502(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;D)D

    .line 18587
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 18588
    or-int/lit8 v2, v2, 0x2

    .line 18590
    :cond_1
    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->pitch_:D

    invoke-static {v0, v3, v4}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->access$22602(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;D)D

    .line 18591
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 18592
    or-int/lit8 v1, v2, 0x4

    .line 18594
    :goto_0
    iget-wide v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->volume_:D

    invoke-static {v0, v2, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->access$22702(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;D)D

    .line 18595
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->access$22802(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;I)I

    .line 18596
    return-object v0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 18537
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18537
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 18553
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 18554
    iput-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->speed_:D

    .line 18555
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    .line 18556
    iput-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->pitch_:D

    .line 18557
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    .line 18558
    iput-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->volume_:D

    .line 18559
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    .line 18560
    return-object p0
.end method

.method public clearPitch()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 2

    .prologue
    .line 18672
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    .line 18673
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->pitch_:D

    .line 18675
    return-object p0
.end method

.method public clearSpeed()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 2

    .prologue
    .line 18651
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    .line 18652
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->speed_:D

    .line 18654
    return-object p0
.end method

.method public clearVolume()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 2

    .prologue
    .line 18693
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    .line 18694
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->volume_:D

    .line 18696
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 18537
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 18537
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18537
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 2

    .prologue
    .line 18564
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

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
    .line 18537
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 18537
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18537
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 1

    .prologue
    .line 18568
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    return-object v0
.end method

.method public getPitch()D
    .locals 2

    .prologue
    .line 18663
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->pitch_:D

    return-wide v0
.end method

.method public getSpeed()D
    .locals 2

    .prologue
    .line 18642
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->speed_:D

    return-wide v0
.end method

.method public getVolume()D
    .locals 2

    .prologue
    .line 18684
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->volume_:D

    return-wide v0
.end method

.method public hasPitch()Z
    .locals 2

    .prologue
    .line 18660
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

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

.method public hasSpeed()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 18639
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVolume()Z
    .locals 2

    .prologue
    .line 18681
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

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
    .line 18614
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
    .line 18537
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18537
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

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
    .line 18537
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18621
    const/4 v1, 0x0

    .line 18623
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18628
    if-eqz v0, :cond_0

    .line 18629
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    .line 18632
    :cond_0
    return-object p0

    .line 18624
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 18625
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18626
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18628
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 18629
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    :cond_1
    throw v0

    .line 18628
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 2
    .parameter

    .prologue
    .line 18600
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 18610
    :goto_0
    return-object v0

    .line 18601
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18602
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->getSpeed()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->setSpeed(D)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    .line 18604
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->hasPitch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18605
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->getPitch()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->setPitch(D)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    .line 18607
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->hasVolume()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18608
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->getVolume()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->setVolume(D)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    :cond_3
    move-object v0, p0

    .line 18610
    goto :goto_0
.end method

.method public setPitch(D)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18666
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    .line 18667
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->pitch_:D

    .line 18669
    return-object p0
.end method

.method public setSpeed(D)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18645
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    .line 18646
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->speed_:D

    .line 18648
    return-object p0
.end method

.method public setVolume(D)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18687
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    .line 18688
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->volume_:D

    .line 18690
    return-object p0
.end method
