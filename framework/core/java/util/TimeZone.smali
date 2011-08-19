.class public abstract Ljava/util/TimeZone;
.super Ljava/lang/Object;
.source "TimeZone.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final GMT:Ljava/util/TimeZone; = null

.field public static final LONG:I = 0x1

.field public static final SHORT:I = 0x0

.field private static defaultTimeZone:Ljava/util/TimeZone; = null

.field private static final serialVersionUID:J = 0x31b3e9f57744aca1L


# instance fields
.field private ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 79
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "GMT"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendNumber(Ljava/lang/StringBuilder;II)V
    .registers 7
    .parameter "builder"
    .parameter "count"
    .parameter "value"

    .prologue
    .line 198
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, string:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p2, v2

    if-ge v0, v2, :cond_15

    .line 200
    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 202
    :cond_15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    return-void
.end method

.method private static formatTimeZoneName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .parameter "name"
    .parameter "offset"

    .prologue
    const/4 v6, -0x1

    const/16 v5, 0x3a

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v0, buf:Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, index:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 332
    .local v2, length:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :goto_15
    if-ge v1, v2, :cond_41

    .line 335
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-eq v3, v6, :cond_37

    .line 336
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    add-int/lit8 v3, v1, 0x1

    sub-int v3, v2, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_34

    .line 338
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    :cond_34
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 340
    :cond_37
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_34

    .line 341
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 346
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_55

    .line 347
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_68

    .line 352
    const/4 v3, 0x4

    const/16 v4, 0x30

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 355
    :cond_68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getAvailableIDs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    const-class v0, Ljava/util/TimeZone;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->getAvailableIDs()[Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getAvailableIDs(I)[Ljava/lang/String;
    .registers 3
    .parameter "offsetMillis"

    .prologue
    .line 116
    const-class v0, Ljava/util/TimeZone;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->getAvailableIDs(I)[Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getCustomTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 14
    .parameter "id"

    .prologue
    const/16 v12, 0x2d

    const/4 v8, 0x4

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 299
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 300
    .local v6, sign:C
    const/16 v7, 0x2b

    if-eq v6, v7, :cond_13

    if-eq v6, v12, :cond_13

    move-object v7, v9

    .line 326
    :goto_12
    return-object v7

    .line 303
    :cond_13
    const/4 v7, 0x1

    new-array v4, v7, [I

    .line 304
    .local v4, position:[I
    invoke-static {p0, v8}, Ljava/util/TimeZone;->formatTimeZoneName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, formattedName:Ljava/lang/String;
    invoke-static {v0, v8, v4}, Ljava/util/TimeZone;->parseNumber(Ljava/lang/String;I[I)I

    move-result v1

    .line 306
    .local v1, hour:I
    if-ltz v1, :cond_24

    const/16 v7, 0x17

    if-le v1, v7, :cond_26

    :cond_24
    move-object v7, v9

    .line 307
    goto :goto_12

    .line 309
    :cond_26
    aget v2, v4, v11

    .line 310
    .local v2, index:I
    if-ne v2, v10, :cond_2c

    move-object v7, v9

    .line 311
    goto :goto_12

    .line 313
    :cond_2c
    const v7, 0x36ee80

    mul-int v5, v1, v7

    .line 314
    .local v5, raw:I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_5f

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_5f

    .line 315
    add-int/lit8 v7, v2, 0x1

    invoke-static {v0, v7, v4}, Ljava/util/TimeZone;->parseNumber(Ljava/lang/String;I[I)I

    move-result v3

    .line 316
    .local v3, minute:I
    aget v7, v4, v11

    if-eq v7, v10, :cond_4f

    if-ltz v3, :cond_4f

    const/16 v7, 0x3b

    if-le v3, v7, :cond_51

    :cond_4f
    move-object v7, v9

    .line 317
    goto :goto_12

    .line 319
    :cond_51
    const v7, 0xea60

    mul-int/2addr v7, v3

    add-int/2addr v5, v7

    .line 323
    .end local v3           #minute:I
    :cond_56
    :goto_56
    if-ne v6, v12, :cond_59

    .line 324
    neg-int v5, v5

    .line 326
    :cond_59
    new-instance v7, Ljava/util/SimpleTimeZone;

    invoke-direct {v7, v5, v0}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    goto :goto_12

    .line 320
    :cond_5f
    const/16 v7, 0x1e

    if-ge v1, v7, :cond_66

    const/4 v7, 0x6

    if-le v2, v7, :cond_56

    .line 321
    :cond_66
    div-int/lit8 v7, v1, 0x64

    const v8, 0x36ee80

    mul-int/2addr v7, v8

    rem-int/lit8 v8, v1, 0x64

    const v9, 0xea60

    mul-int/2addr v8, v9

    add-int v5, v7, v8

    goto :goto_56
.end method

.method public static declared-synchronized getDefault()Ljava/util/TimeZone;
    .registers 2

    .prologue
    .line 127
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    if-nez v0, :cond_d

    .line 128
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->getSystemDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    .line 130
    :cond_d
    sget-object v0, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    .line 127
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 6
    .parameter "id"

    .prologue
    .line 282
    const-class v2, Ljava/util/TimeZone;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2d

    move-result-object v0

    .line 283
    .local v0, zone:Ljava/util/TimeZone;
    if-eqz v0, :cond_c

    move-object v1, v0

    .line 292
    .end local v0           #zone:Ljava/util/TimeZone;
    .local v1, zone:Ljava/util/TimeZone;
    :goto_a
    monitor-exit v2

    return-object v1

    .line 286
    .end local v1           #zone:Ljava/util/TimeZone;
    .restart local v0       #zone:Ljava/util/TimeZone;
    :cond_c
    if-nez v0, :cond_21

    :try_start_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_21

    const-string v3, "GMT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 287
    invoke-static {p0}, Ljava/util/TimeZone;->getCustomTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 289
    :cond_21
    if-nez v0, :cond_2b

    .line 290
    sget-object v3, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #zone:Ljava/util/TimeZone;
    check-cast v0, Ljava/util/TimeZone;
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_2d

    .restart local v0       #zone:Ljava/util/TimeZone;
    :cond_2b
    move-object v1, v0

    .line 292
    .end local v0           #zone:Ljava/util/TimeZone;
    .restart local v1       #zone:Ljava/util/TimeZone;
    goto :goto_a

    .line 282
    .end local v1           #zone:Ljava/util/TimeZone;
    :catchall_2d
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private static parseNumber(Ljava/lang/String;I[I)I
    .registers 10
    .parameter "string"
    .parameter "offset"
    .parameter "position"

    .prologue
    const/4 v6, -0x1

    .line 378
    move v1, p1

    .local v1, index:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, length:I
    const/4 v3, 0x0

    .line 380
    .local v3, result:I
    :goto_7
    if-ge v1, v2, :cond_1c

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .local v0, digit:I
    if-eq v0, v6, :cond_1c

    .line 381
    add-int/lit8 v1, v1, 0x1

    .line 382
    mul-int/lit8 v4, v3, 0xa

    add-int v3, v4, v0

    goto :goto_7

    .line 384
    .end local v0           #digit:I
    :cond_1c
    const/4 v4, 0x0

    if-ne v1, p1, :cond_23

    move v5, v6

    :goto_20
    aput v5, p2, v4

    .line 385
    return v3

    :cond_23
    move v5, v1

    .line 384
    goto :goto_20
.end method

.method public static declared-synchronized setDefault(Ljava/util/TimeZone;)V
    .registers 3
    .parameter "timeZone"

    .prologue
    .line 400
    const-class v0, Ljava/util/TimeZone;

    monitor-enter v0

    if-eqz p0, :cond_10

    :try_start_5
    invoke-virtual {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/TimeZone;

    move-object v1, p0

    :goto_c
    sput-object v1, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    .line 401
    monitor-exit v0

    return-void

    .line 400
    .restart local p0
    :cond_10
    const/4 v1, 0x0

    goto :goto_c

    .end local p0
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 93
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 94
    :catch_5
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getDSTSavings()I
    .registers 2

    .prologue
    .line 226
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x36ee80

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final getDisplayName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 138
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .parameter "locale"

    .prologue
    .line 145
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(ZI)Ljava/lang/String;
    .registers 4
    .parameter "daylightTime"
    .parameter "style"

    .prologue
    .line 153
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;
    .registers 12
    .parameter "daylightTime"
    .parameter "style"
    .parameter "locale"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 167
    if-eqz p2, :cond_c

    if-eq p2, v6, :cond_c

    .line 168
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 171
    :cond_c
    if-eqz p1, :cond_21

    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v5

    if-eqz v5, :cond_21

    move v4, v6

    .line 173
    .local v4, useDaylight:Z
    :goto_15
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1, p2, p3}, Llibcore/icu/TimeZones;->getDisplayName(Ljava/lang/String;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, result:Ljava/lang/String;
    if-eqz v2, :cond_24

    move-object v5, v2

    .line 194
    :goto_20
    return-object v5

    .line 171
    .end local v2           #result:Ljava/lang/String;
    .end local v4           #useDaylight:Z
    :cond_21
    const/4 v5, 0x0

    move v4, v5

    goto :goto_15

    .line 178
    .restart local v2       #result:Ljava/lang/String;
    .restart local v4       #useDaylight:Z
    :cond_24
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    .line 179
    .local v1, offset:I
    if-eqz v4, :cond_33

    instance-of v5, p0, Ljava/util/SimpleTimeZone;

    if-eqz v5, :cond_33

    .line 180
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v5

    add-int/2addr v1, v5

    .line 182
    :cond_33
    const v5, 0xea60

    div-int/2addr v1, v5

    .line 183
    const/16 v3, 0x2b

    .line 184
    .local v3, sign:C
    if-gez v1, :cond_3e

    .line 185
    const/16 v3, 0x2d

    .line 186
    neg-int v1, v1

    .line 188
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x9

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 189
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v5, "GMT"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    div-int/lit8 v5, v1, 0x3c

    invoke-direct {p0, v0, v7, v5}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuilder;II)V

    .line 192
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    rem-int/lit8 v5, v1, 0x3c

    invoke-direct {p0, v0, v7, v5}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuilder;II)V

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_20
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getOffset(IIIIII)I
.end method

.method public getOffset(J)I
    .registers 5
    .parameter "time"

    .prologue
    .line 237
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 238
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :goto_14
    return v0

    :cond_15
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    goto :goto_14
.end method

.method public abstract getRawOffset()I
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .registers 5
    .parameter "timeZone"

    .prologue
    const/4 v2, 0x0

    .line 365
    if-nez p1, :cond_5

    move v0, v2

    .line 368
    :goto_4
    return v0

    :cond_5
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_4

    :cond_11
    move v0, v2

    goto :goto_4
.end method

.method public abstract inDaylightTime(Ljava/util/Date;)Z
.end method

.method public setID(Ljava/lang/String;)V
    .registers 3
    .parameter "id"

    .prologue
    .line 407
    if-nez p1, :cond_8

    .line 408
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 410
    :cond_8
    iput-object p1, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public abstract setRawOffset(I)V
.end method

.method public abstract useDaylightTime()Z
.end method
