.class Lcom/google/android/apps/books/util/PlatformK_rStorage;
.super Ljava/lang/Object;
.source "PlatformK_rStorage.java"

# interfaces
.implements Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;


# static fields
.field private static final A:[B

.field private static final B:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 15
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/apps/books/util/PlatformK_rStorage;->A:[B

    .line 16
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/apps/books/util/PlatformK_rStorage;->B:[B

    return-void

    .line 15
    nop

    :array_0
    .array-data 0x1
        0xf6t
        0x66t
        0xf8t
        0x24t
        0x66t
        0x6dt
        0x8ft
        0x31t
        0x7bt
        0xdat
        0x13t
        0xft
        0x8at
        0x82t
        0x33t
        0xe4t
    .end array-data

    .line 16
    :array_1
    .array-data 0x1
        0x6bt
        0x9et
        0x8et
        0x86t
        0x32t
        0x2ct
        0x21t
        0x30t
        0x72t
        0x2ct
        0xc5t
        0x94t
        0x8dt
        0x6et
        0xa1t
        0x80t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getK_r()Ljavax/crypto/SecretKey;
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 19
    new-array v0, v6, [B

    .line 20
    .local v0, derivedKey:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 21
    mul-int/lit8 v3, v1, 0x2

    rem-int/lit8 v3, v3, 0x10

    mul-int/lit8 v4, v1, 0x2

    div-int/lit8 v4, v4, 0x10

    add-int v2, v3, v4

    .line 22
    .local v2, k:I
    sget-object v3, Lcom/google/android/apps/books/util/PlatformK_rStorage;->A:[B

    aget-byte v3, v3, v2

    sget-object v4, Lcom/google/android/apps/books/util/PlatformK_rStorage;->B:[B

    const/16 v5, 0xf

    sub-int/2addr v5, v1

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 20
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    .end local v2           #k:I
    :cond_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method public getK_rVersion()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x2

    return v0
.end method
