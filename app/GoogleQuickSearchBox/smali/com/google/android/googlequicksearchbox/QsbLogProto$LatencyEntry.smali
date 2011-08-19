.class public final Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "QsbLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/QsbLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatencyEntry"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasLatency:Z

.field private hasNumChars:Z

.field private hasSource:Z

.field private hasType:Z

.field private latency_:I

.field private numChars_:I

.field private source_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 691
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 701
    iput v1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->type_:I

    .line 718
    iput v1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->latency_:I

    .line 735
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->source_:Ljava/lang/String;

    .line 752
    iput v1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->numChars_:I

    .line 797
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->cachedSize:I

    .line 691
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 799
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->cachedSize:I

    if-gez v0, :cond_0

    .line 801
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->getSerializedSize()I

    .line 803
    :cond_0
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->cachedSize:I

    return v0
.end method

.method public getLatency()I
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->latency_:I

    return v0
.end method

.method public getNumChars()I
    .locals 1

    .prologue
    .line 753
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->numChars_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 807
    const/4 v0, 0x0

    .line 808
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 809
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 812
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasLatency()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 813
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->getLatency()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 816
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 817
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 820
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasNumChars()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 821
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->getNumChars()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 824
    :cond_3
    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->cachedSize:I

    .line 825
    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->type_:I

    return v0
.end method

.method public hasLatency()Z
    .locals 1

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasLatency:Z

    return v0
.end method

.method public hasNumChars()Z
    .locals 1

    .prologue
    .line 754
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasNumChars:Z

    return v0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasSource:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasType:Z

    return v0
.end method

.method public setLatency(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasLatency:Z

    .line 723
    iput p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->latency_:I

    .line 724
    return-object p0
.end method

.method public setNumChars(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasNumChars:Z

    .line 757
    iput p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->numChars_:I

    .line 758
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasSource:Z

    .line 740
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->source_:Ljava/lang/String;

    .line 741
    return-object p0
.end method

.method public setType(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasType:Z

    .line 706
    iput p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->type_:I

    .line 707
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 786
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasLatency()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->getLatency()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 789
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 790
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 792
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->hasNumChars()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 793
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->getNumChars()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 795
    :cond_3
    return-void
.end method
