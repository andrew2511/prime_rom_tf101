.class public final Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BookInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/BookInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BookAuthor"
.end annotation


# instance fields
.field private cachedSize:I

.field private deprecatedQuery_:Ljava/lang/String;

.field private docid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

.field private hasDeprecatedQuery:Z

.field private hasDocid:Z

.field private hasName:Z

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->name_:Ljava/lang/String;

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->docid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->deprecatedQuery_:Ljava/lang/String;

    .line 218
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->cachedSize:I

    .line 132
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->cachedSize:I

    if-gez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->getSerializedSize()I

    .line 224
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->cachedSize:I

    return v0
.end method

.method public getDeprecatedQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->deprecatedQuery_:Ljava/lang/String;

    return-object v0
.end method

.method public getDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->docid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasDeprecatedQuery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->getDeprecatedQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasDocid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->getDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->cachedSize:I

    .line 242
    return v0
.end method

.method public hasDeprecatedQuery()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasDeprecatedQuery:Z

    return v0
.end method

.method public hasDocid()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasDocid:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasName:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 250
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 254
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    :sswitch_0
    return-object p0

    .line 260
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;

    goto :goto_0

    .line 264
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->setDeprecatedQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;

    goto :goto_0

    .line 268
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;-><init>()V

    .line 269
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 270
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->setDocid(Lcom/google/android/finsky/remoting/protos/Doc$Docid;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;

    goto :goto_0

    .line 250
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
    .line 130
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;

    move-result-object v0

    return-object v0
.end method

.method public setDeprecatedQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    .locals 1
    .parameter "value"

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasDeprecatedQuery:Z

    .line 179
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->deprecatedQuery_:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method public setDocid(Lcom/google/android/finsky/remoting/protos/Doc$Docid;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    .locals 1
    .parameter "value"

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 161
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasDocid:Z

    .line 162
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->docid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    .line 163
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    .locals 1
    .parameter "value"

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasName:Z

    .line 142
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->name_:Ljava/lang/String;

    .line 143
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
    .line 207
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasDeprecatedQuery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->getDeprecatedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->hasDocid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;->getDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 216
    :cond_2
    return-void
.end method
