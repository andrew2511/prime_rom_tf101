.class public final Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DeviceDoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Term"
.end annotation


# instance fields
.field private body_:Ljava/lang/String;

.field private cachedSize:I

.field private hasBody:Z

.field private hasHeader:Z

.field private header_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2550
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2555
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->header_:Ljava/lang/String;

    .line 2572
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->body_:Ljava/lang/String;

    .line 2607
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->cachedSize:I

    .line 2550
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2573
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->body_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2609
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->cachedSize:I

    if-gez v0, :cond_0

    .line 2611
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->getSerializedSize()I

    .line 2613
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->cachedSize:I

    return v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2556
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->header_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2617
    const/4 v0, 0x0

    .line 2618
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->hasHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2619
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2622
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->hasBody()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2623
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2626
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->cachedSize:I

    .line 2627
    return v0
.end method

.method public hasBody()Z
    .locals 1

    .prologue
    .line 2574
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->hasBody:Z

    return v0
.end method

.method public hasHeader()Z
    .locals 1

    .prologue
    .line 2557
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->hasHeader:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2634
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2635
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2639
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2640
    :sswitch_0
    return-object p0

    .line 2645
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->setHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;

    goto :goto_0

    .line 2649
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->setBody(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;

    goto :goto_0

    .line 2635
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2a -> :sswitch_1
        0x32 -> :sswitch_2
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
    .line 2548
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;
    .locals 1
    .parameter "value"

    .prologue
    .line 2576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->hasBody:Z

    .line 2577
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->body_:Ljava/lang/String;

    .line 2578
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;
    .locals 1
    .parameter "value"

    .prologue
    .line 2559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->hasHeader:Z

    .line 2560
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->header_:Ljava/lang/String;

    .line 2561
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
    .line 2599
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2600
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2602
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2603
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2605
    :cond_1
    return-void
.end method
