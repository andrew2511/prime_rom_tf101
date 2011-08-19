.class public final Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$AlternateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates$Alternate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/common/Alternates$Alternate;",
        "Lcom/google/protos/speech/common/Alternates$Alternate$Builder;",
        ">;",
        "Lcom/google/protos/speech/common/Alternates$AlternateOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private text_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1690
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1782
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 1691
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->maybeForceBuilderInitialization()V

    .line 1692
    return-void
.end method

.method static synthetic access$2100()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1

    .prologue
    .line 1685
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->create()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1

    .prologue
    .line 1697
    new-instance v0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1695
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1685
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->build()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 2

    .prologue
    .line 1718
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v0

    .line 1719
    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$Alternate;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1720
    invoke-static {v0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1722
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1685
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 5

    .prologue
    .line 1726
    new-instance v0, Lcom/google/protos/speech/common/Alternates$Alternate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/common/Alternates$Alternate;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V

    .line 1727
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    .line 1728
    const/4 v2, 0x0

    .line 1729
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1730
    or-int/lit8 v2, v2, 0x1

    .line 1732
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->text_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/Alternates$Alternate;->access$2302(Lcom/google/protos/speech/common/Alternates$Alternate;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 1734
    or-int/lit8 v1, v2, 0x2

    .line 1736
    :goto_0
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->confidence_:F

    invoke-static {v0, v2}, Lcom/google/protos/speech/common/Alternates$Alternate;->access$2402(Lcom/google/protos/speech/common/Alternates$Alternate;F)F

    .line 1737
    invoke-static {v0, v1}, Lcom/google/protos/speech/common/Alternates$Alternate;->access$2502(Lcom/google/protos/speech/common/Alternates$Alternate;I)I

    .line 1738
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1685
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->clear()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1685
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->clear()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1

    .prologue
    .line 1701
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1702
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 1703
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    .line 1704
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->confidence_:F

    .line 1705
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    .line 1706
    return-object p0
.end method

.method public clearConfidence()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1

    .prologue
    .line 1849
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    .line 1850
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->confidence_:F

    .line 1852
    return-object p0
.end method

.method public clearText()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1

    .prologue
    .line 1818
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    .line 1819
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$Alternate;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$Alternate;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 1821
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1685
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->clone()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1685
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->clone()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1685
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->clone()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 2

    .prologue
    .line 1710
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->create()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$Alternate;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

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
    .line 1685
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->clone()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 1840
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->confidence_:F

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1685
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1685
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1

    .prologue
    .line 1714
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$Alternate;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 1788
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1789
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1790
    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 1793
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 1799
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1800
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1802
    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 1805
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 1837
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

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

.method public hasText()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1784
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

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
    .line 1755
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->hasText()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1757
    const/4 v0, 0x0

    .line 1759
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
    .line 1685
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1685
    check-cast p1, Lcom/google/protos/speech/common/Alternates$Alternate;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$Alternate;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

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
    .line 1685
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1766
    const/4 v1, 0x0

    .line 1768
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$Alternate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1773
    if-eqz v0, :cond_0

    .line 1774
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$Alternate;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    .line 1777
    :cond_0
    return-object p0

    .line 1769
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1770
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$Alternate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1771
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1773
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 1774
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$Alternate;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    :cond_1
    throw v0

    .line 1773
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/common/Alternates$Alternate;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1742
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$Alternate;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 1751
    :goto_0
    return-object v0

    .line 1743
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$Alternate;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1744
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    .line 1745
    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$Alternate;->access$2300(Lcom/google/protos/speech/common/Alternates$Alternate;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 1748
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$Alternate;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1749
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$Alternate;->getConfidence()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->setConfidence(F)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    :cond_2
    move-object v0, p0

    .line 1751
    goto :goto_0
.end method

.method public setConfidence(F)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1843
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    .line 1844
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->confidence_:F

    .line 1846
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1809
    if-nez p1, :cond_0

    .line 1810
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1812
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    .line 1813
    iput-object p1, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 1815
    return-object p0
.end method

.method public setTextBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1825
    if-nez p1, :cond_0

    .line 1826
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1828
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    .line 1829
    iput-object p1, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 1831
    return-object p0
.end method
