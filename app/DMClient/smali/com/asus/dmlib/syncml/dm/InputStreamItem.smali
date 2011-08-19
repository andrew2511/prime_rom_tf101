.class public Lcom/asus/dmlib/syncml/dm/InputStreamItem;
.super Ljava/lang/Object;
.source "InputStreamItem.java"


# instance fields
.field private byteArray:[B

.field private byteStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .parameter "array"

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/InputStreamItem;->byteArray:[B

    .line 13
    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/InputStreamItem;->byteStream:Ljava/io/ByteArrayInputStream;

    .line 16
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/InputStreamItem;->byteArray:[B

    .line 17
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/InputStreamItem;->byteArray:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/InputStreamItem;->byteStream:Ljava/io/ByteArrayInputStream;

    .line 18
    return-void
.end method


# virtual methods
.method public closeInputStream()V
    .locals 2

    .prologue
    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/InputStreamItem;->byteStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 28
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/InputStreamItem;->byteArray:[B

    array-length v0, v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/InputStreamItem;->byteStream:Ljava/io/ByteArrayInputStream;

    return-object v0
.end method
