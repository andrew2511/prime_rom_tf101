.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$TruncateAt;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$StringSplitter;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final ALIGNMENT_SPAN:I = 0x1

.field public static final ANNOTATION:I = 0x12

.field public static final BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final BULLET_SPAN:I = 0x8

.field public static final CAP_MODE_CHARACTERS:I = 0x1000

.field public static final CAP_MODE_SENTENCES:I = 0x4000

.field public static final CAP_MODE_WORDS:I = 0x2000

.field public static final CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field public static final FOREGROUND_COLOR_SPAN:I = 0x2

.field public static final LEADING_MARGIN_SPAN:I = 0xa

.field public static final QUOTE_SPAN:I = 0x9

.field public static final RELATIVE_SIZE_SPAN:I = 0x3

.field public static final SCALE_X_SPAN:I = 0x4

.field public static final STRIKETHROUGH_SPAN:I = 0x5

.field public static final STYLE_SPAN:I = 0x7

.field public static final SUBSCRIPT_SPAN:I = 0xf

.field public static final SUPERSCRIPT_SPAN:I = 0xe

.field public static final TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final TYPEFACE_SPAN:I = 0xd

.field public static final UNDERLINE_SPAN:I = 0x6

.field public static final URL_SPAN:I = 0xb

.field private static sEllipsis:Ljava/lang/String;

.field private static sLock:Ljava/lang/Object;

