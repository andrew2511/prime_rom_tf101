.class public Ljava/nio/charset/Charsets;
.super Ljava/lang/Object;
.source "Charsets.java"


# static fields
.field public static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final US_ASCII:Ljava/nio/charset/Charset;

.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 37
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ljava/nio/charset/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 42
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method public static native asciiBytesToChars([BII[C)V
.end method

.method public static native isoLatin1BytesToChars([BII[C)V
.end method

.method public static native toAsciiBytes([CII)[B
.end method

.method public static toBigEndianUtf16Bytes([CII)[B
    .registers 10
    .parameter "chars"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 67
    mul-int/lit8 v6, p2, 0x2

    new-array v3, v6, [B

    .line 68
    .local v3, result:[B
    add-int v1, p1, p2

    .line 69
    .local v1, end:I
    const/4 v4, 0x0

    .line 70
    .local v4, resultIndex:I
    move v2, p1

    .local v2, i:I
    move v5, v4

    .end local v4           #resultIndex:I
    .local v5, resultIndex:I
    :goto_9
    if-ge v2, v1, :cond_1c

    .line 71
    aget-char v0, p0, v2

    .line 72
    .local v0, ch:C
    add-int/lit8 v4, v5, 0x1

    .end local v5           #resultIndex:I
    .restart local v4       #resultIndex:I
    shr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 73
    add-int/lit8 v5, v4, 0x1

    .end local v4           #resultIndex:I
    .restart local v5       #resultIndex:I
    int-to-byte v6, v0

    aput-byte v6, v3, v4

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 75
    .end local v0           #ch:C
    :cond_1c
    return-object v3
.end method

.method public static native toIsoLatin1Bytes([CII)[B
.end method

.method public static native toUtf8Bytes([CII)[B
.end method
