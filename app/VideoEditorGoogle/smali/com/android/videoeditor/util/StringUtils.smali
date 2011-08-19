.class public Lcom/android/videoeditor/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static sNumbers:[C

.field private static sNumbersAndLetters:[C

.field private static sRandGen:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/videoeditor/util/StringUtils;->sRandGen:Ljava/util/Random;

    .line 43
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/videoeditor/util/StringUtils;->sNumbersAndLetters:[C

    .line 49
    const-string v0, "0123456789"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/videoeditor/util/StringUtils;->sNumbers:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static getDurationAsString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "time"

    .prologue
    .line 149
    const-wide/32 v0, 0x36ee80

    div-long v0, p1, v0

    .line 150
    .local v0, hours:J
    const-wide/32 v2, 0x36ee80

    rem-long/2addr p1, v2

    .line 151
    const-wide/32 v2, 0xea60

    div-long v2, p1, v2

    .line 152
    .local v2, mins:J
    const-wide/32 v4, 0xea60

    rem-long/2addr p1, v4

    .line 153
    const-wide/16 v4, 0x3e8

    div-long/2addr p1, v4

    .line 155
    .local p1, sec:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 156
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 157
    .end local v0           #hours:J
    const v0, 0x7f090087

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .end local p1           #sec:J
    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 166
    :goto_0
    return-object p0

    .line 158
    .restart local p0
    .restart local p1       #sec:J
    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 159
    const v0, 0x7f090086

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .end local p1           #sec:J
    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 161
    .restart local p0
    .restart local p1       #sec:J
    :cond_1
    const p1, 0x7f090085

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p1           #sec:J
    move-result-object p0

    .end local p0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 163
    .restart local v0       #hours:J
    .restart local p0
    .restart local p1       #sec:J
    :cond_2
    const-wide/16 p1, 0x1

    cmp-long p1, v0, p1

    if-nez p1, :cond_3

    .line 164
    .end local p1           #sec:J
    const p1, 0x7f090084

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .end local v0           #hours:J
    aput-object v0, p1, p2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 166
    .restart local v0       #hours:J
    .restart local p0
    :cond_3
    const p1, 0x7f090083

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .end local v0           #hours:J
    aput-object v0, p1, p2

    const/4 p2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getSimpleTimestampAsString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "time"

    .prologue
    const-wide/32 v8, 0x36ee80

    const-wide/32 v6, 0xea60

    .line 132
    div-long v0, p1, v8

    .line 133
    .local v0, hours:J
    rem-long/2addr p1, v8

    .line 134
    div-long v2, p1, v6

    .line 135
    .local v2, mins:J
    rem-long/2addr p1, v6

    .line 136
    const-wide/16 v6, 0x3e8

    div-long v4, p1, v6

    .line 137
    .local v4, sec:J
    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getTimestampAsString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "time"

    .prologue
    const-wide/32 v10, 0x36ee80

    const-wide/32 v8, 0xea60

    const-wide/16 v6, 0x3e8

    .line 113
    div-long v0, p1, v10

    .line 114
    .local v0, hours:J
    rem-long/2addr p1, v10

    .line 115
    div-long v2, p1, v8

    .line 116
    .local v2, mins:J
    rem-long/2addr p1, v8

    .line 117
    div-long v4, p1, v6

    .line 118
    .local v4, sec:J
    rem-long/2addr p1, v6

    .line 119
    const-wide/16 v6, 0x64

    div-long/2addr p1, v6

    .line 120
    const-string v6, "%02d:%02d:%02d.%01d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static randomString(I)Ljava/lang/String;
    .locals 6
    .parameter "length"

    .prologue
    const/4 v5, 0x1

    .line 70
    if-ge p0, v5, :cond_0

    .line 71
    const/4 v2, 0x0

    .line 79
    :goto_0
    return-object v2

    .line 74
    :cond_0
    new-array v1, p0, [C

    .line 75
    .local v1, randBuffer:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 76
    sget-object v2, Lcom/android/videoeditor/util/StringUtils;->sNumbersAndLetters:[C

    sget-object v3, Lcom/android/videoeditor/util/StringUtils;->sRandGen:Ljava/util/Random;

    sget-object v4, Lcom/android/videoeditor/util/StringUtils;->sNumbersAndLetters:[C

    array-length v4, v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static randomStringOfNumbers(I)Ljava/lang/String;
    .locals 6
    .parameter "length"

    .prologue
    const/4 v5, 0x1

    .line 93
    if-ge p0, v5, :cond_0

    .line 94
    const/4 v2, 0x0

    .line 101
    :goto_0
    return-object v2

    .line 97
    :cond_0
    new-array v1, p0, [C

    .line 98
    .local v1, randBuffer:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 99
    sget-object v2, Lcom/android/videoeditor/util/StringUtils;->sNumbers:[C

    sget-object v3, Lcom/android/videoeditor/util/StringUtils;->sRandGen:Ljava/util/Random;

    sget-object v4, Lcom/android/videoeditor/util/StringUtils;->sNumbers:[C

    array-length v4, v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static trimText(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;
    .locals 5
    .parameter "text"
    .parameter "p"
    .parameter "maxSize"

    .prologue
    .line 180
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v1, v2

    .line 181
    .local v1, textSize:I
    if-le v1, p2, :cond_0

    .line 182
    const/4 v2, 0x1

    const/16 v3, 0xc

    sub-int v3, p2, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, p0, v2, v3, v4}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    .line 183
    .local v0, chars:I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 187
    .end local v0           #chars:I
    :cond_0
    return-object p0
.end method
