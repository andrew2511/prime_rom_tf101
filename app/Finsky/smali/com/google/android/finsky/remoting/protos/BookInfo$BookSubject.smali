.class public final Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BookInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/BookInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BookSubject"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasName:Z

.field private hasQuery:Z

.field private name_:Ljava/lang/String;

.field private query_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->name_:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->query_:Ljava/lang/String;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->cachedSize:I

    if-gez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->getSerializedSize()I

    .line 74
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->cachedSize:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasQuery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->cachedSize:I

    .line 88
    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasName:Z

    return v0
.end method

.method public hasQuery()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasQuery:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 96
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    :sswitch_0
    return-object p0

    .line 106
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;

    goto :goto_0

    .line 110
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->setQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;

    goto :goto_0

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    .locals 1
    .parameter "value"

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasName:Z

    .line 19
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->name_:Ljava/lang/String;

    .line 20
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    .locals 1
    .parameter "value"

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasQuery:Z

    .line 36
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->query_:Ljava/lang/String;

    .line 37
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
    .line 60
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 66
    :cond_1
    return-void
.end method
