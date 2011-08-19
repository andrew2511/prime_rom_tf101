.class Lcom/amazon/topaz/internal/binxml/Dictionary$StringBytesChunk;
.super Ljava/lang/Object;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/binxml/Dictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StringBytesChunk"
.end annotation


# instance fields
.field length:I

.field offset:I

.field final synthetic this$0:Lcom/amazon/topaz/internal/binxml/Dictionary;


# direct methods
.method constructor <init>(Lcom/amazon/topaz/internal/binxml/Dictionary;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringBytesChunk;->this$0:Lcom/amazon/topaz/internal/binxml/Dictionary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    instance-of v2, p1, Lcom/amazon/topaz/internal/binxml/Dictionary$ByteArray;

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 96
    :goto_0
    return v2

    .line 88
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringBytesChunk;

    move-object v1, v0

    .line 89
    .local v1, chunk:Lcom/amazon/topaz/internal/binxml/Dictionary$StringBytesChunk;
    if-ne p0, v1, :cond_1

    move v2, v5

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget v2, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringBytesChunk;->offset:I

    iget v3, v1, Lcom/amazon/topaz/internal/binxml/Dictionary$StringBytesChunk;->offset:I

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    iget v2, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringBytesChunk;->length:I

    iget v3, v1, Lcom/amazon/topaz/internal/binxml/Dictionary$StringBytesChunk;->length:I

    if-eq v2, v3, :cond_3

    move v2, v4

    .line 94
    goto :goto_0

    :cond_3
    move v2, v5

    .line 96
    goto :goto_0
.end method

.method equalsTo([B)Z
    .locals 5
    .parameter "bytes"

    .prologue
    const/4 v4, 0x0

    .line 73
    array-length v1, p1

    iget v2, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringBytesChunk;->length:I

    if-eq v1, v2, :cond_0

    move v1, v4

    .line 79
    :goto_0
    return v1

    .line 75
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringBytesChunk;->length:I

    if-ge v0, v1, :cond_2

    .line 76
    aget-byte v1, p1, v0

    iget-object v2, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringBytesChunk;->this$0:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget-object v2, v2, Lcom/amazon/topaz/internal/binxml/Dictionary;->bytes:[B

    iget v3, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringBytesChunk;->offset:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    if-eq v1, v2, :cond_1

    move v1, v4

    .line 77
    goto :goto_0

    .line 75
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringBytesChunk;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringBytesChunk;->this$0:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget-object v0, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->bytes:[B

    iget v1, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringBytesChunk;->offset:I

    aget-byte v0, v0, v1

    goto :goto_0
.end method
