.class final Lcom/amazon/topaz/internal/binxml/Crypto;
.super Ljava/lang/Object;
.source "Crypto.java"


# instance fields
.field private final key_:[B

.field private last_:I

.field private pool_:I


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .parameter "key"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/amazon/topaz/internal/binxml/Crypto;->key_:[B

    .line 17
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/Crypto;->key_:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 45
    const v1, -0x35001e62

    iput v1, p0, Lcom/amazon/topaz/internal/binxml/Crypto;->pool_:I

    .line 46
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/Crypto;->key_:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/Crypto;->key_:[B

    aget-byte v1, v1, v0

    invoke-direct {p0, v1}, Lcom/amazon/topaz/internal/binxml/Crypto;->involve(B)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method private involve(B)V
    .locals 4
    .parameter "b"

    .prologue
    .line 52
    and-int/lit16 v0, p1, 0xff

    .line 53
    .local v0, k:I
    iget v1, p0, Lcom/amazon/topaz/internal/binxml/Crypto;->pool_:I

    iput v1, p0, Lcom/amazon/topaz/internal/binxml/Crypto;->last_:I

    .line 54
    iget v1, p0, Lcom/amazon/topaz/internal/binxml/Crypto;->pool_:I

    ushr-int/lit8 v1, v1, 0x7

    iget v2, p0, Lcom/amazon/topaz/internal/binxml/Crypto;->pool_:I

    ushr-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    mul-int v2, v0, v0

    const v3, 0xf902007

    mul-int/2addr v2, v3

    xor-int/2addr v1, v2

    iput v1, p0, Lcom/amazon/topaz/internal/binxml/Crypto;->pool_:I

    .line 55
    return-void
.end method

.method private mangle(B)B
    .locals 2
    .parameter "b"

    .prologue
    .line 58
    iget v0, p0, Lcom/amazon/topaz/internal/binxml/Crypto;->pool_:I

    ushr-int/lit8 v0, v0, 0x3

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/amazon/topaz/internal/binxml/Crypto;->last_:I

    shl-int/lit8 v1, v1, 0x3

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method


# virtual methods
.method public final decrypt([BI)V
    .locals 2
    .parameter "data"
    .parameter "size"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/amazon/topaz/internal/binxml/Crypto;->init()V

    .line 34
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 35
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lcom/amazon/topaz/internal/binxml/Crypto;->mangle(B)B

    move-result v1

    aput-byte v1, p1, v0

    .line 36
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lcom/amazon/topaz/internal/binxml/Crypto;->involve(B)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public final encrypt([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/amazon/topaz/internal/binxml/Crypto;->init()V

    .line 25
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 26
    aget-byte v0, p1, v1

    .line 27
    .local v0, b:B
    aget-byte v2, p1, v1

    invoke-direct {p0, v2}, Lcom/amazon/topaz/internal/binxml/Crypto;->mangle(B)B

    move-result v2

    aput-byte v2, p1, v1

    .line 28
    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/binxml/Crypto;->involve(B)V

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v0           #b:B
    :cond_0
    return-void
.end method
