.class public Landroid/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "TimeUtils"

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 144
    const/16 v0, 0x18

    new-array v0, v0, [C

    sput-object v0, Landroid/util/TimeUtils;->sFormatStr:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .registers 5
    .parameter "amt"
    .parameter "suffix"
    .parameter "always"
    .parameter "zeropad"

    .prologue
    .line 147
    const/16 v0, 0x63

    if-gt p0, v0, :cond_9

    if-eqz p2, :cond_c

    const/4 v0, 0x3

    if-lt p3, v0, :cond_c

    .line 148
    :cond_9
    add-int/lit8 v0, p1, 0x3

    .line 156
    :goto_b
    return v0

    .line 150
    :cond_c
    const/16 v0, 0x9

    if-gt p0, v0, :cond_15

    if-eqz p2, :cond_18

    const/4 v0, 0x2

    if-lt p3, v0, :cond_18

    .line 151
    :cond_15
    add-int/lit8 v0, p1, 0x2

    goto :goto_b

    .line 153
    :cond_18
    if-nez p2, :cond_1c

    if-lez p0, :cond_1f

    .line 154
    :cond_1c
    add-int/lit8 v0, p1, 0x1

    goto :goto_b

    .line 156
    :cond_1f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .registers 8
    .parameter "time"
    .parameter "now"
    .parameter "pw"

    .prologue
    .line 277
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_c

    .line 278
    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    :goto_b
    return-void

    .line 281
    :cond_c
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    goto :goto_b
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .registers 4
    .parameter "duration"
    .parameter "pw"

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 273
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .registers 9
    .parameter "duration"
    .parameter "pw"
    .parameter "fieldLen"

    .prologue
    .line 264
    sget-object v1, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v1

    .line 265
    :try_start_3
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .line 266
    .local v0, len:I
    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    monitor-exit v1

    .line 268
    return-void

    .line 267
    .end local v0           #len:I
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v2
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .registers 7
    .parameter "duration"
    .parameter "builder"

    .prologue
    .line 256
    sget-object v1, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    const/4 v2, 0x0

    :try_start_4
    invoke-static {p0, p1, v2}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .line 258
    .local v0, len:I
    sget-object v2, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 259
    monitor-exit v1

    .line 260
    return-void

    .line 259
    .end local v0           #len:I
    :catchall_10
    move-exception v2

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v2
.end method

.method private static formatDurationLocked(JI)I
    .registers 21
    .parameter "duration"
    .parameter "fieldLen"

    .prologue
    .line 184
    sget-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    array-length v4, v4

    move v0, v4

    move/from16 v1, p2

    if-ge v0, v1, :cond_f

    .line 185
    move/from16 v0, p2

    new-array v0, v0, [C

    move-object v4, v0

    sput-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 188
    :cond_f
    sget-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 190
    .local v4, formatStr:[C
    const-wide/16 v5, 0x0

    cmp-long v5, p0, v5

    if-nez v5, :cond_32

    .line 191
    const/4 v7, 0x0

    .line 192
    .local v7, pos:I
    add-int/lit8 p2, p2, -0x1

    move/from16 p0, v7

    .line 193
    .end local v7           #pos:I
    .local p0, pos:I
    :goto_1c
    move/from16 v0, p0

    move/from16 v1, p2

    if-ge v0, v1, :cond_2b

    .line 194
    add-int/lit8 v7, p0, 0x1

    .end local p0           #pos:I
    .restart local v7       #pos:I
    const/16 p1, 0x20

    aput-char p1, v4, p0

    move/from16 p0, v7

    .end local v7           #pos:I
    .restart local p0       #pos:I
    goto :goto_1c

    .line 196
    :cond_2b
    const/16 p1, 0x30

    aput-char p1, v4, p0

    .line 197
    add-int/lit8 p0, p0, 0x1

    .line 251
    .end local p0           #pos:I
    :goto_31
    return p0

    .line 201
    .local p0, duration:J
    :cond_32
    const-wide/16 v5, 0x0

    cmp-long v5, p0, v5

    if-lez v5, :cond_ca

    .line 202
    const/16 v5, 0x2b

    .local v5, prefix:C
    move v8, v5

    .line 208
    .end local v5           #prefix:C
    .local v8, prefix:C
    :goto_3b
    const-wide/16 v5, 0x3e8

    rem-long v5, p0, v5

    long-to-int v14, v5

    .line 209
    .local v14, millis:I
    const-wide/16 v5, 0x3e8

    div-long p0, p0, v5

    .end local p0           #duration:J
    move-wide/from16 v0, p0

    long-to-double v0, v0

    move-wide/from16 p0, v0

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    move-wide/from16 v0, p0

    double-to-int v0, v0

    move v6, v0

    .line 210
    .local v6, seconds:I
    const/4 v5, 0x0

    .local v5, days:I
    const/16 p0, 0x0

    .local p0, hours:I
    const/16 p1, 0x0

    .line 212
    .local p1, minutes:I
    const v7, 0x15180

    if-le v6, v7, :cond_65

    .line 213
    const v5, 0x15180

    div-int v5, v6, v5

    .line 214
    const v7, 0x15180

    mul-int/2addr v7, v5

    sub-int/2addr v6, v7

    .line 216
    :cond_65
    const/16 v7, 0xe10

    if-le v6, v7, :cond_74

    .line 217
    move v0, v6

    div-int/lit16 v0, v0, 0xe10

    move/from16 p0, v0

    .line 218
    move/from16 v0, p0

    mul-int/lit16 v0, v0, 0xe10

    move v7, v0

    sub-int/2addr v6, v7

    .line 220
    :cond_74
    const/16 v7, 0x3c

    if-le v6, v7, :cond_175

    .line 221
    div-int/lit8 p1, v6, 0x3c

    .line 222
    mul-int/lit8 v7, p1, 0x3c

    sub-int/2addr v6, v7

    move v15, v6

    .line 225
    .end local v6           #seconds:I
    .local v15, seconds:I
    :goto_7e
    const/4 v7, 0x0

    .line 227
    .restart local v7       #pos:I
    if-eqz p2, :cond_dc

    .line 228
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v5, v6, v9, v10}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v6

    .line 229
    .local v6, myLen:I
    const/4 v9, 0x1

    if-lez v6, :cond_d4

    const/4 v10, 0x1

    :goto_8c
    const/4 v11, 0x2

    move/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v9

    add-int/2addr v6, v9

    .line 230
    const/4 v9, 0x1

    if-lez v6, :cond_d6

    const/4 v10, 0x1

    :goto_9b
    const/4 v11, 0x2

    move/from16 v0, p1

    move v1, v9

    move v2, v10

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v9

    add-int/2addr v6, v9

    .line 231
    const/4 v9, 0x1

    if-lez v6, :cond_d8

    const/4 v10, 0x1

    :goto_aa
    const/4 v11, 0x2

    invoke-static {v15, v9, v10, v11}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v9

    add-int/2addr v6, v9

    .line 232
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-lez v6, :cond_da

    const/4 v11, 0x3

    :goto_b5
    invoke-static {v14, v9, v10, v11}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v6, v9

    .line 233
    :goto_bc
    move v0, v6

    move/from16 v1, p2

    if-ge v0, v1, :cond_dc

    .line 234
    const/16 v9, 0x20

    aput-char v9, v4, v7

    .line 235
    add-int/lit8 v7, v7, 0x1

    .line 236
    add-int/lit8 v6, v6, 0x1

    goto :goto_bc

    .line 204
    .end local v5           #days:I
    .end local v6           #myLen:I
    .end local v7           #pos:I
    .end local v8           #prefix:C
    .end local v14           #millis:I
    .end local v15           #seconds:I
    .end local p1           #minutes:I
    .local p0, duration:J
    :cond_ca
    const/16 v5, 0x2d

    .line 205
    .local v5, prefix:C
    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    move v8, v5

    .end local v5           #prefix:C
    .restart local v8       #prefix:C
    goto/16 :goto_3b

    .line 229
    .local v5, days:I
    .restart local v6       #myLen:I
    .restart local v7       #pos:I
    .restart local v14       #millis:I
    .restart local v15       #seconds:I
    .local p0, hours:I
    .restart local p1       #minutes:I
    :cond_d4
    const/4 v10, 0x0

    goto :goto_8c

    .line 230
    :cond_d6
    const/4 v10, 0x0

    goto :goto_9b

    .line 231
    :cond_d8
    const/4 v10, 0x0

    goto :goto_aa

    .line 232
    :cond_da
    const/4 v11, 0x0

    goto :goto_b5

    .line 240
    .end local v6           #myLen:I
    :cond_dc
    aput-char v8, v4, v7

    .line 241
    add-int/lit8 v7, v7, 0x1

    .line 243
    move/from16 v16, v7

    .line 244
    .local v16, start:I
    if-eqz p2, :cond_152

    const/4 v6, 0x1

    move/from16 v17, v6

    .line 245
    .local v17, zeropad:Z
    :goto_e7
    const/16 v6, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printField([CICIZI)I

    .end local v8           #prefix:C
    move-result v7

    .line 246
    const/16 v10, 0x68

    move v0, v7

    move/from16 v1, v16

    if-eq v0, v1, :cond_156

    const/4 v5, 0x1

    move v12, v5

    .end local v5           #days:I
    :goto_f8
    if-eqz v17, :cond_159

    const/4 v5, 0x2

    move v13, v5

    :goto_fc
    move-object v8, v4

    move/from16 v9, p0

    move v11, v7

    invoke-static/range {v8 .. v13}, Landroid/util/TimeUtils;->printField([CICIZI)I

    move-result v7

    .line 247
    const/16 v10, 0x6d

    move v0, v7

    move/from16 v1, v16

    if-eq v0, v1, :cond_15c

    const/16 p0, 0x1

    move/from16 v12, p0

    .end local p0           #hours:I
    :goto_10f
    if-eqz v17, :cond_161

    const/16 p0, 0x2

    move/from16 v13, p0

    :goto_115
    move-object v8, v4

    move/from16 v9, p1

    move v11, v7

    invoke-static/range {v8 .. v13}, Landroid/util/TimeUtils;->printField([CICIZI)I

    move-result v7

    .line 248
    const/16 v10, 0x73

    move v0, v7

    move/from16 v1, v16

    if-eq v0, v1, :cond_166

    const/16 p0, 0x1

    move/from16 v12, p0

    :goto_128
    if-eqz v17, :cond_16b

    const/16 p0, 0x2

    move/from16 v13, p0

    :goto_12e
    move-object v8, v4

    move v9, v15

    move v11, v7

    invoke-static/range {v8 .. v13}, Landroid/util/TimeUtils;->printField([CICIZI)I

    move-result v7

    .line 249
    const/16 v10, 0x6d

    const/4 v12, 0x1

    if-eqz v17, :cond_170

    move v0, v7

    move/from16 v1, v16

    if-eq v0, v1, :cond_170

    const/16 p0, 0x3

    move/from16 v13, p0

    :goto_143
    move-object v8, v4

    move v9, v14

    move v11, v7

    invoke-static/range {v8 .. v13}, Landroid/util/TimeUtils;->printField([CICIZI)I

    move-result v7

    .line 250
    const/16 p0, 0x73

    aput-char p0, v4, v7

    .line 251
    add-int/lit8 p0, v7, 0x1

    goto/16 :goto_31

    .line 244
    .end local v17           #zeropad:Z
    .restart local v5       #days:I
    .restart local v8       #prefix:C
    .restart local p0       #hours:I
    :cond_152
    const/4 v6, 0x0

    move/from16 v17, v6

    goto :goto_e7

    .line 246
    .end local v8           #prefix:C
    .restart local v17       #zeropad:Z
    :cond_156
    const/4 v5, 0x0

    move v12, v5

    goto :goto_f8

    .end local v5           #days:I
    :cond_159
    const/4 v5, 0x0

    move v13, v5

    goto :goto_fc

    .line 247
    :cond_15c
    const/16 p0, 0x0

    move/from16 v12, p0

    goto :goto_10f

    .end local p0           #hours:I
    :cond_161
    const/16 p0, 0x0

    move/from16 v13, p0

    goto :goto_115

    .line 248
    :cond_166
    const/16 p0, 0x0

    move/from16 v12, p0

    goto :goto_128

    :cond_16b
    const/16 p0, 0x0

    move/from16 v13, p0

    goto :goto_12e

    .line 249
    :cond_170
    const/16 p0, 0x0

    move/from16 v13, p0

    goto :goto_143

    .end local v7           #pos:I
    .end local v15           #seconds:I
    .end local v16           #start:I
    .end local v17           #zeropad:Z
    .restart local v5       #days:I
    .local v6, seconds:I
    .restart local v8       #prefix:C
    .restart local p0       #hours:I
    :cond_175
    move v15, v6

    .end local v6           #seconds:I
    .restart local v15       #seconds:I
    goto/16 :goto_7e
.end method

.method public static getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .registers 14
    .parameter "offset"
    .parameter "dst"
    .parameter "when"
    .parameter "country"

    .prologue
    .line 46
    if-nez p4, :cond_4

    .line 47
    const/4 p0, 0x0

    .line 112
    .end local p0
    .end local p1
    .end local p2
    :goto_3
    return-object p0

    .line 50
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_4
    const/4 v0, 0x0

    .line 52
    .local v0, best:Ljava/util/TimeZone;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 53
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x10f000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 54
    .local v7, parser:Landroid/content/res/XmlResourceParser;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 56
    .local v6, d:Ljava/util/Date;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 57
    .local v2, current:Ljava/util/TimeZone;
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, currentName:Ljava/lang/String;
    invoke-virtual {v2, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 59
    .local v5, currentOffset:I
    invoke-virtual {v2, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    .line 62
    .local v3, currentDst:Z
    :try_start_25
    const-string/jumbo v1, "timezones"

    .end local v1           #r:Landroid/content/res/Resources;
    invoke-static {v7, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 65
    :cond_2b
    :goto_2b
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 67
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, element:Ljava/lang/String;
    if-eqz v1, :cond_3d

    const-string/jumbo v8, "timezone"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_9b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_3a} :catch_7d
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_3a} :catch_8c

    move-result v1

    .end local v1           #element:Ljava/lang/String;
    if-nez v1, :cond_42

    .line 109
    :cond_3d
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    move-object p0, v0

    .line 110
    .end local v0           #best:Ljava/util/TimeZone;
    .local p0, best:Ljava/util/TimeZone;
    goto :goto_3

    .line 72
    .restart local v0       #best:Ljava/util/TimeZone;
    .local p0, offset:I
    :cond_42
    const/4 v1, 0x0

    :try_start_43
    const-string v8, "code"

    invoke-interface {v7, v1, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, code:Ljava/lang/String;
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .end local v1           #code:Ljava/lang/String;
    if-eqz v1, :cond_2b

    .line 75
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v8, 0x4

    if-ne v1, v8, :cond_2b

    .line 76
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, maybe:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5d
    .catchall {:try_start_43 .. :try_end_5d} :catchall_9b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_5d} :catch_7d
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_5d} :catch_8c

    move-result v8

    if-eqz v8, :cond_69

    .line 83
    if-ne v5, p0, :cond_69

    if-ne v3, p1, :cond_69

    .line 109
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    move-object p0, v2

    goto :goto_3

    .line 93
    :cond_69
    if-nez v0, :cond_2b

    .line 94
    :try_start_6b
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 96
    .local v1, tz:Ljava/util/TimeZone;
    invoke-virtual {v1, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    if-ne v8, p0, :cond_2b

    invoke-virtual {v1, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z
    :try_end_78
    .catchall {:try_start_6b .. :try_end_78} :catchall_9b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6b .. :try_end_78} :catch_7d
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_78} :catch_8c

    move-result v8

    if-ne v8, p1, :cond_2b

    .line 98
    move-object v0, v1

    goto :goto_2b

    .line 104
    .end local v1           #tz:Ljava/util/TimeZone;
    :catch_7d
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 105
    .end local v0           #best:Ljava/util/TimeZone;
    .local p0, best:Ljava/util/TimeZone;
    .local p1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_80
    const-string p2, "TimeUtils"

    .end local p2
    const-string p3, "Got exception while getting preferred time zone."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_a2

    .line 109
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_3

    .line 106
    .restart local v0       #best:Ljava/util/TimeZone;
    .local p0, offset:I
    .local p1, dst:Z
    .restart local p2
    :catch_8c
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 107
    .end local v0           #best:Ljava/util/TimeZone;
    .local p0, best:Ljava/util/TimeZone;
    .local p1, e:Ljava/io/IOException;
    :try_start_8f
    const-string p2, "TimeUtils"

    .end local p2
    const-string p3, "Got exception while getting preferred time zone."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_a2

    .line 109
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_3

    .restart local v0       #best:Ljava/util/TimeZone;
    .local p0, offset:I
    .local p1, dst:Z
    .restart local p2
    :catchall_9b
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #best:Ljava/util/TimeZone;
    .end local p1           #dst:Z
    .end local p2
    .local p0, best:Ljava/util/TimeZone;
    :goto_9e
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    throw p1

    :catchall_a2
    move-exception p1

    goto :goto_9e
.end method

.method public static getTimeZoneDatabaseVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 133
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static printField([CICIZI)I
    .registers 9
    .parameter "formatStr"
    .parameter "amt"
    .parameter "suffix"
    .parameter "pos"
    .parameter "always"
    .parameter "zeropad"

    .prologue
    .line 161
    if-nez p4, :cond_4

    if-lez p1, :cond_3c

    .line 162
    :cond_4
    move v1, p3

    .line 163
    .local v1, startPos:I
    if-eqz p4, :cond_a

    const/4 v2, 0x3

    if-ge p5, v2, :cond_e

    :cond_a
    const/16 v2, 0x63

    if-le p1, v2, :cond_1a

    .line 164
    :cond_e
    div-int/lit8 v0, p1, 0x64

    .line 165
    .local v0, dig:I
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 166
    add-int/lit8 p3, p3, 0x1

    .line 167
    mul-int/lit8 v2, v0, 0x64

    sub-int/2addr p1, v2

    .line 169
    .end local v0           #dig:I
    :cond_1a
    if-eqz p4, :cond_1f

    const/4 v2, 0x2

    if-ge p5, v2, :cond_25

    :cond_1f
    const/16 v2, 0x9

    if-gt p1, v2, :cond_25

    if-eq v1, p3, :cond_31

    .line 170
    :cond_25
    div-int/lit8 v0, p1, 0xa

    .line 171
    .restart local v0       #dig:I
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 172
    add-int/lit8 p3, p3, 0x1

    .line 173
    mul-int/lit8 v2, v0, 0xa

    sub-int/2addr p1, v2

    .line 175
    .end local v0           #dig:I
    :cond_31
    add-int/lit8 v2, p1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 176
    add-int/lit8 p3, p3, 0x1

    .line 177
    aput-char p2, p0, p3

    .line 178
    add-int/lit8 p3, p3, 0x1

    .line 180
    .end local v1           #startPos:I
    :cond_3c
    return p3
.end method
