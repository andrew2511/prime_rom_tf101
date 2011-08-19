.class public final Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$TextModificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$TextModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$TextModification;",
        "Lcom/google/protos/MobileappsExtensions$TextModification$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$TextModificationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private inputLength_:I

.field private modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8714
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8800
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    .line 8715
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->maybeForceBuilderInitialization()V

    .line 8716
    return-void
.end method

.method static synthetic access$9500()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1

    .prologue
    .line 8709
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->create()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1

    .prologue
    .line 8721
    new-instance v0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 8719
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8709
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->build()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 2

    .prologue
    .line 8742
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    .line 8743
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$TextModification;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8744
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 8746
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8709
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 5

    .prologue
    .line 8750
    new-instance v0, Lcom/google/protos/MobileappsExtensions$TextModification;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/MobileappsExtensions$TextModification;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 8751
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

    .line 8752
    const/4 v2, 0x0

    .line 8753
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 8754
    or-int/lit8 v2, v2, 0x1

    .line 8756
    :cond_0
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$TextModification;->access$9702(Lcom/google/protos/MobileappsExtensions$TextModification;Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;)Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    .line 8757
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 8758
    or-int/lit8 v1, v2, 0x2

    .line 8760
    :goto_0
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->inputLength_:I

    invoke-static {v0, v2}, Lcom/google/protos/MobileappsExtensions$TextModification;->access$9802(Lcom/google/protos/MobileappsExtensions$TextModification;I)I

    .line 8761
    invoke-static {v0, v1}, Lcom/google/protos/MobileappsExtensions$TextModification;->access$9902(Lcom/google/protos/MobileappsExtensions$TextModification;I)I

    .line 8762
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 8709
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->clear()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8709
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->clear()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1

    .prologue
    .line 8725
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 8726
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    .line 8727
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

    .line 8728
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->inputLength_:I

    .line 8729
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

    .line 8730
    return-object p0
.end method

.method public clearInputLength()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1

    .prologue
    .line 8838
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

    .line 8839
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->inputLength_:I

    .line 8841
    return-object p0
.end method

.method public clearModification()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1

    .prologue
    .line 8817
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

    .line 8818
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    .line 8820
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8709
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->clone()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 8709
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->clone()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8709
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->clone()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 2

    .prologue
    .line 8734
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->create()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

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
    .line 8709
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->clone()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 8709
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8709
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 1

    .prologue
    .line 8738
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    return-object v0
.end method

.method public getInputLength()I
    .locals 1

    .prologue
    .line 8829
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->inputLength_:I

    return v0
.end method

.method public getModification()Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;
    .locals 1

    .prologue
    .line 8805
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    return-object v0
.end method

.method public hasInputLength()Z
    .locals 2

    .prologue
    .line 8826
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

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

.method public hasModification()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8802
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

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
    .line 8777
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
    .line 8709
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8709
    check-cast p1, Lcom/google/protos/MobileappsExtensions$TextModification;

    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

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
    .line 8709
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8784
    const/4 v1, 0x0

    .line 8786
    :try_start_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$TextModification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8791
    if-eqz v0, :cond_0

    .line 8792
    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    .line 8795
    :cond_0
    return-object p0

    .line 8787
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 8788
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$TextModification;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8789
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8791
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 8792
    invoke-virtual {p0, v1}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    :cond_1
    throw v0

    .line 8791
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8766
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 8773
    :goto_0
    return-object v0

    .line 8767
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$TextModification;->hasModification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8768
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$TextModification;->getModification()Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->setModification(Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    .line 8770
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$TextModification;->hasInputLength()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8771
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$TextModification;->getInputLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->setInputLength(I)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    :cond_2
    move-object v0, p0

    .line 8773
    goto :goto_0
.end method

.method public setInputLength(I)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8832
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

    .line 8833
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->inputLength_:I

    .line 8835
    return-object p0
.end method

.method public setModification(Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8808
    if-nez p1, :cond_0

    .line 8809
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8811
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

    .line 8812
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    .line 8814
    return-object p0
.end method
