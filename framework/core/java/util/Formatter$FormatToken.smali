.class Ljava/util/Formatter$FormatToken;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormatToken"
.end annotation


# static fields
.field static final DEFAULT_PRECISION:I = 0x6

.field static final FLAGS_UNSET:I = 0x0

.field static final FLAG_ZERO:I = 0x10

.field static final LAST_ARGUMENT_INDEX:I = -0x2

.field static final UNSET:I = -0x1


# instance fields
.field private argIndex:I

.field private conversionType:C

.field private dateSuffix:C

.field flagComma:Z

.field flagMinus:Z

.field flagParenthesis:Z

.field flagPlus:Z

.field flagSharp:Z

.field flagSpace:Z

.field flagZero:Z

.field private precision:I

.field private strFlags:Ljava/lang/StringBuilder;

.field private width:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1156
    iput v1, p0, Ljava/util/Formatter$FormatToken;->argIndex:I

    .line 1169
    const v0, 0xffff

    iput-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    .line 1172
    iput v1, p0, Ljava/util/Formatter$FormatToken;->precision:I

    .line 1173
    iput v1, p0, Ljava/util/Formatter$FormatToken;->width:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Formatter$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1145
    invoke-direct {p0}, Ljava/util/Formatter$FormatToken;-><init>()V

    return-void
.end method


