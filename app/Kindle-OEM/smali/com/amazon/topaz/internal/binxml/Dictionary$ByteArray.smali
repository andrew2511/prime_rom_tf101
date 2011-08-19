.class Lcom/amazon/topaz/internal/binxml/Dictionary$ByteArray;
.super Ljava/lang/Object;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/binxml/Dictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteArray"
.end annotation


# instance fields
.field data:[B


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    :try_start_0
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->ENCODING_UTF8:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$ByteArray;->data:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$ByteArray;->data:[B

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 147
    instance-of v3, p1, Lcom/amazon/topaz/internal/binxml/Dictionary$StringBytesChunk;

    if-eqz v3, :cond_0

    .line 148
    check-cast p1, Lcom/amazon/topaz/internal/binxml/Dictionary$StringBytesChunk;

    .end local p1
    iget-object v3, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$ByteArray;->data:[B

    invoke-virtual {p1, v3}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringBytesChunk;->equalsTo([B)Z

    move-result v3

    .line 158
    :goto_0
    return v3

    .line 149
    .restart local p1
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/topaz/internal/binxml/Dictionary$ByteArray;

    move-object v1, v0

    .line 150
    .local v1, byteArray:Lcom/amazon/topaz/internal/binxml/Dictionary$ByteArray;
    if-ne p0, v1, :cond_1

    move v3, v6

    .line 151
    goto :goto_0

    .line 152
    :cond_1
    iget-object v3, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$ByteArray;->data:[B

    array-length v3, v3

    iget-object v4, v1, Lcom/amazon/topaz/internal/binxml/Dictionary$ByteArray;->data:[B

    array-length v4, v4

    if-eq v3, v4, :cond_2

    move v3, v5

    .line 153
    goto :goto_0

    .line 154
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$ByteArray;->data:[B

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 155
    iget-object v3, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$ByteArray;->data:[B

    aget-byte v3, v3, v2

    iget-object v4, v1, Lcom/amazon/topaz/internal/binxml/Dictionary$ByteArray;->data:[B

    aget-byte v4, v4, v2

    if-eq v3, v4, :cond_3

    move v3, v5

    .line 156
    goto :goto_0

    .line 154
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v3, v6

    .line 158
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$ByteArray;->data:[B

    array-length v0, v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$ByteArray;->data:[B

    aget-byte v0, v0, v1

    goto :goto_0
.end method
