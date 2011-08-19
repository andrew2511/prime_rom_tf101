.class public final Lcom/google/android/finsky/remoting/protos/Doc$Availability;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Availability"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasOfferType:Z

.field private hasRestriction:Z

.field private hasUserHasPurchased:Z

.field private offerType_:I

.field private restriction_:I

.field private userHasPurchased_:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 20
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->restriction_:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->userHasPurchased_:Z

    .line 54
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->offerType_:I

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->cachedSize:I

    if-gez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->getSerializedSize()I

    .line 99
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->cachedSize:I

    return v0
.end method

.method public getOfferType()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->offerType_:I

    return v0
.end method

.method public getRestriction()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->restriction_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->hasUserHasPurchased()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->getUserHasPurchased()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->hasRestriction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->getRestriction()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->hasOfferType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->getOfferType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->cachedSize:I

    .line 117
    return v0
.end method

.method public getUserHasPurchased()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->userHasPurchased_:Z

    return v0
.end method

.method public hasOfferType()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->hasOfferType:Z

    return v0
.end method

.method public hasRestriction()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->hasRestriction:Z

    return v0
.end method

.method public hasUserHasPurchased()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->hasUserHasPurchased:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Availability;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 125
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    :sswitch_0
    return-object p0

    .line 135
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->setUserHasPurchased(Z)Lcom/google/android/finsky/remoting/protos/Doc$Availability;

    goto :goto_0

    .line 139
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->setRestriction(I)Lcom/google/android/finsky/remoting/protos/Doc$Availability;

    goto :goto_0

    .line 143
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->setOfferType(I)Lcom/google/android/finsky/remoting/protos/Doc$Availability;

    goto :goto_0

    .line 125
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20 -> :sswitch_1
        0x28 -> :sswitch_2
        0x30 -> :sswitch_3
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Availability;

    move-result-object v0

    return-object v0
.end method

.method public setOfferType(I)Lcom/google/android/finsky/remoting/protos/Doc$Availability;
    .locals 1
    .parameter "value"

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->hasOfferType:Z

    .line 59
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->offerType_:I

    .line 60
    return-object p0
.end method

.method public setRestriction(I)Lcom/google/android/finsky/remoting/protos/Doc$Availability;
    .locals 1
    .parameter "value"

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->hasRestriction:Z

    .line 25
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->restriction_:I

    .line 26
    return-object p0
.end method

.method public setUserHasPurchased(Z)Lcom/google/android/finsky/remoting/protos/Doc$Availability;
    .locals 1
    .parameter "value"

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->hasUserHasPurchased:Z

    .line 42
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->userHasPurchased_:Z

    .line 43
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
    .line 82
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->hasUserHasPurchased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->getUserHasPurchased()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->hasRestriction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->getRestriction()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->hasOfferType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->getOfferType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 91
    :cond_2
    return-void
.end method
