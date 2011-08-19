.class public final Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TranslatedText"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasSourceLocale:Z

.field private hasTargetLocale:Z

.field private hasText:Z

.field private sourceLocale_:Ljava/lang/String;

.field private targetLocale_:Ljava/lang/String;

.field private text_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 519
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->text_:Ljava/lang/String;

    .line 536
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->sourceLocale_:Ljava/lang/String;

    .line 553
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->targetLocale_:Ljava/lang/String;

    .line 594
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->cachedSize:I

    .line 514
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->cachedSize:I

    if-gez v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getSerializedSize()I

    .line 600
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 604
    const/4 v0, 0x0

    .line 605
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 609
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasSourceLocale()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 610
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getSourceLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 613
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasTargetLocale()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 614
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getTargetLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 617
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->cachedSize:I

    .line 618
    return v0
.end method

.method public getSourceLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->sourceLocale_:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->targetLocale_:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSourceLocale()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasSourceLocale:Z

    return v0
.end method

.method public hasTargetLocale()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasTargetLocale:Z

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasText:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 626
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 630
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 631
    :sswitch_0
    return-object p0

    .line 636
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->setText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    goto :goto_0

    .line 640
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->setSourceLocale(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    goto :goto_0

    .line 644
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->setTargetLocale(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    goto :goto_0

    .line 626
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
    .line 512
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    move-result-object v0

    return-object v0
.end method

.method public setSourceLocale(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    .locals 1
    .parameter "value"

    .prologue
    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasSourceLocale:Z

    .line 541
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->sourceLocale_:Ljava/lang/String;

    .line 542
    return-object p0
.end method

.method public setTargetLocale(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    .locals 1
    .parameter "value"

    .prologue
    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasTargetLocale:Z

    .line 558
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->targetLocale_:Ljava/lang/String;

    .line 559
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    .locals 1
    .parameter "value"

    .prologue
    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasText:Z

    .line 524
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->text_:Ljava/lang/String;

    .line 525
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
    .line 583
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasSourceLocale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getSourceLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 589
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasTargetLocale()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getTargetLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 592
    :cond_2
    return-void
.end method
