.class public Lcom/google/android/mms/pdu/QuotedPrintable;
.super Ljava/lang/Object;
.source "QuotedPrintable.java"


# static fields
.field private static ESCAPE_CHAR:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/16 v0, 0x3d

    sput-byte v0, Lcom/google/android/mms/pdu/QuotedPrintable;->ESCAPE_CHAR:B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decodeQuotedPrintable([B)[B
    .registers 11
    .parameter "bytes"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 40
    if-nez p0, :cond_6

    move-object v6, v8

    .line 66
    :goto_5
    return-object v6

    .line 43
    :cond_6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    .local v1, buffer:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_c
    array-length v6, p0

    if-ge v3, v6, :cond_58

    .line 45
    aget-byte v0, p0, v3

    .line 46
    .local v0, b:I
    sget-byte v6, Lcom/google/android/mms/pdu/QuotedPrintable;->ESCAPE_CHAR:B

    if-ne v0, v6, :cond_54

    .line 48
    const/16 v6, 0xd

    add-int/lit8 v7, v3, 0x1

    :try_start_19
    aget-byte v7, p0, v7

    int-to-char v7, v7

    if-ne v6, v7, :cond_2c

    const/16 v6, 0xa

    add-int/lit8 v7, v3, 0x2

    aget-byte v7, p0, v7

    int-to-char v7, v7

    if-ne v6, v7, :cond_2c

    .line 50
    add-int/lit8 v3, v3, 0x2

    .line 44
    :goto_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 53
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    aget-byte v6, p0, v3

    int-to-char v6, v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 54
    .local v5, u:I
    add-int/lit8 v3, v3, 0x1

    aget-byte v6, p0, v3

    int-to-char v6, v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 55
    .local v4, l:I
    if-eq v5, v9, :cond_46

    if-ne v4, v9, :cond_48

    :cond_46
    move-object v6, v8

    .line 56
    goto :goto_5

    .line 58
    :cond_48
    shl-int/lit8 v6, v5, 0x4

    add-int/2addr v6, v4

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_4f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_19 .. :try_end_4f} :catch_50

    goto :goto_29

    .line 59
    .end local v4           #l:I
    .end local v5           #u:I
    :catch_50
    move-exception v6

    move-object v2, v6

    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    move-object v6, v8

    .line 60
    goto :goto_5

    .line 63
    .end local v2           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_54
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_29

    .line 66
    .end local v0           #b:I
    :cond_58
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_5
.end method
