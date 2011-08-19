.class public final Lorg/codehaus/jackson/io/NumberInput;
.super Ljava/lang/Object;
.source "NumberInput.java"


# static fields
.field static final L_BILLION:J = 0x3b9aca00L

.field static final MAX_LONG_STR:Ljava/lang/String;

.field static final MIN_LONG_STR_NO_SIGN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    const-wide/high16 v0, -0x8000

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    .line 11
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final inLongRange([CIIZ)Z
    .locals 7
    .parameter "digitChars"
    .parameter "offset"
    .parameter "len"
    .parameter "negative"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 69
    if-eqz p3, :cond_0

    sget-object v3, Lorg/codehaus/jackson/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    move-object v1, v3

    .line 70
    .local v1, cmpStr:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 71
    .local v0, cmpLen:I
    if-ge p2, v0, :cond_1

    move v3, v6

    .line 79
    :goto_1
    return v3

    .line 69
    .end local v0           #cmpLen:I
    .end local v1           #cmpStr:Ljava/lang/String;
    :cond_0
    sget-object v3, Lorg/codehaus/jackson/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    move-object v1, v3

    goto :goto_0

    .line 72
    .restart local v0       #cmpLen:I
    .restart local v1       #cmpStr:Ljava/lang/String;
    :cond_1
    if-le p2, v0, :cond_2

    move v3, v5

    goto :goto_1

    .line 74
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 75
    add-int v3, p1, v2

    aget-char v3, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v3, v4, :cond_3

    move v3, v5

    .line 76
    goto :goto_1

    .line 74
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v3, v6

    .line 79
    goto :goto_1
.end method

.method public static final parseInt([CII)I
    .locals 4
    .parameter "digitChars"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/16 v3, 0x30

    .line 22
    aget-char v1, p0, p1

    sub-int v0, v1, v3

    .line 23
    .local v0, num:I
    add-int/2addr p2, p1

    .line 25
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 26
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .line 27
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 28
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .line 29
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 30
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .line 31
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 32
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .line 33
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 34
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .line 35
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 36
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .line 37
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 38
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .line 39
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 40
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .line 49
    :cond_0
    return v0
.end method

.method public static final parseLong([CII)J
    .locals 8
    .parameter "digitChars"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/16 v7, 0x9

    .line 55
    sub-int v0, p2, v7

    .line 56
    .local v0, len1:I
    invoke-static {p0, p1, v0}, Lorg/codehaus/jackson/io/NumberInput;->parseInt([CII)I

    move-result v3

    int-to-long v3, v3

    const-wide/32 v5, 0x3b9aca00

    mul-long v1, v3, v5

    .line 57
    .local v1, val:J
    add-int v3, p1, v0

    invoke-static {p0, v3, v7}, Lorg/codehaus/jackson/io/NumberInput;->parseInt([CII)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, v1

    return-wide v3
.end method
