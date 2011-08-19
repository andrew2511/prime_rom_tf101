.class public final Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Browse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Browse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BrowseLink"
.end annotation


# instance fields
.field private cachedSize:I

.field private dataUrl_:Ljava/lang/String;

.field private hasDataUrl:Z

.field private hasIconUrl:Z

.field private hasName:Z

.field private iconUrl_:Ljava/lang/String;

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 230
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->name_:Ljava/lang/String;

    .line 247
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->iconUrl_:Ljava/lang/String;

    .line 264
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->dataUrl_:Ljava/lang/String;

    .line 303
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->cachedSize:I

    .line 225
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->cachedSize:I

    if-gez v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getSerializedSize()I

    .line 309
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->cachedSize:I

    return v0
.end method

.method public getDataUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->dataUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->iconUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasIconUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasDataUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 323
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getDataUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->cachedSize:I

    .line 327
    return v0
.end method

.method public hasDataUrl()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasDataUrl:Z

    return v0
.end method

.method public hasIconUrl()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasIconUrl:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasName:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 335
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 339
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 340
    :sswitch_0
    return-object p0

    .line 345
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    goto :goto_0

    .line 349
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->setIconUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    goto :goto_0

    .line 353
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->setDataUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    goto :goto_0

    .line 335
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
    .line 223
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    move-result-object v0

    return-object v0
.end method

.method public setDataUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    .locals 1
    .parameter "value"

    .prologue
    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasDataUrl:Z

    .line 269
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->dataUrl_:Ljava/lang/String;

    .line 270
    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    .locals 1
    .parameter "value"

    .prologue
    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasIconUrl:Z

    .line 252
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->iconUrl_:Ljava/lang/String;

    .line 253
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    .locals 1
    .parameter "value"

    .prologue
    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasName:Z

    .line 235
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->name_:Ljava/lang/String;

    .line 236
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
    .line 292
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasIconUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->hasDataUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getDataUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 301
    :cond_2
    return-void
.end method
