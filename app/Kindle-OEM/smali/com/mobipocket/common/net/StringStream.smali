.class public Lcom/mobipocket/common/net/StringStream;
.super Ljava/lang/Object;
.source "StringStream.java"


# instance fields
.field private final _IS:Ljava/io/InputStream;

.field private final _ISR:Ljava/io/InputStreamReader;

.field private pData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/mobipocket/common/net/StringStream;->_IS:Ljava/io/InputStream;

    .line 39
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    iput-object v0, p0, Lcom/mobipocket/common/net/StringStream;->_ISR:Ljava/io/InputStreamReader;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/mobipocket/common/net/StringStream;->pData:Ljava/lang/String;

    .line 48
    return-void

    .line 43
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/mobipocket/common/net/StringStream;->_IS:Ljava/io/InputStream;

    .line 30
    iput-object v0, p0, Lcom/mobipocket/common/net/StringStream;->_ISR:Ljava/io/InputStreamReader;

    .line 31
    iput-object p1, p0, Lcom/mobipocket/common/net/StringStream;->pData:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private getMoreData(I)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMoreData maxIndex :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v0, p0, Lcom/mobipocket/common/net/StringStream;->_ISR:Ljava/io/InputStreamReader;

    if-nez v0, :cond_1

    .line 142
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 169
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v4, v0}, Ljava/lang/String;-><init>([CII)V

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mobipocket/common/net/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/net/StringStream;->pData:Ljava/lang/String;

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/net/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_3

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/net/StringStream;->_IS:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 151
    if-nez v0, :cond_2

    .line 153
    const/16 v0, 0x3e8

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "available = 0 --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMoreData available :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    new-array v1, v0, [C

    .line 158
    iget-object v2, p0, Lcom/mobipocket/common/net/StringStream;->_ISR:Ljava/io/InputStreamReader;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/InputStreamReader;->read([CII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 164
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 166
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 161
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "IOException"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_3
    return-void
.end method


# virtual methods
.method charAt(I)C
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mobipocket/common/net/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 69
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mobipocket/common/net/StringStream;->getMoreData(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/net/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method exist(I)Z
    .locals 2
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/mobipocket/common/net/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 122
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mobipocket/common/net/StringStream;->getMoreData(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/net/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 126
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 129
    goto :goto_0
.end method

.method indexOf(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mobipocket/common/net/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 83
    :try_start_0
    invoke-direct {p0, p2}, Lcom/mobipocket/common/net/StringStream;->getMoreData(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/net/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_1

    .line 93
    :try_start_1
    iget-object v1, p0, Lcom/mobipocket/common/net/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/mobipocket/common/net/StringStream;->getMoreData(I)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 96
    :cond_1
    return v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method startsWith(Ljava/lang/String;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    .line 105
    iget-object v1, p0, Lcom/mobipocket/common/net/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 108
    :try_start_0
    invoke-direct {p0, v0}, Lcom/mobipocket/common/net/StringStream;->getMoreData(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/net/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method substring(II)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mobipocket/common/net/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 55
    :try_start_0
    invoke-direct {p0, p2}, Lcom/mobipocket/common/net/StringStream;->getMoreData(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/net/StringStream;->pData:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
