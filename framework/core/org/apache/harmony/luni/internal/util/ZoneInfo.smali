.class final Lorg/apache/harmony/luni/internal/util/ZoneInfo;
.super Ljava/util/TimeZone;
.source "ZoneInfo.java"


# static fields
.field private static final LEAP:[I = null

.field private static final MILLISECONDS_PER_400_YEARS:J = 0xb7af85d9c00L

.field private static final MILLISECONDS_PER_DAY:J = 0x5265c00L

.field private static final NORMAL:[I = null

.field private static final UNIX_OFFSET:J = 0x388a6f046000L


# instance fields
.field private final mIsDsts:[B

.field private final mOffsets:[I

.field private mRawOffset:I

.field private final mTransitions:[I

.field private final mTypes:[B

.field private final mUseDst:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xc

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->NORMAL:[I

    .line 37
    new-array v0, v1, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->LEAP:[I

    return-void

    .line 33
    nop

    :array_12
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
    .end array-data

    .line 37
    :array_2e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0x31t 0x1t 0x0t 0x0t
        0x4ft 0x1t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;[I[B[I[B)V
    .registers 19
    .parameter "name"
    .parameter "transitions"
    .parameter "type"
    .parameter "gmtOffsets"
    .parameter "isDsts"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 50
    iput-object p2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    .line 51
    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    .line 52
    move-object/from16 v0, p5

    move-object v1, p0

    iput-object v0, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mIsDsts:[B

    .line 53
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->setID(Ljava/lang/String;)V

    .line 57
    iget-object v9, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    array-length v9, v9

    const/4 v10, 0x1

    sub-int v5, v9, v10

    .local v5, lastStd:I
    :goto_18
    if-ltz v5, :cond_26

    .line 58
    iget-object v9, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mIsDsts:[B

    iget-object v10, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    aget-byte v10, v10, v5

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    if-nez v9, :cond_4a

    .line 62
    :cond_26
    if-gez v5, :cond_29

    .line 63
    const/4 v5, 0x0

    .line 65
    :cond_29
    iget-object v9, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    array-length v9, v9

    if-lt v5, v9, :cond_4d

    .line 66
    const/4 v9, 0x0

    aget v9, p4, v9

    iput v9, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    .line 73
    :goto_33
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mOffsets:[I

    .line 74
    const/4 v4, 0x0

    .local v4, i:I
    :goto_39
    iget-object v9, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mOffsets:[I

    array-length v9, v9

    if-ge v4, v9, :cond_58

    .line 75
    iget-object v9, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mOffsets:[I

    aget v10, v9, v4

    iget v11, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    sub-int/2addr v10, v11

    aput v10, v9, v4

    .line 74
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 57
    .end local v4           #i:I
    :cond_4a
    add-int/lit8 v5, v5, -0x1

    goto :goto_18

    .line 68
    :cond_4d
    iget-object v9, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    aget-byte v9, v9, v5

    and-int/lit16 v9, v9, 0xff

    aget v9, p4, v9

    iput v9, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    goto :goto_33

    .line 86
    .restart local v4       #i:I
    :cond_58
    const/4 v8, 0x0

    .line 87
    .local v8, usesDst:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long v2, v9, v11

    .line 88
    .local v2, currentUnixTime:J
    iget-object v9, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    array-length v9, v9

    if-lez v9, :cond_77

    .line 90
    iget-object v9, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    iget-object v10, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    array-length v10, v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aget v9, v9, v10

    and-int/lit8 v9, v9, -0x1

    int-to-long v6, v9

    .line 91
    .local v6, latestScheduleTime:J
    cmp-long v9, v2, v6

    if-gez v9, :cond_77

    .line 92
    const/4 v8, 0x1

    .line 95
    .end local v6           #latestScheduleTime:J
    :cond_77
    iput-boolean v8, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mUseDst:Z

    .line 97
    iget v9, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    mul-int/lit16 v9, v9, 0x3e8

    iput v9, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    .line 98
    return-void
.end method

.method private static formatTime(ILjava/util/TimeZone;)Ljava/lang/String;
    .registers 9
    .parameter "s"
    .parameter "tz"

    .prologue
    .line 237
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE MMM dd HH:mm:ss yyyy zzz"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 238
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 239
    int-to-long v3, p0

    const-wide/16 v5, 0x3e8

    mul-long v0, v3, v5

    .line 240
    .local v0, ms:J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 194
    instance-of v2, p1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;

    if-nez v2, :cond_7

    move v2, v4

    .line 198
    :goto_6
    return v2

    .line 197
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;

    move-object v1, v0

    .line 198
    .local v1, other:Lorg/apache/harmony/luni/internal/util/ZoneInfo;
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {p0, v1}, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    goto :goto_6

    :cond_21
    move v2, v4

    goto :goto_6
.end method

.method public getOffset(IIIIII)I
    .registers 15
    .parameter "era"
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "dayOfWeek"
    .parameter "millis"

    .prologue
    .line 106
    div-int/lit16 v4, p2, 0x190

    int-to-long v4, v4

    const-wide v6, 0xb7af85d9c00L

    mul-long v0, v4, v6

    .line 107
    .local v0, calc:J
    rem-int/lit16 p2, p2, 0x190

    .line 109
    int-to-long v4, p2

    const-wide v6, 0x757b12c00L

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 110
    add-int/lit8 v4, p2, 0x3

    div-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 112
    if-lez p2, :cond_2b

    .line 113
    const/4 v4, 0x1

    sub-int v4, p2, v4

    div-int/lit8 v4, v4, 0x64

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    sub-long/2addr v0, v4

    .line 116
    :cond_2b
    if-eqz p2, :cond_35

    rem-int/lit8 v4, p2, 0x4

    if-nez v4, :cond_5e

    rem-int/lit8 v4, p2, 0x64

    if-eqz v4, :cond_5e

    :cond_35
    const/4 v4, 0x1

    move v2, v4

    .line 117
    .local v2, isLeap:Z
    :goto_37
    if-eqz v2, :cond_61

    sget-object v4, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->LEAP:[I

    move-object v3, v4

    .line 119
    .local v3, mlen:[I
    :goto_3c
    aget v4, v3, p3

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 120
    const/4 v4, 0x1

    sub-int v4, p4, v4

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 121
    int-to-long v4, p6

    add-long/2addr v0, v4

    .line 123
    iget v4, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 124
    const-wide v4, 0x388a6f046000L

    sub-long/2addr v0, v4

    .line 126
    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->getOffset(J)I

    move-result v4

    return v4

    .line 116
    .end local v2           #isLeap:Z
    .end local v3           #mlen:[I
    :cond_5e
    const/4 v4, 0x0

    move v2, v4

    goto :goto_37

    .line 117
    .restart local v2       #isLeap:Z
    :cond_61
    sget-object v4, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->NORMAL:[I

    move-object v3, v4

    goto :goto_3c
.end method

.method public getOffset(J)I
    .registers 8
    .parameter "when"

    .prologue
    .line 131
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    .line 132
    .local v1, unix:I
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 134
    .local v0, trans:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_19

    .line 135
    iget v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mOffsets:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    .line 141
    :goto_18
    return v2

    .line 137
    :cond_19
    if-gez v0, :cond_20

    .line 138
    xor-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .line 141
    :cond_20
    iget v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mOffsets:[I

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    goto :goto_18
.end method

.method public getRawOffset()I
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .registers 8
    .parameter "timeZone"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    instance-of v2, p1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;

    if-nez v2, :cond_8

    move v2, v4

    .line 185
    :goto_7
    return v2

    .line 178
    :cond_8
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;

    move-object v1, v0

    .line 179
    .local v1, other:Lorg/apache/harmony/luni/internal/util/ZoneInfo;
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mUseDst:Z

    iget-boolean v3, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mUseDst:Z

    if-eq v2, v3, :cond_14

    move v2, v4

    .line 180
    goto :goto_7

    .line 182
    :cond_14
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mUseDst:Z

    if-nez v2, :cond_22

    .line 183
    iget v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    iget v3, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    if-ne v2, v3, :cond_20

    move v2, v5

    goto :goto_7

    :cond_20
    move v2, v4

    goto :goto_7

    .line 185
    :cond_22
    iget v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    iget v3, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    if-ne v2, v3, :cond_52

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mOffsets:[I

    iget-object v3, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mOffsets:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mIsDsts:[B

    iget-object v3, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mIsDsts:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    iget-object v3, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    iget-object v3, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_52

    move v2, v5

    goto :goto_7

    :cond_52
    move v2, v4

    goto :goto_7
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 203
    const/16 v0, 0x1f

    .line 204
    .local v0, prime:I
    const/4 v1, 0x1

    .line 205
    .local v1, result:I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 206
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mOffsets:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v1, v2, v3

    .line 207
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mIsDsts:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 208
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    add-int v1, v2, v3

    .line 209
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v1, v2, v3

    .line 210
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 211
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mUseDst:Z

    if-eqz v3, :cond_48

    const/16 v3, 0x4cf

    :goto_45
    add-int v1, v2, v3

    .line 212
    return v1

    .line 211
    :cond_48
    const/16 v3, 0x4d5

    goto :goto_45
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .registers 10
    .parameter "when"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 156
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 157
    .local v1, unix:I
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 159
    .local v0, trans:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1d

    .line 160
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mIsDsts:[B

    aget-byte v2, v2, v6

    if-eqz v2, :cond_1b

    move v2, v7

    .line 166
    :goto_1a
    return v2

    :cond_1b
    move v2, v6

    .line 160
    goto :goto_1a

    .line 162
    :cond_1d
    if-gez v0, :cond_23

    .line 163
    xor-int/lit8 v2, v0, -0x1

    sub-int v0, v2, v7

    .line 166
    :cond_23
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mIsDsts:[B

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    if-eqz v2, :cond_31

    move v2, v7

    goto :goto_1a

    :cond_31
    move v2, v6

    goto :goto_1a
.end method

.method public setRawOffset(I)V
    .registers 2
    .parameter "off"

    .prologue
    .line 151
    iput p1, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    .line 152
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    .prologue
    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v5, sb:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mRawOffset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mUseDst="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mUseDst:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 224
    .local v0, f:Ljava/util/Formatter;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_54
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    array-length v8, v8

    if-ge v2, v8, :cond_bb

    .line 225
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    aget-byte v8, v8, v2

    and-int/lit16 v6, v8, 0xff

    .line 226
    .local v6, type:I
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    aget v8, v8, v2

    const-string v9, "UTC"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->formatTime(ILjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v7

    .line 227
    .local v7, utcTime:Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    aget v8, v8, v2

    invoke-static {v8, p0}, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->formatTime(ILjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, localTime:Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mOffsets:[I

    aget v4, v8, v6

    .line 229
    .local v4, offset:I
    iget v8, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    div-int/lit16 v8, v8, 0x3e8

    add-int v1, v8, v4

    .line 230
    .local v1, gmtOffset:I
    const-string v8, "%4d : time=%10d %s = %s isDst=%d offset=%5d gmtOffset=%d\n"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    aget v11, v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v7, v9, v10

    const/4 v10, 0x3

    aput-object v3, v9, v10

    const/4 v10, 0x4

    iget-object v11, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mIsDsts:[B

    aget-byte v11, v11, v6

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 233
    .end local v1           #gmtOffset:I
    .end local v3           #localTime:Ljava/lang/String;
    .end local v4           #offset:I
    .end local v6           #type:I
    .end local v7           #utcTime:Ljava/lang/String;
    :cond_bb
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public useDaylightTime()Z
    .registers 2

    .prologue
    .line 171
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mUseDst:Z

    return v0
.end method
