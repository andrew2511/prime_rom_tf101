.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammarOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammarOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deprecatedGaiaId_:J

.field private gaiaAuthenticationToken_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2626
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2739
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 2627
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->maybeForceBuilderInitialization()V

    .line 2628
    return-void
.end method

.method static synthetic access$2600()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 1

    .prologue
    .line 2621
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 1

    .prologue
    .line 2633
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2631
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2621
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    .locals 2

    .prologue
    .line 2654
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v0

    .line 2655
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2656
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2658
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2621
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    .locals 5

    .prologue
    .line 2662
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 2663
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    .line 2664
    const/4 v2, 0x0

    .line 2665
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2666
    or-int/lit8 v2, v2, 0x1

    .line 2668
    :cond_0
    iget-wide v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->deprecatedGaiaId_:J

    invoke-static {v0, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->access$2802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;J)J

    .line 2669
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 2670
    or-int/lit8 v1, v2, 0x2

    .line 2672
    :goto_0
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->access$2902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2673
    invoke-static {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->access$3002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;I)I

    .line 2674
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2621
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2621
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 2

    .prologue
    .line 2637
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2638
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->deprecatedGaiaId_:J

    .line 2639
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    .line 2640
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 2641
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    .line 2642
    return-object p0
.end method

.method public clearDeprecatedGaiaId()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 2

    .prologue
    .line 2732
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    .line 2733
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->deprecatedGaiaId_:J

    .line 2735
    return-object p0
.end method

.method public clearGaiaAuthenticationToken()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 1

    .prologue
    .line 2775
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    .line 2776
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->getGaiaAuthenticationToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 2778
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2621
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2621
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2621
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 2

    .prologue
    .line 2646
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

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
    .line 2621
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2621
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2621
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    .locals 1

    .prologue
    .line 2650
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecatedGaiaId()J
    .locals 2

    .prologue
    .line 2723
    iget-wide v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->deprecatedGaiaId_:J

    return-wide v0
.end method

.method public getGaiaAuthenticationToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2744
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 2745
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2746
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2747
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 2750
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getGaiaAuthenticationTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 2756
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2757
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2759
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 2762
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasDeprecatedGaiaId()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2720
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGaiaAuthenticationToken()Z
    .locals 2

    .prologue
    .line 2741
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

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
    .locals 1

    .prologue
    .line 2691
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->hasGaiaAuthenticationToken()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2693
    const/4 v0, 0x0

    .line 2695
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
    .line 2621
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2621
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

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
    .line 2621
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2702
    const/4 v1, 0x0

    .line 2704
    :try_start_0
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2709
    if-eqz v0, :cond_0

    .line 2710
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    .line 2713
    :cond_0
    return-object p0

    .line 2705
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2706
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2707
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2709
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 2710
    invoke-virtual {p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    :cond_1
    throw v0

    .line 2709
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2678
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 2687
    :goto_0
    return-object v0

    .line 2679
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->hasDeprecatedGaiaId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2680
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->getDeprecatedGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->setDeprecatedGaiaId(J)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    .line 2682
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->hasGaiaAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2683
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    .line 2684
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->access$2900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    :cond_2
    move-object v0, p0

    .line 2687
    goto :goto_0
.end method

.method public setDeprecatedGaiaId(J)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2726
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    .line 2727
    iput-wide p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->deprecatedGaiaId_:J

    .line 2729
    return-object p0
.end method

.method public setGaiaAuthenticationToken(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2766
    if-nez p1, :cond_0

    .line 2767
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2769
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    .line 2770
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 2772
    return-object p0
.end method

.method public setGaiaAuthenticationTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2782
    if-nez p1, :cond_0

    .line 2783
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2785
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    .line 2786
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 2788
    return-object p0
.end method
