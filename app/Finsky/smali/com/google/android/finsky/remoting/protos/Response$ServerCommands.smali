.class public final Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerCommands"
.end annotation


# instance fields
.field private cachedSize:I

.field private clearCache_:Z

.field private displayErrorMessage_:Ljava/lang/String;

.field private hasClearCache:Z

.field private hasDisplayErrorMessage:Z

.field private hasLogErrorStacktrace:Z

.field private logErrorStacktrace_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->clearCache_:Z

    .line 608
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->displayErrorMessage_:Ljava/lang/String;

    .line 625
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->logErrorStacktrace_:Ljava/lang/String;

    .line 664
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->cachedSize:I

    .line 586
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->cachedSize:I

    if-gez v0, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getSerializedSize()I

    .line 670
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->cachedSize:I

    return v0
.end method

.method public getClearCache()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->clearCache_:Z

    return v0
.end method

.method public getDisplayErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->displayErrorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getLogErrorStacktrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->logErrorStacktrace_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 674
    const/4 v0, 0x0

    .line 675
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasClearCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getClearCache()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasDisplayErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 680
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getDisplayErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 683
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasLogErrorStacktrace()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 684
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getLogErrorStacktrace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 687
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->cachedSize:I

    .line 688
    return v0
.end method

.method public hasClearCache()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasClearCache:Z

    return v0
.end method

.method public hasDisplayErrorMessage()Z
    .locals 1

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasDisplayErrorMessage:Z

    return v0
.end method

.method public hasLogErrorStacktrace()Z
    .locals 1

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasLogErrorStacktrace:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 696
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 700
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 701
    :sswitch_0
    return-object p0

    .line 706
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->setClearCache(Z)Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    goto :goto_0

    .line 710
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->setDisplayErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    goto :goto_0

    .line 714
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->setLogErrorStacktrace(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    goto :goto_0

    .line 696
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 584
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    move-result-object v0

    return-object v0
.end method

.method public setClearCache(Z)Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    .locals 1
    .parameter "value"

    .prologue
    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasClearCache:Z

    .line 596
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->clearCache_:Z

    .line 597
    return-object p0
.end method

.method public setDisplayErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    .locals 1
    .parameter "value"

    .prologue
    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasDisplayErrorMessage:Z

    .line 613
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->displayErrorMessage_:Ljava/lang/String;

    .line 614
    return-object p0
.end method

.method public setLogErrorStacktrace(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    .locals 1
    .parameter "value"

    .prologue
    .line 629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasLogErrorStacktrace:Z

    .line 630
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->logErrorStacktrace_:Ljava/lang/String;

    .line 631
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
    .line 653
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasClearCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getClearCache()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 656
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasDisplayErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getDisplayErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 659
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasLogErrorStacktrace()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 660
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getLogErrorStacktrace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 662
    :cond_2
    return-void
.end method
