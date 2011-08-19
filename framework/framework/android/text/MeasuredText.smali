.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field private static cached:[Landroid/text/MeasuredText;

.field private static final localLOGV:Z


# instance fields
.field mChars:[C

.field mDir:I

.field mEasy:Z

.field mLen:I

.field mLevels:[B

.field private mPos:I

.field mText:Ljava/lang/CharSequence;

.field mTextStart:I

.field mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/MeasuredText;

    sput-object v0, Landroid/text/MeasuredText;->cached:[Landroid/text/MeasuredText;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 45
    return-void
.end method

.method static obtain()Landroid/text/MeasuredText;
    .registers 5

    .prologue
    .line 52
    sget-object v2, Landroid/text/MeasuredText;->cached:[Landroid/text/MeasuredText;

    monitor-enter v2

    .line 53
    :try_start_3
    sget-object v3, Landroid/text/MeasuredText;->cached:[Landroid/text/MeasuredText;

    array-length v0, v3

    .local v0, i:I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1b

    .line 54
    sget-object v3, Landroid/text/MeasuredText;->cached:[Landroid/text/MeasuredText;

    aget-object v3, v3, v0

    if-eqz v3, :cond_6

    .line 55
    sget-object v3, Landroid/text/MeasuredText;->cached:[Landroid/text/MeasuredText;

    aget-object v1, v3, v0

    .line 56
    .local v1, mt:Landroid/text/MeasuredText;
    sget-object v3, Landroid/text/MeasuredText;->cached:[Landroid/text/MeasuredText;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 57
    monitor-exit v2

    .line 65
    :goto_1a
    return-object v1

    .line 60
    .end local v1           #mt:Landroid/text/MeasuredText;
    :cond_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_22

    .line 61
    new-instance v1, Landroid/text/MeasuredText;

    invoke-direct {v1}, Landroid/text/MeasuredText;-><init>()V

    .line 65
    .restart local v1       #mt:Landroid/text/MeasuredText;
    goto :goto_1a

    .line 60
    .end local v0           #i:I
    .end local v1           #mt:Landroid/text/MeasuredText;
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v3
.end method

.method static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .registers 5
    .parameter "mt"

    .prologue
    const/4 v3, 0x0

    .line 70
    iput-object v3, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 71
    iget v1, p0, Landroid/text/MeasuredText;->mLen:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_1d

    .line 72
    sget-object v1, Landroid/text/MeasuredText;->cached:[Landroid/text/MeasuredText;

    monitor-enter v1

    .line 73
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    :try_start_d
    sget-object v2, Landroid/text/MeasuredText;->cached:[Landroid/text/MeasuredText;

    array-length v2, v2

    if-ge v0, v2, :cond_1c

    .line 74
    sget-object v2, Landroid/text/MeasuredText;->cached:[Landroid/text/MeasuredText;

    aget-object v2, v2, v0

    if-nez v2, :cond_1e

    .line 75
    sget-object v2, Landroid/text/MeasuredText;->cached:[Landroid/text/MeasuredText;

    aput-object p0, v2, v0

    .line 79
    :cond_1c
    monitor-exit v1

    .line 81
    .end local v0           #i:I
    :cond_1d
    return-object v3

    .line 73
    .restart local v0       #i:I
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 79
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_21

    throw v2
.end method


# virtual methods
.method addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .registers 26
    .parameter "paint"
    .parameter "len"
    .parameter "fm"

    .prologue
    .line 131
    if-eqz p3, :cond_9

    .line 132
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 135
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/MeasuredText;->mPos:I

    move v4, v0

    .line 136
    .local v4, p:I
    add-int v2, v4, p2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/MeasuredText;->mPos:I

    .line 138
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move v2, v0

    if-eqz v2, :cond_40

    .line 139
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3d

    const/4 v2, 0x0

    move v8, v2

    .line 141
    .local v8, flags:I
    :goto_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object v9, v0

    move-object/from16 v2, p1

    move/from16 v5, p2

    move v6, v4

    move/from16 v7, p2

    move v10, v4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v2

    .line 158
    :goto_3c
    return v2

    .line 139
    .end local v8           #flags:I
    :cond_3d
    const/4 v2, 0x1

    move v8, v2

    goto :goto_26

    .line 144
    :cond_40
    const/16 v21, 0x0

    .line 145
    .local v21, totalAdvance:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object v2, v0

    aget-byte v20, v2, v4

    .line 146
    .local v20, level:I
    move v11, v4

    .local v11, q:I
    add-int/lit8 v19, v4, 0x1

    .local v19, i:I
    add-int v18, v4, p2

    .line 147
    .local v18, e:I
    :goto_4e
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object v2, v0

    aget-byte v2, v2, v19

    move v0, v2

    move/from16 v1, v20

    if-eq v0, v1, :cond_96

    .line 148
    :cond_60
    and-int/lit8 v2, v20, 0x1

    if-nez v2, :cond_8a

    const/4 v2, 0x0

    move v8, v2

    .line 149
    .restart local v8       #flags:I
    :goto_66
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object v10, v0

    sub-int v12, v19, v11

    sub-int v14, v19, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move v13, v11

    move v15, v8

    move/from16 v17, v11

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v2

    add-float v21, v21, v2

    .line 151
    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_8d

    move/from16 v2, v21

    .line 158
    goto :goto_3c

    .line 148
    .end local v8           #flags:I
    :cond_8a
    const/4 v2, 0x1

    move v8, v2

    goto :goto_66

    .line 154
    .restart local v8       #flags:I
    :cond_8d
    move/from16 v11, v19

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object v2, v0

    aget-byte v20, v2, v19

    .line 146
    .end local v8           #flags:I
    :cond_96
    add-int/lit8 v19, v19, 0x1

    goto :goto_4e
.end method

.method addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .registers 20
    .parameter "paint"
    .parameter "spans"
    .parameter "len"
    .parameter "fm"

    .prologue
    .line 164
    iget-object v5, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 165
    .local v5, workPaint:Landroid/text/TextPaint;
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 167
    const/4 v6, 0x0

    iput v6, v5, Landroid/text/TextPaint;->baselineShift:I

    .line 169
    const/4 v4, 0x0

    .line 170
    .local v4, replacement:Landroid/text/style/ReplacementSpan;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_d
    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    if-ge v11, v6, :cond_24

    .line 171
    aget-object v12, p2, v11

    .line 172
    .local v12, span:Landroid/text/style/MetricAffectingSpan;
    instance-of v6, v12, Landroid/text/style/ReplacementSpan;

    if-eqz v6, :cond_20

    .line 173
    move-object v0, v12

    check-cast v0, Landroid/text/style/ReplacementSpan;

    move-object v4, v0

    .line 170
    :goto_1d
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 175
    :cond_20
    invoke-virtual {v12, v5}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_1d

    .line 180
    .end local v12           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_24
    if-nez v4, :cond_51

    .line 181
    move-object v0, p0

    move-object v1, v5

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v14

    .line 200
    .local v14, wid:F
    :goto_30
    if-eqz p4, :cond_50

    .line 201
    iget v6, v5, Landroid/text/TextPaint;->baselineShift:I

    if-gez v6, :cond_83

    .line 202
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v6, v0

    iget v7, v5, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 203
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v6, v0

    iget v7, v5, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 210
    :cond_50
    :goto_50
    return v14

    .line 184
    .end local v14           #wid:F
    :cond_51
    iget-object v6, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iget v7, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v8, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v9, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v8, v9

    add-int v8, v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v6

    int-to-float v14, v6

    .line 186
    .restart local v14       #wid:F
    iget-object v13, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 187
    .local v13, w:[F
    iget v6, p0, Landroid/text/MeasuredText;->mPos:I

    aput v14, v13, v6

    .line 188
    iget v6, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/lit8 v11, v6, 0x1

    iget v6, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v10, v6, p3

    .local v10, e:I
    :goto_74
    if-ge v11, v10, :cond_7c

    .line 189
    const/4 v6, 0x0

    aput v6, v13, v11

    .line 188
    add-int/lit8 v11, v11, 0x1

    goto :goto_74

    .line 196
    :cond_7c
    iget v6, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v6, v6, p3

    iput v6, p0, Landroid/text/MeasuredText;->mPos:I

    goto :goto_30

    .line 205
    .end local v10           #e:I
    .end local v13           #w:[F
    :cond_83
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v6, v0

    iget v7, v5, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 206
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v6, v0

    iget v7, v5, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_50
.end method

.method breakText(IIZF)I
    .registers 9
    .parameter "start"
    .parameter "limit"
    .parameter "forwards"
    .parameter "width"

    .prologue
    const/4 v3, 0x0

    .line 214
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 215
    .local v1, w:[F
    if-eqz p3, :cond_15

    .line 216
    move v0, p1

    .local v0, i:I
    :goto_6
    if-ge v0, p2, :cond_26

    .line 217
    aget v2, v1, v0

    sub-float/2addr p4, v2

    cmpg-float v2, p4, v3

    if-gez v2, :cond_12

    .line 218
    sub-int v2, v0, p1

    .line 229
    :goto_11
    return v2

    .line 216
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 222
    .end local v0           #i:I
    :cond_15
    move v0, p2

    .restart local v0       #i:I
    :cond_16
    add-int/lit8 v0, v0, -0x1

    if-lt v0, p1, :cond_26

    .line 223
    aget v2, v1, v0

    sub-float/2addr p4, v2

    cmpg-float v2, p4, v3

    if-gez v2, :cond_16

    .line 224
    sub-int v2, p2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    goto :goto_11

    .line 229
    :cond_26
    sub-int v2, p2, p1

    goto :goto_11
.end method

.method measure(II)F
    .registers 7
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 233
    const/4 v2, 0x0

    .line 234
    .local v2, width:F
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 235
    .local v1, w:[F
    move v0, p1

    .local v0, i:I
    :goto_4
    if-ge v0, p2, :cond_c

    .line 236
    aget v3, v1, v0

    add-float/2addr v2, v3

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 238
    :cond_c
    return v2
.end method

.method setPara(Ljava/lang/CharSequence;III)V
    .registers 21
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "bidiRequest"

    .prologue
    const/4 v15, 0x1

    const/4 v14, 0x0

    .line 89
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 90
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/MeasuredText;->mTextStart:I

    .line 92
    sub-int v8, p3, p2

    .line 93
    .local v8, len:I
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/MeasuredText;->mLen:I

    .line 94
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/MeasuredText;->mPos:I

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object v12, v0

    if-eqz v12, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object v12, v0

    array-length v12, v12

    if-ge v12, v8, :cond_34

    .line 97
    :cond_29
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->idealFloatArraySize(I)I

    move-result v12

    new-array v12, v12, [F

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mWidths:[F

    .line 99
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object v12, v0

    if-eqz v12, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object v12, v0

    array-length v12, v12

    if-ge v12, v8, :cond_4e

    .line 100
    :cond_43
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v12

    new-array v12, v12, [C

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mChars:[C

    .line 102
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object v12, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v12

    move v4, v14

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 104
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v12, v0

    if-eqz v12, :cond_9f

    .line 105
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v9, v0

    .line 106
    .local v9, spanned:Landroid/text/Spanned;
    const-class v12, Landroid/text/style/ReplacementSpan;

    move-object v0, v9

    move/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v12

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/ReplacementSpan;

    .line 109
    .local v10, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_79
    array-length v12, v10

    if-ge v6, v12, :cond_9f

    .line 110
    aget-object v12, v10, v6

    invoke-interface {v9, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    sub-int v11, v12, p2

    .line 111
    .local v11, startInPara:I
    aget-object v12, v10, v6

    invoke-interface {v9, v12}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    sub-int v5, v12, p2

    .line 112
    .local v5, endInPara:I
    move v7, v11

    .local v7, j:I
    :goto_8d
    if-ge v7, v5, :cond_9c

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object v12, v0

    const v13, 0xfffc

    aput-char v13, v12, v7

    .line 112
    add-int/lit8 v7, v7, 0x1

    goto :goto_8d

    .line 109
    :cond_9c
    add-int/lit8 v6, v6, 0x1

    goto :goto_79

    .line 118
    .end local v5           #endInPara:I
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v9           #spanned:Landroid/text/Spanned;
    .end local v10           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v11           #startInPara:I
    :cond_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object v12, v0

    invoke-static {v12, v14, v8}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v12

    if-eqz v12, :cond_b5

    .line 119
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/MeasuredText;->mDir:I

    .line 120
    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/MeasuredText;->mEasy:Z

    .line 128
    :goto_b4
    return-void

    .line 122
    :cond_b5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object v12, v0

    if-eqz v12, :cond_c4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object v12, v0

    array-length v12, v12

    if-ge v12, v8, :cond_cf

    .line 123
    :cond_c4
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v12

    new-array v12, v12, [B

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mLevels:[B

    .line 125
    :cond_cf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object v13, v0

    move/from16 v0, p4

    move-object v1, v12

    move-object v2, v13

    move v3, v8

    move v4, v14

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v12

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/MeasuredText;->mDir:I

    .line 126
    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/MeasuredText;->mEasy:Z

    goto :goto_b4
.end method
