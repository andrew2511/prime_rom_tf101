.class public final Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Buy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LineItem"
.end annotation


# instance fields
.field private cachedSize:I

.field private description_:Ljava/lang/String;

.field private hasDescription:Z

.field private hasName:Z

.field private hasPrice:Z

.field private name_:Ljava/lang/String;

.field private price_:Lcom/google/android/finsky/remoting/protos/Common$Offer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 701
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->name_:Ljava/lang/String;

    .line 718
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->description_:Ljava/lang/String;

    .line 735
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->price_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 780
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->cachedSize:I

    .line 696
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 782
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->cachedSize:I

    if-gez v0, :cond_0

    .line 784
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getSerializedSize()I

    .line 786
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->cachedSize:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->price_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 790
    const/4 v0, 0x0

    .line 791
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 795
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasDescription()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 796
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 799
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasPrice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 800
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getPrice()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 803
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->cachedSize:I

    .line 804
    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasDescription:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasName:Z

    return v0
.end method

.method public hasPrice()Z
    .locals 1

    .prologue
    .line 736
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasPrice:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 811
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 812
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 816
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 817
    :sswitch_0
    return-object p0

    .line 822
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    goto :goto_0

    .line 826
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->setDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    goto :goto_0

    .line 830
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 831
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 832
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->setPrice(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    goto :goto_0

    .line 812
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 694
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasDescription:Z

    .line 723
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->description_:Ljava/lang/String;

    .line 724
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasName:Z

    .line 706
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->name_:Ljava/lang/String;

    .line 707
    return-object p0
.end method

.method public setPrice(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 739
    if-nez p1, :cond_0

    .line 740
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 742
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasPrice:Z

    .line 743
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->price_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 744
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
    .line 769
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 772
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 775
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasPrice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getPrice()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 778
    :cond_2
    return-void
.end method