.field private static sTemp:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 618
    new-instance v0, Landroid/text/TextUtils$1;

    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 966
    sput-object v1, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .line 1540
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    .line 1541
    sput-object v1, Landroid/text/TextUtils;->sTemp:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 28
    .parameter "text"
    .parameter "p"
    .parameter "avail"
    .parameter "oneMore"
    .parameter "more"

    .prologue
    .line 1097
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v5

    .line 1099
    .local v5, mt:Landroid/text/MeasuredText;
    :try_start_4
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 1100
    .local v9, len:I
    const/4 v8, 0x0

    const/4 v10, 0x2

    move-object/from16 v6, p1

    move-object/from16 v7, p0

    invoke-static/range {v5 .. v10}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;III)F
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_105

    move-result v6

    .line 1101
    .local v6, width:F
    cmpg-float v6, v6, p2

    if-gtz v6, :cond_1a

    .line 1160
    .end local v6           #width:F
    invoke-static {v5}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_19
    return-object p0

    .line 1105
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_1a
    :try_start_1a
    iget-object v6, v5, Landroid/text/MeasuredText;->mChars:[C

    .line 1107
    .local v6, buf:[C
    const/4 v7, 0x0

    .line 1108
    .local v7, commaCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1e
    if-ge v8, v9, :cond_2b

    .line 1109
    aget-char v10, v6, v8

    const/16 v11, 0x2c

    if-ne v10, v11, :cond_28

    .line 1110
    add-int/lit8 v7, v7, 0x1

    .line 1108
    :cond_28
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 1114
    :cond_2b
    add-int/lit8 v13, v7, 0x1

    .line 1116
    .local v13, remaining:I
    const/4 v10, 0x0

    .line 1117
    .local v10, ok:I
    move v12, v13

    .line 1118
    .local v12, okRemaining:I
    const-string v11, ""

    .line 1120
    .local v11, okFormat:Ljava/lang/String;
    const/4 v14, 0x0

    .line 1121
    .local v14, w:I
    const/4 v7, 0x0

    .line 1122
    .local v7, count:I
    move-object v0, v5

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v19, v0

    .line 1124
    .local v19, widths:[F
    iget v8, v5, Landroid/text/MeasuredText;->mDir:I

    .end local v8           #i:I
    const/4 v15, 0x1

    if-ne v8, v15, :cond_b9

    const/4 v8, 0x1

    move/from16 v16, v8

    .line 1127
    .local v16, request:I
    :goto_40
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v17

    .line 1128
    .local v17, tempMt:Landroid/text/MeasuredText;
    const/4 v8, 0x0

    .restart local v8       #i:I
    move/from16 v22, v8

    .end local v8           #i:I
    .local v22, i:I
    move v8, v13

    .end local v13           #remaining:I
    .local v8, remaining:I
    move-object v13, v11

    .end local v11           #okFormat:Ljava/lang/String;
    .local v13, okFormat:Ljava/lang/String;
    move v11, v14

    .end local v14           #w:I
    .local v11, w:I
    move v14, v12

    .end local v12           #okRemaining:I
    .local v14, okRemaining:I
    move v12, v10

    .end local v10           #ok:I
    .local v12, ok:I
    move/from16 v10, v22

    .end local v22           #i:I
    .local v10, i:I
    :goto_4e
    if-ge v10, v9, :cond_e3

    .line 1129
    int-to-float v11, v11

    aget v15, v19, v10

    .end local v11           #w:I
    add-float/2addr v11, v15

    move v0, v11

    float-to-int v0, v0

    move/from16 v18, v0

    .line 1131
    .local v18, w:I
    aget-char v11, v6, v10

    const/16 v15, 0x2c

    if-ne v11, v15, :cond_10f

    .line 1132
    add-int/lit8 v7, v7, 0x1

    .line 1137
    add-int/lit8 v15, v8, -0x1

    .end local v8           #remaining:I
    .local v15, remaining:I
    const/4 v8, 0x1

    if-ne v15, v8, :cond_bd

    .line 1138
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1144
    .local v8, format:Ljava/lang/String;
    :goto_7b
    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, v17

    move-object v1, v8

    move v2, v11

    move/from16 v3, v20

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;III)V

    .line 1145
    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/MeasuredText;->mLen:I

    move v11, v0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move v2, v11

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v11

    .line 1147
    .local v11, moreWid:F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v11, v11, v20

    cmpg-float v11, v11, p2

    if-gtz v11, :cond_10a

    .line 1148
    .end local v11           #moreWid:F
    add-int/lit8 v11, v10, 0x1

    .line 1149
    .end local v12           #ok:I
    .local v11, ok:I
    move v12, v15

    .line 1150
    .end local v14           #okRemaining:I
    .local v12, okRemaining:I
    move-object v8, v8

    .end local v13           #okFormat:Ljava/lang/String;
    .local v8, okFormat:Ljava/lang/String;
    move v13, v12

    .end local v12           #okRemaining:I
    .local v13, okRemaining:I
    move v14, v15

    .end local v15           #remaining:I
    .local v14, remaining:I
    move-object v12, v8

    .line 1128
    .end local v8           #okFormat:Ljava/lang/String;
    .local v12, okFormat:Ljava/lang/String;
    :goto_af
    add-int/lit8 v8, v10, 0x1

    .end local v10           #i:I
    .local v8, i:I
    move v10, v8

    .end local v8           #i:I
    .restart local v10       #i:I
    move v8, v14

    .end local v14           #remaining:I
    .local v8, remaining:I
    move v14, v13

    .end local v13           #okRemaining:I
    .local v14, okRemaining:I
    move-object v13, v12

    .end local v12           #okFormat:Ljava/lang/String;
    .local v13, okFormat:Ljava/lang/String;
    move v12, v11

    .end local v11           #ok:I
    .local v12, ok:I
    move/from16 v11, v18

    .end local v18           #w:I
    .local v11, w:I
    goto :goto_4e

    .line 1124
    .end local v8           #remaining:I
    .end local v16           #request:I
    .end local v17           #tempMt:Landroid/text/MeasuredText;
    .local v10, ok:I
    .local v11, okFormat:Ljava/lang/String;
    .local v12, okRemaining:I
    .local v13, remaining:I
    .local v14, w:I
    :cond_b9
    const/4 v8, -0x1

    move/from16 v16, v8

    goto :goto_40

    .line 1140
    .end local v11           #okFormat:Ljava/lang/String;
    .local v10, i:I
    .local v12, ok:I
    .local v13, okFormat:Ljava/lang/String;
    .local v14, okRemaining:I
    .restart local v15       #remaining:I
    .restart local v16       #request:I
    .restart local v17       #tempMt:Landroid/text/MeasuredText;
    .restart local v18       #w:I
    :cond_bd
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v20, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v11, v20

    move-object/from16 v0, p4

    move-object v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, format:Ljava/lang/String;
    goto :goto_7b

    .line 1154
    .end local v15           #remaining:I
    .end local v18           #w:I
    .local v8, remaining:I
    .local v11, w:I
    :cond_e3
    invoke-static/range {v17 .. v17}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1156
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .end local p1
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1157
    .local p1, out:Landroid/text/SpannableStringBuilder;
    const/16 p2, 0x0

    const/16 p3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move/from16 v3, p3

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_fe
    .catchall {:try_start_1a .. :try_end_fe} :catchall_105

    .line 1160
    .end local p2
    .end local p3
    invoke-static {v5}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, p1

    goto/16 :goto_19

    .end local v6           #buf:[C
    .end local v7           #count:I
    .end local v8           #remaining:I
    .end local v9           #len:I
    .end local v10           #i:I
    .end local v11           #w:I
    .end local v12           #ok:I
    .end local v13           #okFormat:Ljava/lang/String;
    .end local v14           #okRemaining:I
    .end local v16           #request:I
    .end local v17           #tempMt:Landroid/text/MeasuredText;
    .end local v19           #widths:[F
    .end local p1           #out:Landroid/text/SpannableStringBuilder;
    :catchall_105
    move-exception p0

    .end local p0
    invoke-static {v5}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw p0

    .restart local v6       #buf:[C
    .restart local v7       #count:I
    .local v8, format:Ljava/lang/String;
    .restart local v9       #len:I
    .restart local v10       #i:I
    .restart local v12       #ok:I
    .restart local v13       #okFormat:Ljava/lang/String;
    .restart local v14       #okRemaining:I
    .restart local v15       #remaining:I
    .restart local v16       #request:I
    .restart local v17       #tempMt:Landroid/text/MeasuredText;
    .restart local v18       #w:I
    .restart local v19       #widths:[F
    .restart local p0
    .local p1, p:Landroid/text/TextPaint;
    .restart local p2
    .restart local p3
    :cond_10a
    move v11, v12

    .end local v12           #ok:I
    .local v11, ok:I
    move-object v12, v13

    .end local v13           #okFormat:Ljava/lang/String;
    .local v12, okFormat:Ljava/lang/String;
    move v13, v14

    .end local v14           #okRemaining:I
    .local v13, okRemaining:I
    move v14, v15

    .end local v15           #remaining:I
    .local v14, remaining:I
    goto :goto_af

    .end local v11           #ok:I
    .local v8, remaining:I
    .local v12, ok:I
    .local v13, okFormat:Ljava/lang/String;
    .local v14, okRemaining:I
    :cond_10f
    move v11, v12

    .end local v12           #ok:I
    .restart local v11       #ok:I
    move-object v12, v13

    .end local v13           #okFormat:Ljava/lang/String;
    .local v12, okFormat:Ljava/lang/String;
    move v13, v14

    .end local v14           #okRemaining:I
    .local v13, okRemaining:I
    move v14, v8

    .end local v8           #remaining:I
    .local v14, remaining:I
    goto :goto_af
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 10
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 1272
    array-length v0, p0

    if-nez v0, :cond_7

    .line 1273
    const-string v0, ""

    .line 1309
    :goto_6
    return-object v0

    .line 1276
    :cond_7
    array-length v0, p0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_e

    .line 1277
    aget-object v0, p0, v1

    goto :goto_6

    .line 1280
    :cond_e
    const/4 v8, 0x0

    .line 1281
    .local v8, spanned:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_10
    array-length v0, p0

    if-ge v6, v0, :cond_1a

    .line 1282
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_2b

    .line 1283
    const/4 v8, 0x1

    .line 1288
    :cond_1a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1289
    .local v7, sb:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    :goto_20
    array-length v0, p0

    if-ge v6, v0, :cond_2e

    .line 1290
    aget-object v0, p0, v6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1289
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 1281
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 1293
    .restart local v7       #sb:Ljava/lang/StringBuilder;
    :cond_2e
    if-nez v8, :cond_35

    .line 1294
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1297
    :cond_35
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1298
    .local v4, ss:Landroid/text/SpannableString;
    const/4 v5, 0x0

    .line 1299
    .local v5, off:I
    const/4 v6, 0x0

    :goto_3c
    array-length v0, p0

    if-ge v6, v0, :cond_58

    .line 1300
    aget-object v0, p0, v6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1302
    .local v2, len:I
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_54

    .line 1303
    aget-object v0, p0, v6

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 1306
    :cond_54
    add-int/2addr v5, v2

    .line 1299
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 1309
    .end local v2           #len:I
    :cond_58
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method public static copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .registers 14
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "kind"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 930
    if-nez p3, :cond_4

    .line 931
    const-class p3, Ljava/lang/Object;

    .line 934
    :cond_4
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 936
    .local v3, spans:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    array-length v5, v3

    if-ge v2, v5, :cond_32

    .line 937
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 938
    .local v4, st:I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 939
    .local v0, en:I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 941
    .local v1, fl:I
    if-ge v4, p1, :cond_21

    .line 942
    move v4, p1

    .line 943
    :cond_21
    if-le v0, p2, :cond_24

    .line 944
    move v0, p2

    .line 946
    :cond_24
    aget-object v5, v3, v2

    sub-int v6, v4, p1

    add-int/2addr v6, p5

    sub-int v7, v0, p1

    add-int/2addr v7, p5

    invoke-interface {p4, v5, v6, v7, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 936
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 949
    .end local v0           #en:I
    .end local v1           #fl:I
    .end local v4           #st:I
    :cond_32
    return-void
.end method

.method public static delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .registers 9
    .parameter "delimitedString"
    .parameter "delimiter"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1519
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_e
    move v3, v5

    .line 1537
    :goto_f
    return v3

    .line 1522
    :cond_10
    const/4 v2, -0x1

    .line 1523
    .local v2, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1524
    .local v1, length:I
    :cond_15
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3a

    .line 1525
    if-lez v2, :cond_28

    sub-int v3, v2, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_15

    .line 1528
    :cond_28
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1529
    .local v0, expectedDelimiterPos:I
    if-ne v0, v1, :cond_32

    move v3, v4

    .line 1531
    goto :goto_f

    .line 1533
    :cond_32
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_15

    move v3, v4

    .line 1534
    goto :goto_f

    .end local v0           #expectedDelimiterPos:I
    :cond_3a
    move v3, v5

    .line 1537
    goto :goto_f
.end method

.method static doesNotNeedBidi(Ljava/lang/CharSequence;II)Z
    .registers 6
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1193
    move v0, p1

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_10

    .line 1194
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x590

    if-lt v1, v2, :cond_d

    .line 1195
    const/4 v1, 0x0

    .line 1198
    :goto_c
    return v1

    .line 1193
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1198
    :cond_10
    const/4 v1, 0x1

    goto :goto_c
.end method

.method static doesNotNeedBidi([CII)Z
    .registers 7
    .parameter "text"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 1203
    move v1, p1

    .local v1, i:I
    add-int v0, v1, p2

    .local v0, e:I
    :goto_3
    if-ge v1, v0, :cond_10

    .line 1204
    aget-char v2, p0, v1

    const/16 v3, 0x590

    if-lt v2, v3, :cond_d

    .line 1205
    const/4 v2, 0x0

    .line 1208
    :goto_c
    return v2

    .line 1203
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1208
    :cond_10
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public static dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .registers 11
    .parameter "cs"
    .parameter "printer"
    .parameter "prefix"

    .prologue
    .line 731
    instance-of v5, p0, Landroid/text/Spanned;

    if-eqz v5, :cond_8a

    .line 732
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v4, v0

    .line 733
    .local v4, sp:Landroid/text/Spanned;
    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v7, Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 735
    .local v3, os:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    array-length v5, v3

    if-ge v1, v5, :cond_a4

    .line 736
    aget-object v2, v3, v1

    .line 737
    .local v2, o:Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p0, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") fl=#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 735
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 745
    .end local v1           #i:I
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #os:[Ljava/lang/Object;
    .end local v4           #sp:Landroid/text/Spanned;
    :cond_8a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": (no spans)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 747
    :cond_a4
    return-void
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .registers 10
    .parameter "text"
    .parameter "p"
    .parameter "avail"
    .parameter "where"

    .prologue
    .line 977
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .registers 15
    .parameter "text"
    .parameter "paint"
    .parameter "avail"
    .parameter "where"
    .parameter "preserveLength"
    .parameter "callback"

    .prologue
    .line 996
    sget-object v1, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 997
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 998
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x10400b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1           #r:Landroid/content/res/Resources;
    sput-object v1, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .line 1001
    :cond_11
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 1003
    .local v8, len:I
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    .line 1005
    .local v1, mt:Landroid/text/MeasuredText;
    const/4 v4, 0x0

    :try_start_1a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x2

    move-object v2, p1

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;III)F

    move-result v2

    .line 1008
    .local v2, width:F
    cmpg-float v2, v2, p2

    if-gtz v2, :cond_34

    .line 1009
    .end local v2           #width:F
    if-eqz p5, :cond_30

    .line 1010
    const/4 p1, 0x0

    const/4 p3, 0x0

    invoke-interface {p5, p1, p3}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_10a

    .line 1077
    .end local p1
    .end local p3
    :cond_30
    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .end local p0
    .end local p4
    .end local p5
    :goto_33
    return-object p0

    .line 1018
    .restart local p0
    .restart local p1
    .restart local p3
    .restart local p4
    .restart local p5
    :cond_34
    :try_start_34
    sget-object v2, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 1019
    .local p1, ellipsiswid:F
    sub-float/2addr p2, p1

    .line 1021
    const/4 p1, 0x0

    .line 1022
    .local p1, left:I
    move v2, v8

    .line 1023
    .local v2, right:I
    const/4 v3, 0x0

    cmpg-float v3, p2, v3

    if-gez v3, :cond_6d

    move v3, v2

    .end local v2           #right:I
    .local v3, right:I
    move p3, p1

    .line 1035
    .end local p1           #left:I
    .local p3, left:I
    :goto_44
    if-eqz p5, :cond_49

    .line 1036
    invoke-interface {p5, p3, v3}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1039
    :cond_49
    iget-object p1, v1, Landroid/text/MeasuredText;->mChars:[C

    .line 1040
    .local p1, buf:[C
    instance-of p5, p0, Landroid/text/Spanned;

    .end local p5
    if-eqz p5, :cond_a3

    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object p5, v0

    move-object v2, p5

    .line 1042
    .local v2, sp:Landroid/text/Spanned;
    :goto_54
    sub-int p5, v3, p3

    sub-int p5, v8, p5

    .line 1043
    .local p5, remaining:I
    if-eqz p4, :cond_c5

    .line 1044
    if-lez p5, :cond_10f

    .line 1045
    add-int/lit8 p0, p3, 0x1

    .end local p3           #left:I
    .local p0, left:I
    const/16 p4, 0x2026

    aput-char p4, p1, p3

    .line 1047
    .end local p4
    :goto_62
    move p0, p0

    .local p0, i:I
    :goto_63
    if-ge p0, v3, :cond_a6

    .line 1048
    const p3, 0xfeff

    aput-char p3, p1, p0

    .line 1047
    add-int/lit8 p0, p0, 0x1

    goto :goto_63

    .line 1025
    .end local v3           #right:I
    .local v2, right:I
    .local p0, text:Ljava/lang/CharSequence;
    .local p1, left:I
    .local p3, where:Landroid/text/TextUtils$TruncateAt;
    .restart local p4
    .local p5, callback:Landroid/text/TextUtils$EllipsizeCallback;
    :cond_6d
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne p3, v3, :cond_7c

    .line 1026
    const/4 p3, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v8, v2, p2}, Landroid/text/MeasuredText;->breakText(IIZF)I

    .end local v2           #right:I
    .end local p3           #where:Landroid/text/TextUtils$TruncateAt;
    move-result p3

    sub-int p3, v8, p3

    .local p3, right:I
    move v3, p3

    .end local p3           #right:I
    .restart local v3       #right:I
    move p3, p1

    .end local p1           #left:I
    .local p3, left:I
    goto :goto_44

    .line 1027
    .end local v3           #right:I
    .restart local v2       #right:I
    .restart local p1       #left:I
    .local p3, where:Landroid/text/TextUtils$TruncateAt;
    :cond_7c
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .end local p1           #left:I
    if-ne p3, p1, :cond_89

    .line 1028
    const/4 p1, 0x0

    const/4 p3, 0x1

    invoke-virtual {v1, p1, v8, p3, p2}, Landroid/text/MeasuredText;->breakText(IIZF)I

    .end local p3           #where:Landroid/text/TextUtils$TruncateAt;
    move-result p1

    .restart local p1       #left:I
    move v3, v2

    .end local v2           #right:I
    .restart local v3       #right:I
    move p3, p1

    .end local p1           #left:I
    .local p3, left:I
    goto :goto_44

    .line 1030
    .end local v3           #right:I
    .restart local v2       #right:I
    .local p3, where:Landroid/text/TextUtils$TruncateAt;
    :cond_89
    const/4 p1, 0x0

    const/4 p3, 0x0

    const/high16 v2, 0x4000

    div-float v2, p2, v2

    invoke-virtual {v1, p1, v8, p3, v2}, Landroid/text/MeasuredText;->breakText(IIZF)I

    .end local v2           #right:I
    .end local p3           #where:Landroid/text/TextUtils$TruncateAt;
    move-result p1

    sub-int p3, v8, p1

    .line 1031
    .local p3, right:I
    invoke-virtual {v1, p3, v8}, Landroid/text/MeasuredText;->measure(II)F

    move-result p1

    sub-float/2addr p2, p1

    .line 1032
    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p3, v2, p2}, Landroid/text/MeasuredText;->breakText(IIZF)I

    move-result p1

    .restart local p1       #left:I
    move v3, p3

    .end local p3           #right:I
    .restart local v3       #right:I
    move p3, p1

    .end local p1           #left:I
    .local p3, left:I
    goto :goto_44

    .line 1040
    .end local p5           #callback:Landroid/text/TextUtils$EllipsizeCallback;
    .local p1, buf:[C
    :cond_a3
    const/4 p5, 0x0

    move-object v2, p5

    goto :goto_54

    .line 1050
    .end local p3           #left:I
    .end local p4
    .local v2, sp:Landroid/text/Spanned;
    .local p0, i:I
    .local p5, remaining:I
    :cond_a6
    new-instance p0, Ljava/lang/String;

    .end local p0           #i:I
    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, v8}, Ljava/lang/String;-><init>([CII)V
    :try_end_ac
    .catchall {:try_start_34 .. :try_end_ac} :catchall_10a

    .line 1051
    .local p0, s:Ljava/lang/String;
    if-nez v2, :cond_b2

    .line 1077
    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    goto :goto_33

    .line 1054
    :cond_b2
    :try_start_b2
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1055
    .local v6, ss:Landroid/text/SpannableString;
    const/4 v3, 0x0

    const-class v5, Ljava/lang/Object;

    .end local v3           #right:I
    const/4 v7, 0x0

    move v4, v8

    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    :try_end_bf
    .catchall {:try_start_b2 .. :try_end_bf} :catchall_10a

    .line 1077
    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object p0, v6

    goto/16 :goto_33

    .line 1059
    .end local v6           #ss:Landroid/text/SpannableString;
    .restart local v3       #right:I
    .local p0, text:Ljava/lang/CharSequence;
    .restart local p3       #left:I
    .restart local p4
    :cond_c5
    if-nez p5, :cond_ce

    .line 1060
    :try_start_c7
    const-string p0, ""
    :try_end_c9
    .catchall {:try_start_c7 .. :try_end_c9} :catchall_10a

    .line 1077
    .end local p0           #text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    goto/16 :goto_33

    .line 1063
    .restart local p0       #text:Ljava/lang/CharSequence;
    :cond_ce
    if-nez v2, :cond_f3

    .line 1064
    :try_start_d0
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #text:Ljava/lang/CharSequence;
    sget-object p4, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .end local p4
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p4, p5

    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1065
    .local p0, sb:Ljava/lang/StringBuilder;
    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1066
    sget-object p3, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .end local p3           #left:I
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    sub-int p3, v8, v3

    invoke-virtual {p0, p1, v3, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1068
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_ed
    .catchall {:try_start_d0 .. :try_end_ed} :catchall_10a

    move-result-object p0

    .line 1077
    .end local p0           #sb:Ljava/lang/StringBuilder;
    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    goto/16 :goto_33

    .line 1071
    .local p0, text:Ljava/lang/CharSequence;
    .restart local p3       #left:I
    .restart local p4
    :cond_f3
    :try_start_f3
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .end local p1           #buf:[C
    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1072
    .local p1, ssb:Landroid/text/SpannableStringBuilder;
    const/4 p4, 0x0

    invoke-virtual {p1, p0, p4, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 1073
    .end local p4
    sget-object p3, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .end local p3           #left:I
    invoke-virtual {p1, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1074
    invoke-virtual {p1, p0, v3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_104
    .catchall {:try_start_f3 .. :try_end_104} :catchall_10a

    .line 1077
    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object p0, p1

    goto/16 :goto_33

    .end local v2           #sp:Landroid/text/Spanned;
    .end local v3           #right:I
    .end local p0           #text:Ljava/lang/CharSequence;
    .end local p1           #ssb:Landroid/text/SpannableStringBuilder;
    .end local p5           #remaining:I
    :catchall_10a
    move-exception p0

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw p0

    .restart local v2       #sp:Landroid/text/Spanned;
    .restart local v3       #right:I
    .restart local p0       #text:Ljava/lang/CharSequence;
    .local p1, buf:[C
    .restart local p3       #left:I
    .restart local p4
    .restart local p5       #remaining:I
    :cond_10f
    move p0, p3

    .end local p3           #left:I
    .local p0, left:I
    goto/16 :goto_62
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 461
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 473
    :goto_5
    return v2

    .line 463
    :cond_6
    if-eqz p0, :cond_35

    if-eqz p1, :cond_35

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, length:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_35

    .line 464
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_21

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 465
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5

    .line 467
    :cond_21
    const/4 v0, 0x0

    .local v0, i:I
    :goto_22
    if-ge v0, v1, :cond_33

    .line 468
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_30

    move v2, v4

    goto :goto_5

    .line 467
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    move v2, v5

    .line 470
    goto :goto_5

    .end local v0           #i:I
    .end local v1           #length:I
    :cond_35
    move v2, v4

    .line 473
    goto :goto_5
.end method

.method public static varargs expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9
    .parameter "template"
    .parameter "values"

    .prologue
    const/16 v6, 0x5e

    .line 801
    array-length v4, p1

    const/16 v5, 0x9

    if-le v4, v5, :cond_f

    .line 802
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "max of 9 values are supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 805
    :cond_f
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 808
    .local v2, ssb:Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .line 809
    .local v0, i:I
    :goto_15
    :try_start_15
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ge v0, v4, :cond_5f

    .line 810
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_a0

    .line 811
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    .line 812
    .local v1, next:C
    if-ne v1, v6, :cond_33

    .line 813
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 814
    add-int/lit8 v0, v0, 0x1

    .line 815
    goto :goto_15

    .line 816
    :cond_33
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 817
    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    const/4 v5, 0x1

    sub-int v3, v4, v5

    .line 818
    .local v3, which:I
    if-gez v3, :cond_60

    .line 819
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 834
    .end local v1           #next:C
    .end local v3           #which:I
    :catch_5e
    move-exception v4

    .line 837
    :cond_5f
    return-object v2

    .line 822
    .restart local v1       #next:C
    .restart local v3       #which:I
    :cond_60
    array-length v4, p1

    if-lt v3, v4, :cond_90

    .line 823
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " provided"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 827
    :cond_90
    add-int/lit8 v4, v0, 0x2

    aget-object v5, p1, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 828
    aget-object v4, p1, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I
    :try_end_9c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_9c} :catch_5e

    move-result v4

    add-int/2addr v0, v4

    .line 829
    goto/16 :goto_15

    .line 832
    .end local v1           #next:C
    .end local v3           #which:I
    :cond_a0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_15
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .registers 14
    .parameter "cs"
    .parameter "off"
    .parameter "reqModes"

    .prologue
    const/16 v10, 0x27

    const/16 v9, 0x22

    const/16 v8, 0x2e

    const/4 v7, 0x1

    .line 1423
    if-gez p1, :cond_b

    .line 1424
    const/4 v5, 0x0

    .line 1508
    :goto_a
    return v5

    .line 1429
    :cond_b
    const/4 v4, 0x0

    .line 1431
    .local v4, mode:I
    and-int/lit16 v5, p2, 0x1000

    if-eqz v5, :cond_12

    .line 1432
    or-int/lit16 v4, v4, 0x1000

    .line 1434
    :cond_12
    and-int/lit16 v5, p2, 0x6000

    if-nez v5, :cond_18

    move v5, v4

    .line 1435
    goto :goto_a

    .line 1440
    :cond_18
    move v1, p1

    .local v1, i:I
    :goto_19
    if-lez v1, :cond_2d

    .line 1441
    sub-int v5, v1, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1443
    .local v0, c:C
    if-eq v0, v9, :cond_41

    if-eq v0, v10, :cond_41

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_41

    .line 1451
    .end local v0           #c:C
    :cond_2d
    move v2, v1

    .line 1452
    .local v2, j:I
    :goto_2e
    if-lez v2, :cond_44

    sub-int v5, v2, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0       #c:C
    const/16 v5, 0x20

    if-eq v0, v5, :cond_3e

    const/16 v5, 0x9

    if-ne v0, v5, :cond_44

    .line 1453
    :cond_3e
    add-int/lit8 v2, v2, -0x1

    goto :goto_2e

    .line 1440
    .end local v2           #j:I
    :cond_41
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 1455
    .end local v0           #c:C
    .restart local v2       #j:I
    :cond_44
    if-eqz v2, :cond_50

    sub-int v5, v2, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_53

    .line 1456
    :cond_50
    or-int/lit16 v5, v4, 0x2000

    goto :goto_a

    .line 1461
    :cond_53
    and-int/lit16 v5, p2, 0x4000

    if-nez v5, :cond_5d

    .line 1462
    if-eq v1, v2, :cond_5b

    or-int/lit16 v4, v4, 0x2000

    :cond_5b
    move v5, v4

    .line 1463
    goto :goto_a

    .line 1468
    :cond_5d
    if-ne v1, v2, :cond_63

    move v5, v4

    .line 1469
    goto :goto_a

    .line 1474
    .restart local v0       #c:C
    :cond_61
    add-int/lit8 v2, v2, -0x1

    .end local v0           #c:C
    :cond_63
    if-lez v2, :cond_77

    .line 1475
    sub-int v5, v2, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1477
    .restart local v0       #c:C
    if-eq v0, v9, :cond_61

    if-eq v0, v10, :cond_61

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-eq v5, v6, :cond_61

    .line 1483
    .end local v0           #c:C
    :cond_77
    if-lez v2, :cond_a6

    .line 1484
    sub-int v5, v2, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1486
    .restart local v0       #c:C
    if-eq v0, v8, :cond_89

    const/16 v5, 0x3f

    if-eq v0, v5, :cond_89

    const/16 v5, 0x21

    if-ne v0, v5, :cond_a6

    .line 1490
    :cond_89
    if-ne v0, v8, :cond_9f

    .line 1491
    const/4 v5, 0x2

    sub-int v3, v2, v5

    .local v3, k:I
    :goto_8e
    if-ltz v3, :cond_9f

    .line 1492
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1494
    if-ne v0, v8, :cond_99

    move v5, v4

    .line 1495
    goto/16 :goto_a

    .line 1498
    :cond_99
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_a3

    .line 1504
    .end local v3           #k:I
    :cond_9f
    or-int/lit16 v5, v4, 0x4000

    goto/16 :goto_a

    .line 1491
    .restart local v3       #k:I
    :cond_a3
    add-int/lit8 v3, v3, -0x1

    goto :goto_8e

    .end local v0           #c:C
    .end local v3           #k:I
    :cond_a6
    move v5, v4

    .line 1508
    goto/16 :goto_a
.end method

.method public static getChars(Ljava/lang/CharSequence;II[CI)V
    .registers 9
    .parameter "s"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 59
    .local v0, c:Ljava/lang/Class;
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_e

    .line 60
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 71
    :goto_d
    return-void

    .line 61
    .restart local p0
    :cond_e
    const-class v3, Ljava/lang/StringBuffer;

    if-ne v0, v3, :cond_18

    .line 62
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_d

    .line 63
    .restart local p0
    :cond_18
    const-class v3, Ljava/lang/StringBuilder;

    if-ne v0, v3, :cond_22

    .line 64
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_d

    .line 65
    .restart local p0
    :cond_22
    instance-of v3, p0, Landroid/text/GetChars;

    if-eqz v3, :cond_2c

    .line 66
    check-cast p0, Landroid/text/GetChars;

    .end local p0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    goto :goto_d

    .line 68
    .restart local p0
    :cond_2c
    move v2, p1

    .local v2, i:I
    move v1, p4

    .end local p4
    .local v1, destoff:I
    :goto_2e
    if-ge v2, p2, :cond_3c

    .line 69
    add-int/lit8 p4, v1, 0x1

    .end local v1           #destoff:I
    .restart local p4
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 68
    add-int/lit8 v2, v2, 0x1

    move v1, p4

    .end local p4
    .restart local v1       #destoff:I
    goto :goto_2e

    :cond_3c
    move p4, v1

    .end local v1           #destoff:I
    .restart local p4
    goto :goto_d
.end method

.method public static getOffsetAfter(Ljava/lang/CharSequence;I)I
    .registers 12
    .parameter "text"
    .parameter "offset"

    .prologue
    .line 876
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 878
    .local v5, len:I
    if-ne p1, v5, :cond_8

    move v8, v5

    .line 909
    :goto_7
    return v8

    .line 880
    :cond_8
    const/4 v8, 0x1

    sub-int v8, v5, v8

    if-ne p1, v8, :cond_f

    move v8, v5

    .line 881
    goto :goto_7

    .line 883
    :cond_f
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 885
    .local v1, c:C
    const v8, 0xd800

    if-lt v1, v8, :cond_62

    const v8, 0xdbff

    if-gt v1, v8, :cond_62

    .line 886
    add-int/lit8 v8, p1, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 888
    .local v2, c1:C
    const v8, 0xdc00

    if-lt v2, v8, :cond_5f

    const v8, 0xdfff

    if-gt v2, v8, :cond_5f

    .line 889
    add-int/lit8 p1, p1, 0x2

    .line 896
    .end local v2           #c1:C
    :goto_2f
    instance-of v8, p0, Landroid/text/Spanned;

    if-eqz v8, :cond_65

    .line 897
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    const-class v9, Landroid/text/style/ReplacementSpan;

    invoke-interface {v8, p1, p1, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/ReplacementSpan;

    .line 900
    .local v6, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_40
    array-length v8, v6

    if-ge v4, v8, :cond_65

    .line 901
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v6, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 902
    .local v7, start:I
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v6, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 904
    .local v3, end:I
    if-ge v7, p1, :cond_5c

    if-le v3, p1, :cond_5c

    .line 905
    move p1, v3

    .line 900
    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 891
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v6           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v7           #start:I
    .restart local v2       #c1:C
    :cond_5f
    add-int/lit8 p1, p1, 0x1

    goto :goto_2f

    .line 893
    .end local v2           #c1:C
    :cond_62
    add-int/lit8 p1, p1, 0x1

    goto :goto_2f

    :cond_65
    move v8, p1

    .line 909
    goto :goto_7
.end method

.method public static getOffsetBefore(Ljava/lang/CharSequence;I)I
    .registers 11
    .parameter "text"
    .parameter "offset"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 841
    if-nez p1, :cond_5

    .line 872
    :cond_4
    :goto_4
    return v7

    .line 843
    :cond_5
    if-eq p1, v8, :cond_4

    .line 846
    sub-int v7, p1, v8

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 848
    .local v1, c:C
    const v7, 0xdc00

    if-lt v1, v7, :cond_5d

    const v7, 0xdfff

    if-gt v1, v7, :cond_5d

    .line 849
    const/4 v7, 0x2

    sub-int v7, p1, v7

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 851
    .local v2, c1:C
    const v7, 0xd800

    if-lt v2, v7, :cond_5a

    const v7, 0xdbff

    if-gt v2, v7, :cond_5a

    .line 852
    add-int/lit8 p1, p1, -0x2

    .line 859
    .end local v2           #c1:C
    :goto_2a
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_60

    .line 860
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    .line 863
    .local v5, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3b
    array-length v7, v5

    if-ge v4, v7, :cond_60

    .line 864
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    aget-object v8, v5, v4

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 865
    .local v6, start:I
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    aget-object v8, v5, v4

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 867
    .local v3, end:I
    if-ge v6, p1, :cond_57

    if-le v3, p1, :cond_57

    .line 868
    move p1, v6

    .line 863
    :cond_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 854
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v6           #start:I
    .restart local v2       #c1:C
    :cond_5a
    add-int/lit8 p1, p1, -0x1

    goto :goto_2a

    .line 856
    .end local v2           #c1:C
    :cond_5d
    add-int/lit8 p1, p1, -0x1

    goto :goto_2a

    :cond_60
    move v7, p1

    .line 872
    goto :goto_4
.end method

.method public static getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .registers 4
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 479
    new-instance v0, Landroid/text/TextUtils$Reverser;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static getTrimmedLength(Ljava/lang/CharSequence;)I
    .registers 6
    .parameter "s"

    .prologue
    const/16 v4, 0x20

    .line 437
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 439
    .local v1, len:I
    const/4 v2, 0x0

    .line 440
    .local v2, start:I
    :goto_7
    if-ge v2, v1, :cond_12

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_12

    .line 441
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 444
    :cond_12
    move v0, v1

    .line 445
    .local v0, end:I
    :goto_13
    if-le v0, v2, :cond_21

    const/4 v3, 0x1

    sub-int v3, v0, v3

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_21

    .line 446
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 449
    :cond_21
    sub-int v3, v0, v2

    return v3
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"

    .prologue
    .line 1240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1242
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_37

    .line 1243
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1244
    .local v0, c:C
    sparse-switch v0, :sswitch_data_3c

    .line 1261
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1242
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1246
    :sswitch_19
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1249
    :sswitch_1f
    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1252
    :sswitch_25
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1255
    :sswitch_2b
    const-string v3, "&apos;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1258
    :sswitch_31
    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1264
    .end local v0           #c:C
    :cond_37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1244
    :sswitch_data_3c
    .sparse-switch
        0x22 -> :sswitch_31
        0x26 -> :sswitch_25
        0x27 -> :sswitch_2b
        0x3c -> :sswitch_19
        0x3e -> :sswitch_1f
    .end sparse-switch
.end method

.method public static indexOf(Ljava/lang/CharSequence;C)I
    .registers 3
    .parameter "s"
    .parameter "ch"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CI)I
    .registers 5
    .parameter "s"
    .parameter "ch"
    .parameter "start"

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 80
    .local v0, c:Ljava/lang/Class;
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_f

    .line 81
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 83
    :goto_e
    return v1

    .restart local p0
    :cond_f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_e
.end method

.method public static indexOf(Ljava/lang/CharSequence;CII)I
    .registers 12
    .parameter "s"
    .parameter "ch"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v7, -0x1

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 89
    .local v1, c:Ljava/lang/Class;
    instance-of v6, p0, Landroid/text/GetChars;

    if-nez v6, :cond_15

    const-class v6, Ljava/lang/StringBuffer;

    if-eq v1, v6, :cond_15

    const-class v6, Ljava/lang/StringBuilder;

    if-eq v1, v6, :cond_15

    const-class v6, Ljava/lang/String;

    if-ne v1, v6, :cond_41

    .line 91
    :cond_15
    const/16 v0, 0x1f4

    .line 92
    .local v0, INDEX_INCREMENT:I
    const/16 v6, 0x1f4

    invoke-static {v6}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v5

    .line 94
    .local v5, temp:[C
    :goto_1d
    if-ge p2, p3, :cond_3c

    .line 95
    add-int/lit16 v4, p2, 0x1f4

    .line 96
    .local v4, segend:I
    if-le v4, p3, :cond_24

    .line 97
    move v4, p3

    .line 99
    :cond_24
    const/4 v6, 0x0

    invoke-static {p0, p2, v4, v5, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 101
    sub-int v2, v4, p2

    .line 102
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2b
    if-ge v3, v2, :cond_3a

    .line 103
    aget-char v6, v5, v3

    if-ne v6, p1, :cond_37

    .line 104
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    .line 105
    add-int v6, v3, p2

    .line 120
    .end local v0           #INDEX_INCREMENT:I
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #segend:I
    .end local v5           #temp:[C
    :goto_36
    return v6

    .line 102
    .restart local v0       #INDEX_INCREMENT:I
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v4       #segend:I
    .restart local v5       #temp:[C
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 109
    :cond_3a
    move p2, v4

    .line 110
    goto :goto_1d

    .line 112
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #segend:I
    :cond_3c
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    move v6, v7

    .line 113
    goto :goto_36

    .line 116
    .end local v0           #INDEX_INCREMENT:I
    .end local v5           #temp:[C
    :cond_41
    move v3, p2

    .restart local v3       #i:I
    :goto_42
    if-ge v3, p3, :cond_4f

    .line 117
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_4c

    move v6, v3

    .line 118
    goto :goto_36

    .line 116
    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_4f
    move v6, v7

    .line 120
    goto :goto_36
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 4
    .parameter "s"
    .parameter "needle"

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4
    .parameter "s"
    .parameter "needle"
    .parameter "start"

    .prologue
    .line 186
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .registers 9
    .parameter "s"
    .parameter "needle"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 191
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 192
    .local v1, nlen:I
    if-nez v1, :cond_a

    move v2, p2

    .line 213
    :goto_9
    return v2

    .line 195
    :cond_a
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 198
    .local v0, c:C
    :goto_e
    invoke-static {p0, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    .line 199
    sub-int v2, p3, v1

    if-le p2, v2, :cond_18

    move v2, v3

    .line 213
    goto :goto_9

    .line 203
    :cond_18
    if-gez p2, :cond_1c

    move v2, v3

    .line 204
    goto :goto_9

    .line 207
    :cond_1c
    invoke-static {p0, p2, p1, v4, v1}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_24

    move v2, p2

    .line 208
    goto :goto_9

    .line 211
    :cond_24
    add-int/lit8 p2, p2, 0x1

    goto :goto_e
.end method

.method public static isDigitsOnly(Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter "str"

    .prologue
    .line 1350
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1351
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 1352
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1353
    const/4 v2, 0x0

    .line 1356
    :goto_12
    return v2

    .line 1351
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1356
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 2
    .parameter "str"

    .prologue
    .line 425
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 426
    :cond_8
    const/4 v0, 0x1

    .line 428
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isGraphic(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 1336
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1337
    .local v0, gc:I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_20

    const/16 v1, 0x10

    if-eq v0, v1, :cond_20

    const/16 v1, 0x13

    if-eq v0, v1, :cond_20

    if-eqz v0, :cond_20

    const/16 v1, 0xd

    if-eq v0, v1, :cond_20

    const/16 v1, 0xe

    if-eq v0, v1, :cond_20

    const/16 v1, 0xc

    if-eq v0, v1, :cond_20

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .registers 5
    .parameter "str"

    .prologue
    .line 1316
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1317
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_2e

    .line 1318
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1319
    .local v0, gc:I
    const/16 v3, 0xf

    if-eq v0, v3, :cond_2b

    const/16 v3, 0x10

    if-eq v0, v3, :cond_2b

    const/16 v3, 0x13

    if-eq v0, v3, :cond_2b

    if-eqz v0, :cond_2b

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2b

    const/16 v3, 0xe

    if-eq v0, v3, :cond_2b

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2b

    .line 1326
    const/4 v3, 0x1

    .line 1329
    .end local v0           #gc:I
    :goto_2a
    return v3

    .line 1317
    .restart local v0       #gc:I
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1329
    .end local v0           #gc:I
    :cond_2e
    const/4 v3, 0x0

    goto :goto_2a
.end method

.method public static isPrintableAscii(C)Z
    .registers 4
    .parameter "c"

    .prologue
    .line 1363
    const/16 v0, 0x20

    .line 1364
    .local v0, asciiFirst:I
    const/16 v1, 0x7e

    .line 1365
    .local v1, asciiLast:I
    const/16 v2, 0x20

    if-gt v2, p0, :cond_c

    const/16 v2, 0x7e

    if-le p0, v2, :cond_14

    :cond_c
    const/16 v2, 0xd

    if-eq p0, v2, :cond_14

    const/16 v2, 0xa

    if-ne p0, v2, :cond_16

    :cond_14
    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter "str"

    .prologue
    .line 1372
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1373
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 1374
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isPrintableAscii(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1375
    const/4 v2, 0x0

    .line 1378
    :goto_12
    return v2

    .line 1373
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1378
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 7
    .parameter "delimiter"
    .parameter "tokens"

    .prologue
    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 286
    .local v0, firstTime:Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 287
    .local v3, token:Ljava/lang/Object;
    if-eqz v0, :cond_1b

    .line 288
    const/4 v0, 0x0

    .line 292
    :goto_17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 290
    :cond_1b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 294
    .end local v3           #token:Ljava/lang/Object;
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .parameter "delimiter"
    .parameter "tokens"

    .prologue
    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 267
    .local v1, firstTime:Z
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v3, :cond_1a

    aget-object v5, v0, v2

    .line 268
    .local v5, token:Ljava/lang/Object;
    if-eqz v1, :cond_16

    .line 269
    const/4 v1, 0x0

    .line 273
    :goto_10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 271
    :cond_16
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 275
    .end local v5           #token:Ljava/lang/Object;
    :cond_1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;C)I
    .registers 4
    .parameter "s"
    .parameter "ch"

    .prologue
    .line 124
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CI)I
    .registers 5
    .parameter "s"
    .parameter "ch"
    .parameter "last"

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 130
    .local v0, c:Ljava/lang/Class;
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_f

    .line 131
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 133
    :goto_e
    return v1

    .restart local p0
    :cond_f
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_e
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CII)I
    .registers 15
    .parameter "s"
    .parameter "ch"
    .parameter "start"
    .parameter "last"

    .prologue
    const/16 v10, 0x1f4

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 138
    if-gez p3, :cond_8

    move v7, v8

    .line 178
    :goto_7
    return v7

    .line 140
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lt p3, v7, :cond_14

    .line 141
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int p3, v7, v9

    .line 143
    :cond_14
    add-int/lit8 v3, p3, 0x1

    .line 145
    .local v3, end:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 147
    .local v1, c:Ljava/lang/Class;
    instance-of v7, p0, Landroid/text/GetChars;

    if-nez v7, :cond_2a

    const-class v7, Ljava/lang/StringBuffer;

    if-eq v1, v7, :cond_2a

    const-class v7, Ljava/lang/StringBuilder;

    if-eq v1, v7, :cond_2a

    const-class v7, Ljava/lang/String;

    if-ne v1, v7, :cond_55

    .line 149
    :cond_2a
    const/16 v0, 0x1f4

    .line 150
    .local v0, INDEX_INCREMENT:I
    invoke-static {v10}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v6

    .line 152
    .local v6, temp:[C
    :goto_30
    if-ge p2, v3, :cond_50

    .line 153
    sub-int v5, v3, v10

    .line 154
    .local v5, segstart:I
    if-ge v5, p2, :cond_37

    .line 155
    move v5, p2

    .line 157
    :cond_37
    const/4 v7, 0x0

    invoke-static {p0, v5, v3, v6, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 159
    sub-int v2, v3, v5

    .line 160
    .local v2, count:I
    sub-int v4, v2, v9

    .local v4, i:I
    :goto_3f
    if-ltz v4, :cond_4e

    .line 161
    aget-char v7, v6, v4

    if-ne v7, p1, :cond_4b

    .line 162
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    .line 163
    add-int v7, v4, v5

    goto :goto_7

    .line 160
    :cond_4b
    add-int/lit8 v4, v4, -0x1

    goto :goto_3f

    .line 167
    :cond_4e
    move v3, v5

    .line 168
    goto :goto_30

    .line 170
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v5           #segstart:I
    :cond_50
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    move v7, v8

    .line 171
    goto :goto_7

    .line 174
    .end local v0           #INDEX_INCREMENT:I
    .end local v6           #temp:[C
    :cond_55
    sub-int v4, v3, v9

    .restart local v4       #i:I
    :goto_57
    if-lt v4, p2, :cond_64

    .line 175
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, p1, :cond_61

    move v7, v4

    .line 176
    goto :goto_7

    .line 174
    :cond_61
    add-int/lit8 v4, v4, -0x1

    goto :goto_57

    :cond_64
    move v7, v8

    .line 178
    goto :goto_7
.end method

.method static obtain(I)[C
    .registers 4
    .parameter "len"

    .prologue
    .line 1214
    sget-object v1, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1215
    :try_start_3
    sget-object v0, Landroid/text/TextUtils;->sTemp:[C

    .line 1216
    .local v0, buf:[C
    const/4 v2, 0x0

    sput-object v2, Landroid/text/TextUtils;->sTemp:[C

    .line 1217
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    .line 1219
    if-eqz v0, :cond_e

    array-length v1, v0

    if-ge v1, p0, :cond_14

    .line 1220
    :cond_e
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v1

    new-array v0, v1, [C

    .line 1222
    :cond_14
    return-object v0

    .line 1217
    .end local v0           #buf:[C
    :catchall_15
    move-exception v2

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v2
.end method

.method private static readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 6
    .parameter "p"
    .parameter "sp"
    .parameter "o"

    .prologue
    .line 913
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 914
    return-void
.end method

.method static recycle([C)V
    .registers 3
    .parameter "temp"

    .prologue
    .line 1226
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_6

    .line 1232
    :goto_5
    return-void

    .line 1229
    :cond_6
    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1230
    :try_start_9
    sput-object p0, Landroid/text/TextUtils;->sTemp:[C

    .line 1231
    monitor-exit v0

    goto :goto_5

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .registers 10
    .parameter "one"
    .parameter "toffset"
    .parameter "two"
    .parameter "ooffset"
    .parameter "len"

    .prologue
    .line 219
    mul-int/lit8 v3, p4, 0x2

    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v2

    .line 221
    .local v2, temp:[C
    add-int v3, p1, p4

    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v2, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 222
    add-int v3, p3, p4

    invoke-static {p2, p3, v3, v2, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 224
    const/4 v1, 0x1

    .line 225
    .local v1, match:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    if-ge v0, p4, :cond_1e

    .line 226
    aget-char v3, v2, v0

    add-int v4, v0, p4

    aget-char v4, v2, v4

    if-eq v3, v4, :cond_22

    .line 227
    const/4 v1, 0x0

    .line 232
    :cond_1e
    invoke-static {v2}, Landroid/text/TextUtils;->recycle([C)V

    .line 233
    return v1

    .line 225
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public static replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 11
    .parameter "template"
    .parameter "sources"
    .parameter "destinations"

    .prologue
    .line 756
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 758
    .local v3, tb:Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    array-length v5, p1

    if-ge v1, v5, :cond_22

    .line 759
    aget-object v5, p1, v1

    invoke-static {v3, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    .line 761
    .local v4, where:I
    if-ltz v4, :cond_1f

    .line 762
    aget-object v5, p1, v1

    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    const/16 v7, 0x21

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 758
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 766
    .end local v4           #where:I
    :cond_22
    const/4 v1, 0x0

    :goto_23
    array-length v5, p1

    if-ge v1, v5, :cond_3c

    .line 767
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 768
    .local v2, start:I
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 770
    .local v0, end:I
    if-ltz v2, :cond_39

    .line 771
    aget-object v5, p2, v1

    invoke-virtual {v3, v2, v0, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 766
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 775
    .end local v0           #end:I
    .end local v2           #start:I
    :cond_3c
    return-object v3
.end method

.method private static setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;III)F
    .registers 14
    .parameter "mt"
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "bidiRequest"

    .prologue
    const/4 v7, 0x0

    .line 1167
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;III)V

    .line 1170
    instance-of v6, p2, Landroid/text/Spanned;

    if-eqz v6, :cond_14

    check-cast p2, Landroid/text/Spanned;

    .end local p2
    move-object v1, p2

    .line 1171
    .local v1, sp:Landroid/text/Spanned;
    :goto_b
    sub-int v0, p4, p3

    .line 1172
    .local v0, len:I
    if-nez v1, :cond_16

    .line 1173
    invoke-virtual {p0, p1, v0, v7}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v5

    .line 1186
    .local v5, width:F
    :cond_13
    return v5

    .end local v0           #len:I
    .end local v1           #sp:Landroid/text/Spanned;
    .end local v5           #width:F
    .restart local p2
    :cond_14
    move-object v1, v7

    .line 1170
    goto :goto_b

    .line 1175
    .end local p2
    .restart local v0       #len:I
    .restart local v1       #sp:Landroid/text/Spanned;
    :cond_16
    const/4 v5, 0x0

    .line 1177
    .restart local v5       #width:F
    const/4 v3, 0x0

    .local v3, spanStart:I
    :goto_18
    if-ge v3, v0, :cond_13

    .line 1178
    const-class v6, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v3, v0, v6}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 1180
    .local v2, spanEnd:I
    const-class v6, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v3, v2, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 1182
    .local v4, spans:[Landroid/text/style/MetricAffectingSpan;
    sub-int v6, v2, v3

    invoke-virtual {p0, p1, v4, v6, v7}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v6

    add-float/2addr v5, v6

    .line 1177
    move v3, v2

    goto :goto_18
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter "text"
    .parameter "expression"

    .prologue
    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 309
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 311
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .registers 3
    .parameter "text"
    .parameter "pattern"

    .prologue
    .line 325
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 326
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 328
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "source"

    .prologue
    .line 409
    if-nez p0, :cond_4

    .line 410
    const/4 v0, 0x0

    .line 416
    :goto_3
    return-object v0

    .line 411
    :cond_4
    instance-of v0, p0, Landroid/text/SpannedString;

    if-eqz v0, :cond_a

    move-object v0, p0

    .line 412
    goto :goto_3

    .line 413
    :cond_a
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_14

    .line 414
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 416
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 7
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    .line 244
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 245
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 256
    :goto_b
    return-object v2

    .line 246
    .restart local p0
    :cond_c
    instance-of v2, p0, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_17

    .line 247
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 248
    .restart local p0
    :cond_17
    instance-of v2, p0, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_22

    .line 249
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 251
    .restart local p0
    :cond_22
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 252
    .local v1, temp:[C
    invoke-static {p0, p1, p2, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 253
    new-instance v0, Ljava/lang/String;

    sub-int v2, p2, p1

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    .line 254
    .local v0, ret:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    move-object v2, v0

    .line 256
    goto :goto_b
.end method

.method public static writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .registers 13
    .parameter "cs"
    .parameter "p"
    .parameter "parcelableFlags"

    .prologue
    const/4 v9, 0x0

    .line 573
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_4b

    .line 574
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 577
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v6, v0

    .line 578
    .local v6, sp:Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Ljava/lang/Object;

    invoke-interface {v6, v9, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 585
    .local v3, os:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1e
    array-length v7, v3

    if-ge v1, v7, :cond_47

    .line 586
    aget-object v2, v3, v1

    .line 587
    .local v2, o:Ljava/lang/Object;
    aget-object v4, v3, v1

    .line 589
    .local v4, prop:Ljava/lang/Object;
    instance-of v7, v4, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_2f

    .line 590
    check-cast v4, Landroid/text/style/CharacterStyle;

    .end local v4           #prop:Ljava/lang/Object;
    invoke-virtual {v4}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v4

    .line 593
    :cond_2f
    instance-of v7, v4, Landroid/text/ParcelableSpan;

    if-eqz v7, :cond_44

    .line 594
    move-object v0, v4

    check-cast v0, Landroid/text/ParcelableSpan;

    move-object v5, v0

    .line 595
    .local v5, ps:Landroid/text/ParcelableSpan;
    invoke-interface {v5}, Landroid/text/ParcelableSpan;->getSpanTypeId()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    invoke-interface {v5, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 597
    invoke-static {p1, v6, v2}, Landroid/text/TextUtils;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    .line 585
    .end local v5           #ps:Landroid/text/ParcelableSpan;
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 601
    .end local v2           #o:Ljava/lang/Object;
    :cond_47
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    .end local v1           #i:I
    .end local v3           #os:[Ljava/lang/Object;
    .end local v6           #sp:Landroid/text/Spanned;
    :goto_4a
    return-void

    .line 603
    :cond_4b
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    if-eqz p0, :cond_59

    .line 605
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4a

    .line 607
    :cond_59
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4a
.end method

.method private static writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .registers 4
    .parameter "p"
    .parameter "sp"
    .parameter "o"

    .prologue
    .line 613
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    return-void
.end method
