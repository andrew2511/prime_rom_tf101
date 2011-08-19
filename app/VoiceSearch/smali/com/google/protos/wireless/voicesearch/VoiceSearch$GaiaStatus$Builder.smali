.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private errorMessage_:Ljava/lang/Object;

.field private errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7451
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7539
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->UNKNOWN_ERROR:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 7563
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorMessage_:Ljava/lang/Object;

    .line 7452
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->maybeForceBuilderInitialization()V

    .line 7453
    return-void
.end method

.method static synthetic access$8500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 1

    .prologue
    .line 7446
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 1

    .prologue
    .line 7458
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 7456
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7446
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 2

    .prologue
    .line 7479
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v0

    .line 7480
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7481
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 7483
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7446
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 5

    .prologue
    .line 7487
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 7488
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    .line 7489
    const/4 v2, 0x0

    .line 7490
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 7491
    or-int/lit8 v2, v2, 0x1

    .line 7493
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->access$8702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 7494
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 7495
    or-int/lit8 v1, v2, 0x2

    .line 7497
    :goto_0
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorMessage_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->access$8802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7498
    invoke-static {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->access$8902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;I)I

    .line 7499
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7446
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7446
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 1

    .prologue
    .line 7462
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 7463
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->UNKNOWN_ERROR:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 7464
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    .line 7465
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorMessage_:Ljava/lang/Object;

    .line 7466
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    .line 7467
    return-object p0
.end method

.method public clearErrorMessage()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 1

    .prologue
    .line 7599
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    .line 7600
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorMessage_:Ljava/lang/Object;

    .line 7602
    return-object p0
.end method

.method public clearErrorStatus()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 1

    .prologue
    .line 7556
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    .line 7557
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->UNKNOWN_ERROR:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 7559
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7446
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7446
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7446
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 2

    .prologue
    .line 7471
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

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
    .line 7446
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 7446
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7446
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 1

    .prologue
    .line 7475
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7568
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorMessage_:Ljava/lang/Object;

    .line 7569
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7570
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7571
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorMessage_:Ljava/lang/Object;

    .line 7574
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getErrorMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 7579
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorMessage_:Ljava/lang/Object;

    .line 7580
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7581
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7583
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorMessage_:Ljava/lang/Object;

    .line 7586
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getErrorStatus()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;
    .locals 1

    .prologue
    .line 7544
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    return-object v0
.end method

.method public hasErrorMessage()Z
    .locals 2

    .prologue
    .line 7565
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

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

.method public hasErrorStatus()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7541
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

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
    .line 7516
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
    .line 7446
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7446
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

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
    .line 7446
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7523
    const/4 v1, 0x0

    .line 7525
    :try_start_0
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7530
    if-eqz v0, :cond_0

    .line 7531
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    .line 7534
    :cond_0
    return-object p0

    .line 7526
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 7527
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7528
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7530
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 7531
    invoke-virtual {p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    :cond_1
    throw v0

    .line 7530
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7503
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 7512
    :goto_0
    return-object v0

    .line 7504
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->hasErrorStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7505
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->getErrorStatus()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->setErrorStatus(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    .line 7507
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7508
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    .line 7509
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->access$8800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorMessage_:Ljava/lang/Object;

    :cond_2
    move-object v0, p0

    .line 7512
    goto :goto_0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7590
    if-nez p1, :cond_0

    .line 7591
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7593
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    .line 7594
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorMessage_:Ljava/lang/Object;

    .line 7596
    return-object p0
.end method

.method public setErrorMessageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7606
    if-nez p1, :cond_0

    .line 7607
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7609
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    .line 7610
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorMessage_:Ljava/lang/Object;

    .line 7612
    return-object p0
.end method

.method public setErrorStatus(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7547
    if-nez p1, :cond_0

    .line 7548
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7550
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    .line 7551
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 7553
    return-object p0
.end method
