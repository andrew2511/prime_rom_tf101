.class public final Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "QsbLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/QsbLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StartEntry"
.end annotation


# instance fields
.field private cachedSize:I

.field private enabledSource_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 582
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;->enabledSource_:Ljava/util/List;

    .line 630
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;->cachedSize:I

    .line 578
    return-void
.end method


# virtual methods
.method public addEnabledSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 599
    if-nez p1, :cond_0

    .line 600
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;->enabledSource_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;->enabledSource_:Ljava/util/List;

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;->enabledSource_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;->cachedSize:I

    if-gez v0, :cond_0

    .line 634
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;->getSerializedSize()I

    .line 636
    :cond_0
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;->cachedSize:I

    return v0
.end method

.method public getEnabledSourceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;->enabledSource_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 640
    const/4 v3, 0x0

    .line 642
    .local v3, size:I
    const/4 v0, 0x0

    .line 643
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;->getEnabledSourceList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 644
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 647
    .end local v1           #element:Ljava/lang/String;
    :cond_0
    add-int/2addr v3, v0

    .line 648
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;->getEnabledSourceList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 650
    iput v3, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;->cachedSize:I

    .line 651
    return v3
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;->getEnabledSourceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 626
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 628
    .end local v0           #element:Ljava/lang/String;
    :cond_0
    return-void
.end method
