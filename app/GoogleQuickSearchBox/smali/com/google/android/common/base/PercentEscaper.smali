.class public Lcom/google/android/common/base/PercentEscaper;
.super Lcom/google/android/common/base/UnicodeEscaper;
.source "PercentEscaper.java"


# static fields
.field private static final UPPER_HEX_DIGITS:[C

.field private static final URI_ESCAPED_SPACE:[C


# instance fields
.field private final plusForSpace:Z

.field private final safeOctets:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    sput-object v0, Lcom/google/android/common/base/PercentEscaper;->URI_ESCAPED_SPACE:[C

    .line 78
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter "safeChars"
    .parameter "plusForSpace"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/android/common/base/UnicodeEscaper;-><init>()V

    .line 105
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, ".*[0-9A-Za-z].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "plusForSpace cannot be specified when space is a \'safe\' character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'%\' character cannot be specified as \'safe\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    iput-boolean p2, p0, Lcom/google/android/common/base/PercentEscaper;->plusForSpace:Z

    .line 124
    invoke-static {p1}, Lcom/google/android/common/base/PercentEscaper;->createSafeOctets(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/base/PercentEscaper;->safeOctets:[Z

    .line 125
    return-void
.end method

.method private static createSafeOctets(Ljava/lang/String;)[Z
    .locals 9
    .parameter "safeChars"

    .prologue
    const/4 v8, 0x1

    .line 133
    const/16 v4, 0x7a

    .line 134
    .local v4, maxChar:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 135
    .local v6, safeCharArray:[C
    move-object v0, v6

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 136
    .local v1, c:C
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v1           #c:C
    :cond_0
    add-int/lit8 v7, v4, 0x1

    new-array v5, v7, [Z

    .line 139
    .local v5, octets:[Z
    const/16 v1, 0x30

    .local v1, c:I
    :goto_1
    const/16 v7, 0x39

    if-gt v1, v7, :cond_1

    .line 140
    aput-boolean v8, v5, v1

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_1
    const/16 v1, 0x41

    :goto_2
    const/16 v7, 0x5a

    if-gt v1, v7, :cond_2

    .line 143
    aput-boolean v8, v5, v1

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 145
    :cond_2
    const/16 v1, 0x61

    :goto_3
    const/16 v7, 0x7a

    if-gt v1, v7, :cond_3

    .line 146
    aput-boolean v8, v5, v1

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 148
    :cond_3
    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    .end local v1           #c:I
    :goto_4
    if-ge v2, v3, :cond_4

    aget-char v1, v0, v2

    .line 149
    .local v1, c:C
    aput-boolean v8, v5, v1

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 151
    .end local v1           #c:C
    :cond_4
    return-object v5
.end method