# virtual methods
.method checkFlags(Ljava/lang/Object;)V
    .registers 16
    .parameter "arg"

    .prologue
    const/4 v12, -0x1

    .line 1287
    const/4 v1, 0x0

    .line 1288
    .local v1, allowComma:Z
    const/4 v2, 0x1

    .line 1289
    .local v2, allowMinus:Z
    const/4 v3, 0x0

    .line 1290
    .local v3, allowParenthesis:Z
    const/4 v4, 0x0

    .line 1291
    .local v4, allowPlus:Z
    const/4 v6, 0x0

    .line 1292
    .local v6, allowSharp:Z
    const/4 v7, 0x0

    .line 1293
    .local v7, allowSpace:Z
    const/4 v9, 0x0

    .line 1295
    .local v9, allowZero:Z
    const/4 v5, 0x1

    .line 1296
    .local v5, allowPrecision:Z
    const/4 v8, 0x1

    .line 1298
    .local v8, allowWidth:Z
    const/4 v0, 0x1

    .line 1299
    .local v0, allowArgument:Z
    iget-char v11, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    sparse-switch v11, :sswitch_data_130

    .line 1357
    invoke-virtual {p0}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v11

    throw v11

    .line 1303
    :sswitch_15
    const/4 v5, 0x0

    .line 1361
    :cond_16
    :goto_16
    :sswitch_16
    const/4 v10, 0x0

    .line 1362
    .local v10, mismatch:Ljava/lang/String;
    if-nez v1, :cond_67

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-eqz v11, :cond_67

    .line 1363
    const-string v10, ","

    .line 1377
    :cond_1f
    :goto_1f
    if-eqz v10, :cond_a5

    .line 1378
    iget-char v11, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    const/16 v12, 0x6e

    if-ne v11, v12, :cond_9d

    .line 1380
    new-instance v11, Ljava/util/IllegalFormatFlagsException;

    invoke-direct {v11, v10}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1308
    .end local v10           #mismatch:Ljava/lang/String;
    :sswitch_2d
    instance-of v11, p1, Ljava/util/Formattable;

    if-eqz v11, :cond_16

    .line 1309
    const/4 v6, 0x1

    goto :goto_16

    .line 1315
    :sswitch_33
    const/4 v9, 0x1

    move v7, v9

    move v4, v9

    move v3, v9

    move v1, v9

    .line 1316
    goto :goto_16

    .line 1318
    :sswitch_39
    const/4 v9, 0x1

    move v7, v9

    move v6, v9

    move v4, v9

    move v3, v9

    move v1, v9

    .line 1319
    goto :goto_16

    .line 1321
    :sswitch_40
    const/4 v9, 0x1

    move v7, v9

    move v6, v9

    move v4, v9

    move v3, v9

    .line 1322
    goto :goto_16

    .line 1324
    :sswitch_46
    const/4 v9, 0x1

    move v7, v9

    move v6, v9

    move v4, v9

    .line 1325
    goto :goto_16

    .line 1329
    :sswitch_4b
    const/4 v9, 0x1

    move v7, v9

    move v4, v9

    move v3, v9

    move v1, v9

    .line 1330
    const/4 v5, 0x0

    .line 1331
    goto :goto_16

    .line 1333
    :sswitch_52
    const/4 v9, 0x1

    move v6, v9

    .line 1334
    if-eqz p1, :cond_5a

    instance-of v11, p1, Ljava/math/BigInteger;

    if-eqz v11, :cond_5d

    .line 1335
    :cond_5a
    const/4 v7, 0x1

    move v4, v7

    move v3, v7

    .line 1337
    :cond_5d
    const/4 v5, 0x0

    .line 1338
    goto :goto_16

    .line 1343
    :sswitch_5f
    const/4 v2, 0x0

    .line 1344
    const/4 v8, 0x0

    move v5, v8

    move v0, v8

    .line 1345
    goto :goto_16

    .line 1348
    :sswitch_64
    const/4 v0, 0x0

    .line 1349
    const/4 v5, 0x0

    .line 1350
    goto :goto_16

    .line 1364
    .restart local v10       #mismatch:Ljava/lang/String;
    :cond_67
    if-nez v2, :cond_70

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    if-eqz v11, :cond_70

    .line 1365
    const-string v10, "-"

    goto :goto_1f

    .line 1366
    :cond_70
    if-nez v3, :cond_79

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v11, :cond_79

    .line 1367
    const-string v10, "("

    goto :goto_1f

    .line 1368
    :cond_79
    if-nez v4, :cond_82

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v11, :cond_82

    .line 1369
    const-string v10, "+"

    goto :goto_1f

    .line 1370
    :cond_82
    if-nez v6, :cond_8b

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v11, :cond_8b

    .line 1371
    const-string v10, "#"

    goto :goto_1f

    .line 1372
    :cond_8b
    if-nez v7, :cond_94

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v11, :cond_94

    .line 1373
    const-string v10, " "

    goto :goto_1f

    .line 1374
    :cond_94
    if-nez v9, :cond_1f

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v11, :cond_1f

    .line 1375
    const-string v10, "0"

    goto :goto_1f

    .line 1382
    :cond_9d
    new-instance v11, Ljava/util/FormatFlagsConversionMismatchException;

    iget-char v12, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    invoke-direct {v11, v10, v12}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v11

    .line 1387
    :cond_a5
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    if-nez v11, :cond_ad

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v11, :cond_cc

    :cond_ad
    iget v11, p0, Ljava/util/Formatter$FormatToken;->width:I

    if-ne v11, v12, :cond_cc

    .line 1388
    new-instance v11, Ljava/util/MissingFormatWidthException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-char v13, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1393
    :cond_cc
    if-nez v0, :cond_f3

    iget v11, p0, Ljava/util/Formatter$FormatToken;->argIndex:I

    if-eq v11, v12, :cond_f3

    .line 1394
    new-instance v11, Ljava/util/IllegalFormatFlagsException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-char v13, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " doesn\'t take an argument"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1399
    :cond_f3
    if-nez v5, :cond_101

    iget v11, p0, Ljava/util/Formatter$FormatToken;->precision:I

    if-eq v11, v12, :cond_101

    .line 1400
    new-instance v11, Ljava/util/IllegalFormatPrecisionException;

    iget v12, p0, Ljava/util/Formatter$FormatToken;->precision:I

    invoke-direct {v11, v12}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v11

    .line 1402
    :cond_101
    if-nez v8, :cond_10f

    iget v11, p0, Ljava/util/Formatter$FormatToken;->width:I

    if-eq v11, v12, :cond_10f

    .line 1403
    new-instance v11, Ljava/util/IllegalFormatWidthException;

    iget v12, p0, Ljava/util/Formatter$FormatToken;->width:I

    invoke-direct {v11, v12}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v11

    .line 1407
    :cond_10f
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v11, :cond_11f

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v11, :cond_11f

    .line 1408
    new-instance v11, Ljava/util/IllegalFormatFlagsException;

    const-string v12, "the \'+\' and \' \' flags are incompatible"

    invoke-direct {v11, v12}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1410
    :cond_11f
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    if-eqz v11, :cond_12f

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v11, :cond_12f

    .line 1411
    new-instance v11, Ljava/util/IllegalFormatFlagsException;

    const-string v12, "the \'-\' and \'0\' flags are incompatible"

    invoke-direct {v11, v12}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1413
    :cond_12f
    return-void

    .line 1299
    :sswitch_data_130
    .sparse-switch
        0x25 -> :sswitch_64
        0x41 -> :sswitch_46
        0x42 -> :sswitch_16
        0x43 -> :sswitch_15
        0x45 -> :sswitch_40
        0x47 -> :sswitch_33
        0x48 -> :sswitch_16
        0x53 -> :sswitch_2d
        0x54 -> :sswitch_15
        0x58 -> :sswitch_52
        0x61 -> :sswitch_46
        0x62 -> :sswitch_16
        0x63 -> :sswitch_15
        0x64 -> :sswitch_4b
        0x65 -> :sswitch_40
        0x66 -> :sswitch_39
        0x67 -> :sswitch_33
        0x68 -> :sswitch_16
        0x6e -> :sswitch_5f
        0x6f -> :sswitch_52
        0x73 -> :sswitch_2d
        0x74 -> :sswitch_15
        0x78 -> :sswitch_52
    .end sparse-switch
.end method

