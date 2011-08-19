.class public final Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Toc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Toc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CorpusMetadata"
.end annotation


# instance fields
.field private backend_:I

.field private cachedSize:I

.field private hasBackend:Z

.field private hasLandingUrl:Z

.field private hasLibraryName:Z

.field private hasLibraryUrl:Z

.field private hasName:Z

.field private landingUrl_:Ljava/lang/String;

.field private libraryName_:Ljava/lang/String;

.field private libraryUrl_:Ljava/lang/String;

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->backend_:I

    .line 202
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->name_:Ljava/lang/String;

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->landingUrl_:Ljava/lang/String;

    .line 236
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->libraryName_:Ljava/lang/String;

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->libraryUrl_:Ljava/lang/String;

    .line 301
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->cachedSize:I

    .line 180
    return-void
.end method


# virtual methods
.method public getBackend()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->backend_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->cachedSize:I

    if-gez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getSerializedSize()I

    .line 307
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->cachedSize:I

    return v0
.end method

.method public getLandingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->landingUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getLibraryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->libraryName_:Ljava/lang/String;

    return-object v0
.end method

.method public getLibraryUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->libraryUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasBackend()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLandingUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 324
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryName()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 325
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 328
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryUrl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 329
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLibraryUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    :cond_4
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->cachedSize:I

    .line 333
    return v0
.end method

.method public hasBackend()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasBackend:Z

    return v0
.end method

.method public hasLandingUrl()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLandingUrl:Z

    return v0
.end method

.method public hasLibraryName()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryName:Z

    return v0
.end method

.method public hasLibraryUrl()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryUrl:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasName:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 341
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 345
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    :sswitch_0
    return-object p0

    .line 351
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->setBackend(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    goto :goto_0

    .line 355
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    goto :goto_0

    .line 359
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->setLandingUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    goto :goto_0

    .line 363
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->setLibraryName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    goto :goto_0

    .line 367
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->setLibraryUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    goto :goto_0

    .line 341
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 178
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    return-object v0
.end method

.method public setBackend(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasBackend:Z

    .line 190
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->backend_:I

    .line 191
    return-object p0
.end method

.method public setLandingUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLandingUrl:Z

    .line 224
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->landingUrl_:Ljava/lang/String;

    .line 225
    return-object p0
.end method

.method public setLibraryName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryName:Z

    .line 241
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->libraryName_:Ljava/lang/String;

    .line 242
    return-object p0
.end method

.method public setLibraryUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryUrl:Z

    .line 258
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->libraryUrl_:Ljava/lang/String;

    .line 259
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasName:Z

    .line 207
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->name_:Ljava/lang/String;

    .line 208
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
    .line 284
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasBackend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLandingUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 293
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 296
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 297
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLibraryUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 299
    :cond_4
    return-void
.end method
