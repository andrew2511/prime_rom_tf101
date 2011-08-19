.class public final Lcom/google/android/finsky/remoting/protos/Doc$Docid;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Docid"
.end annotation


# instance fields
.field private backendDocid_:Ljava/lang/String;

.field private backend_:I

.field private cachedSize:I

.field private hasBackend:Z

.field private hasBackendDocid:Z

.field private hasType:Z

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 671
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->backendDocid_:Ljava/lang/String;

    .line 688
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->type_:I

    .line 705
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->backend_:I

    .line 747
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->cachedSize:I

    .line 666
    return-void
.end method


# virtual methods
.method public getBackend()I
    .locals 1

    .prologue
    .line 707
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->backend_:I

    return v0
.end method

.method public getBackendDocid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->backendDocid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 749
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->cachedSize:I

    if-gez v0, :cond_0

    .line 751
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->getSerializedSize()I

    .line 753
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->hasBackendDocid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->getBackendDocid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 762
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->hasType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 763
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 766
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->hasBackend()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 767
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 770
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->cachedSize:I

    .line 771
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 690
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->type_:I

    return v0
.end method

.method public hasBackend()Z
    .locals 1

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->hasBackend:Z

    return v0
.end method

.method public hasBackendDocid()Z
    .locals 1

    .prologue
    .line 673
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->hasBackendDocid:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->hasType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Docid;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 778
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 779
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 783
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 784
    :sswitch_0
    return-object p0

    .line 789
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->setBackendDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    goto :goto_0

    .line 793
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->setType(I)Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    goto :goto_0

    .line 797
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->setBackend(I)Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    goto :goto_0

    .line 779
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 664
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    move-result-object v0

    return-object v0
.end method

.method public setBackend(I)Lcom/google/android/finsky/remoting/protos/Doc$Docid;
    .locals 1
    .parameter "value"

    .prologue
    .line 709
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->hasBackend:Z

    .line 710
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->backend_:I

    .line 711
    return-object p0
.end method

.method public setBackendDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Docid;
    .locals 1
    .parameter "value"

    .prologue
    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->hasBackendDocid:Z

    .line 676
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->backendDocid_:Ljava/lang/String;

    .line 677
    return-object p0
.end method

.method public setType(I)Lcom/google/android/finsky/remoting/protos/Doc$Docid;
    .locals 1
    .parameter "value"

    .prologue
    .line 692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->hasType:Z

    .line 693
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->type_:I

    .line 694
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
    .line 736
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->hasBackendDocid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->getBackendDocid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 742
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->hasBackend()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->getBackend()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 745
    :cond_2
    return-void
.end method
