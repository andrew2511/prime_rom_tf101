.class public final Lorg/apache/commons/compress/archivers/zip/ZipLong;
.super Ljava/lang/Object;
.source "ZipLong.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BYTE_1:I = 0x1

.field private static final BYTE_1_MASK:I = 0xff00

.field private static final BYTE_1_SHIFT:I = 0x8

.field private static final BYTE_2:I = 0x2

.field private static final BYTE_2_MASK:I = 0xff0000

.field private static final BYTE_2_SHIFT:I = 0x10

.field private static final BYTE_3:I = 0x3

.field private static final BYTE_3_MASK:J = 0xff000000L

.field private static final BYTE_3_SHIFT:I = 0x18

.field private static final BYTE_MASK:I = 0xff

.field public static final CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong; = null

.field public static final DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong; = null

.field public static final LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong; = null

.field private static final WORD:I = 0x4


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    const-wide/32 v1, 0x2014b50

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>(J)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 49
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    const-wide/32 v1, 0x4034b50

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>(J)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 55
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    const-wide/32 v1, 0x8074b50

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>(J)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->value:J

    .line 63
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "bytes"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    .line 71
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->value:J

    .line 80
    return-void
.end method

.method public static getBytes(J)[B
    .locals 5
    .parameter "value"

    .prologue
    .line 104
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 105
    .local v0, result:[B
    const/4 v1, 0x0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 106
    const/4 v1, 0x1

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p0

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 107
    const/4 v1, 0x2

    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p0

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 108
    const/4 v1, 0x3

    const-wide v2, 0xff000000L

    and-long/2addr v2, p0

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 109
    return-object v0
.end method

.method public static getValue([B)J
    .locals 2
    .parameter "bytes"

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getValue([BI)J
    .locals 6
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 119
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    const-wide v4, 0xff000000L

    and-long v0, v2, v4

    .line 120
    .local v0, value:J
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 121
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 122
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 123
    return-wide v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 157
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 158
    :catch_0
    move-exception v0

    .line 160
    .local v0, cnfe:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 141
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    .line 144
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->value:J

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .end local p1
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->value:J

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->value:J

    long-to-int v0, v0

    return v0
.end method