.method getArgIndex()I
    .registers 2

    .prologue
    .line 1188
    iget v0, p0, Ljava/util/Formatter$FormatToken;->argIndex:I

    return v0
.end method

.method getConversionType()C
    .registers 2

    .prologue
    .line 1266
    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    return v0
.end method

.method getDateSuffix()C
    .registers 2

    .prologue
    .line 1274
    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->dateSuffix:C

    return v0
.end method

.method getPrecision()I
    .registers 2

    .prologue
    .line 1204
    iget v0, p0, Ljava/util/Formatter$FormatToken;->precision:I

    return v0
.end method

.method getStrFlags()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1212
    iget-object v0, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method getWidth()I
    .registers 2

    .prologue
    .line 1196
    iget v0, p0, Ljava/util/Formatter$FormatToken;->width:I

    return v0
.end method

.method isDefault()Z
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 1179
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-nez v0, :cond_27

    iget v0, p0, Ljava/util/Formatter$FormatToken;->width:I

    if-ne v0, v1, :cond_27

    iget v0, p0, Ljava/util/Formatter$FormatToken;->precision:I

    if-ne v0, v1, :cond_27

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method isPrecisionSet()Z
    .registers 3

    .prologue
    .line 1184
    iget v0, p0, Ljava/util/Formatter$FormatToken;->precision:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method requireArgument()Z
    .registers 3

    .prologue
    .line 1282
    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    const/16 v1, 0x25

    if-eq v0, v1, :cond_e

    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method setArgIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 1192
    iput p1, p0, Ljava/util/Formatter$FormatToken;->argIndex:I

    .line 1193
    return-void
.end method

.method setConversionType(C)V
    .registers 2
    .parameter "c"

    .prologue
    .line 1270
    iput-char p1, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    .line 1271
    return-void
.end method

.method setDateSuffix(C)V
    .registers 2
    .parameter "c"

    .prologue
    .line 1278
    iput-char p1, p0, Ljava/util/Formatter$FormatToken;->dateSuffix:C

    .line 1279
    return-void
.end method

.method setFlag(I)Z
    .registers 6
    .parameter "ch"

    .prologue
    const/4 v3, 0x1

    .line 1220
    const/4 v0, 0x0

    .line 1221
    .local v0, dupe:Z
    sparse-switch p1, :sswitch_data_4a

    .line 1251
    const/4 v1, 0x0

    .line 1262
    :goto_6
    return v1

    .line 1223
    :sswitch_7
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagComma:Z

    .line 1224
    iput-boolean v3, p0, Ljava/util/Formatter$FormatToken;->flagComma:Z

    .line 1253
    :goto_b
    if-eqz v0, :cond_35

    .line 1256
    new-instance v1, Ljava/util/DuplicateFormatFlagsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/DuplicateFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1227
    :sswitch_17
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    .line 1228
    iput-boolean v3, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    goto :goto_b

    .line 1231
    :sswitch_1c
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    .line 1232
    iput-boolean v3, p0, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    goto :goto_b

    .line 1235
    :sswitch_21
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    .line 1236
    iput-boolean v3, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    goto :goto_b

    .line 1239
    :sswitch_26
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    .line 1240
    iput-boolean v3, p0, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    goto :goto_b

    .line 1243
    :sswitch_2b
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    .line 1244
    iput-boolean v3, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    goto :goto_b

    .line 1247
    :sswitch_30
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    .line 1248
    iput-boolean v3, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    goto :goto_b

    .line 1258
    :cond_35
    iget-object v1, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    if-nez v1, :cond_41

    .line 1259
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    .line 1261
    :cond_41
    iget-object v1, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v3

    .line 1262
    goto :goto_6

    .line 1221
    nop

    :sswitch_data_4a
    .sparse-switch
        0x20 -> :sswitch_2b
        0x23 -> :sswitch_26
        0x28 -> :sswitch_1c
        0x2b -> :sswitch_21
        0x2c -> :sswitch_7
        0x2d -> :sswitch_17
        0x30 -> :sswitch_30
    .end sparse-switch
.end method

.method setPrecision(I)V
    .registers 2
    .parameter "precise"

    .prologue
    .line 1208
    iput p1, p0, Ljava/util/Formatter$FormatToken;->precision:I

    .line 1209
    return-void
.end method

.method setWidth(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 1200
    iput p1, p0, Ljava/util/Formatter$FormatToken;->width:I

    .line 1201
    return-void
.end method

.method public unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;
    .registers 6

    .prologue
    .line 1416
    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    const/16 v1, 0x74

    if-eq v0, v1, :cond_c

    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    const/16 v1, 0x54

    if-ne v0, v1, :cond_2d

    .line 1417
    :cond_c
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    const-string v1, "%c%c"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-char v4, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-char v4, p0, Ljava/util/Formatter$FormatToken;->dateSuffix:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1420
    :cond_2d
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    iget-char v1, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
