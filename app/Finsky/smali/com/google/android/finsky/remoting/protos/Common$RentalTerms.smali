.class public final Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RentalTerms"
.end annotation


# instance fields
.field private activatePeriodSeconds_:I

.field private cachedSize:I

.field private grantPeriodSeconds_:I

.field private hasActivatePeriodSeconds:Z

.field private hasGrantPeriodSeconds:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 930
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 935
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->grantPeriodSeconds_:I

    .line 952
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->activatePeriodSeconds_:I

    .line 987
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->cachedSize:I

    .line 930
    return-void
.end method


# virtual methods
.method public getActivatePeriodSeconds()I
    .locals 1

    .prologue
    .line 953
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->activatePeriodSeconds_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 989
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->cachedSize:I

    if-gez v0, :cond_0

    .line 991
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->getSerializedSize()I

    .line 993
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->cachedSize:I

    return v0
.end method

.method public getGrantPeriodSeconds()I
    .locals 1

    .prologue
    .line 936
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->grantPeriodSeconds_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 997
    const/4 v0, 0x0

    .line 998
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->hasGrantPeriodSeconds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 999
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->getGrantPeriodSeconds()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1002
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->hasActivatePeriodSeconds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1003
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->getActivatePeriodSeconds()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1006
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->cachedSize:I

    .line 1007
    return v0
.end method

.method public hasActivatePeriodSeconds()Z
    .locals 1

    .prologue
    .line 954
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->hasActivatePeriodSeconds:Z

    return v0
.end method

.method public hasGrantPeriodSeconds()Z
    .locals 1

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->hasGrantPeriodSeconds:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1014
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1015
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1019
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1020
    :sswitch_0
    return-object p0

    .line 1025
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->setGrantPeriodSeconds(I)Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    goto :goto_0

    .line 1029
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->setActivatePeriodSeconds(I)Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    goto :goto_0

    .line 1015
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 928
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    move-result-object v0

    return-object v0
.end method

.method public setActivatePeriodSeconds(I)Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;
    .locals 1
    .parameter "value"

    .prologue
    .line 956
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->hasActivatePeriodSeconds:Z

    .line 957
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->activatePeriodSeconds_:I

    .line 958
    return-object p0
.end method

.method public setGrantPeriodSeconds(I)Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;
    .locals 1
    .parameter "value"

    .prologue
    .line 939
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->hasGrantPeriodSeconds:Z

    .line 940
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->grantPeriodSeconds_:I

    .line 941
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
    .line 979
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->hasGrantPeriodSeconds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->getGrantPeriodSeconds()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 982
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->hasActivatePeriodSeconds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 983
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->getActivatePeriodSeconds()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 985
    :cond_1
    return-void
.end method
