.class public final Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DeviceDoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DeviceDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoRentalTerm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;
    }
.end annotation


# instance fields
.field private cachedSize:I

.field private hasOfferAbbreviation:Z

.field private hasOfferType:Z

.field private hasRentalHeader:Z

.field private offerAbbreviation_:Ljava/lang/String;

.field private offerType_:I

.field private rentalHeader_:Ljava/lang/String;

.field private term_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2546
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2672
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->offerType_:I

    .line 2689
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->offerAbbreviation_:Ljava/lang/String;

    .line 2706
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->rentalHeader_:Ljava/lang/String;

    .line 2722
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->term_:Ljava/util/List;

    .line 2782
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->cachedSize:I

    .line 2546
    return-void
.end method


# virtual methods
.method public addTerm(Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;
    .locals 1
    .parameter "value"

    .prologue
    .line 2739
    if-nez p1, :cond_0

    .line 2740
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2742
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->term_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->term_:Ljava/util/List;

    .line 2745
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->term_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2746
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2784
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->cachedSize:I

    if-gez v0, :cond_0

    .line 2786
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->getSerializedSize()I

    .line 2788
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->cachedSize:I

    return v0
.end method

.method public getOfferAbbreviation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2690
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->offerAbbreviation_:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferType()I
    .locals 1

    .prologue
    .line 2674
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->offerType_:I

    return v0
.end method

.method public getRentalHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2707
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->rentalHeader_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2792
    const/4 v2, 0x0

    .line 2793
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->hasOfferType()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2794
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->getOfferType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2797
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->hasOfferAbbreviation()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2798
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->getOfferAbbreviation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2801
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->hasRentalHeader()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2802
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->getRentalHeader()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2805
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->getTermList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;

    .line 2806
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 2809
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;
    :cond_3
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->cachedSize:I

    .line 2810
    return v2
.end method

.method public getTermList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2725
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->term_:Ljava/util/List;

    return-object v0
.end method

.method public hasOfferAbbreviation()Z
    .locals 1

    .prologue
    .line 2691
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->hasOfferAbbreviation:Z

    return v0
.end method

.method public hasOfferType()Z
    .locals 1

    .prologue
    .line 2673
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->hasOfferType:Z

    return v0
.end method

.method public hasRentalHeader()Z
    .locals 1

    .prologue
    .line 2708
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->hasRentalHeader:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2817
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2818
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2822
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2823
    :sswitch_0
    return-object p0

    .line 2828
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->setOfferType(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;

    goto :goto_0

    .line 2832
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->setOfferAbbreviation(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;

    goto :goto_0

    .line 2836
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->setRentalHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;

    goto :goto_0

    .line 2840
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;-><init>()V

    .line 2841
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;
    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 2842
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->addTerm(Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;

    goto :goto_0

    .line 2818
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x23 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2544
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;

    move-result-object v0

    return-object v0
.end method

.method public setOfferAbbreviation(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;
    .locals 1
    .parameter "value"

    .prologue
    .line 2693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->hasOfferAbbreviation:Z

    .line 2694
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->offerAbbreviation_:Ljava/lang/String;

    .line 2695
    return-object p0
.end method

.method public setOfferType(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;
    .locals 1
    .parameter "value"

    .prologue
    .line 2676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->hasOfferType:Z

    .line 2677
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->offerType_:I

    .line 2678
    return-object p0
.end method

.method public setRentalHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;
    .locals 1
    .parameter "value"

    .prologue
    .line 2710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->hasRentalHeader:Z

    .line 2711
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->rentalHeader_:Ljava/lang/String;

    .line 2712
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2768
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->hasOfferType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2769
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->getOfferType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2771
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->hasOfferAbbreviation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2772
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->getOfferAbbreviation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2774
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->hasRentalHeader()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2775
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->getRentalHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2777
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->getTermList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;

    .line 2778
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 2780
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;
    :cond_3
    return-void
.end method
