.class public final Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "MusicInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/MusicInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Album"
.end annotation


# instance fields
.field private cachedSize:I

.field private detail_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

.field private hasDetail:Z

.field private hasId:Z

.field private hasName:Z

.field private hasNumDiscs:Z

.field private id_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private numDiscs_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 643
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->id_:Ljava/lang/String;

    .line 660
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->name_:Ljava/lang/String;

    .line 677
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->detail_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    .line 697
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->numDiscs_:I

    .line 744
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->cachedSize:I

    .line 635
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->cachedSize:I

    if-gez v0, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->getSerializedSize()I

    .line 750
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->cachedSize:I

    return v0
.end method

.method public getDetail()Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->detail_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumDiscs()I
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->numDiscs_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 754
    const/4 v0, 0x0

    .line 755
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->hasId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 759
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 760
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 763
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->hasDetail()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 764
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->getDetail()Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 767
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->hasNumDiscs()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 768
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->getNumDiscs()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 771
    :cond_3
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->cachedSize:I

    .line 772
    return v0
.end method

.method public hasDetail()Z
    .locals 1

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->hasDetail:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->hasId:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->hasName:Z

    return v0
.end method

.method public hasNumDiscs()Z
    .locals 1

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->hasNumDiscs:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 779
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 780
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 784
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 785
    :sswitch_0
    return-object p0

    .line 790
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->setId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;

    goto :goto_0

    .line 794
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;

    goto :goto_0

    .line 798
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;-><init>()V

    .line 799
    .local v1, value:Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 800
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->setDetail(Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;

    goto :goto_0

    .line 804
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->setNumDiscs(I)Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;

    goto :goto_0

    .line 780
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 633
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;

    move-result-object v0

    return-object v0
.end method

.method public setDetail(Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;
    .locals 1
    .parameter "value"

    .prologue
    .line 681
    if-nez p1, :cond_0

    .line 682
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 684
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->hasDetail:Z

    .line 685
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->detail_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    .line 686
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;
    .locals 1
    .parameter "value"

    .prologue
    .line 647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->hasId:Z

    .line 648
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->id_:Ljava/lang/String;

    .line 649
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;
    .locals 1
    .parameter "value"

    .prologue
    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->hasName:Z

    .line 665
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->name_:Ljava/lang/String;

    .line 666
    return-object p0
.end method

.method public setNumDiscs(I)Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;
    .locals 1
    .parameter "value"

    .prologue
    .line 701
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->hasNumDiscs:Z

    .line 702
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->numDiscs_:I

    .line 703
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
    .line 730
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 733
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 736
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->hasDetail()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 737
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->getDetail()Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 739
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->hasNumDiscs()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 740
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;->getNumDiscs()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 742
    :cond_3
    return-void
.end method
