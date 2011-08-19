.class public Ljava/text/MessageFormat;
.super Ljava/text/Format;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/MessageFormat$Field;,
        Ljava/text/MessageFormat$FieldContainer;
    }
.end annotation


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x59ea973e12bd01a8L


# instance fields
.field private argumentNumbers:[I

.field private formats:[Ljava/text/Format;

.field private locale:Ljava/util/Locale;

.field private transient maxArgumentIndex:I

.field private maxOffset:I

.field private transient strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 1237
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "argumentNumbers"

    const-class v4, [I

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "formats"

    const-class v4, [Ljava/text/Format;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "locale"

    const-class v4, Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maxOffset"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "offsets"

    const-class v4, [I

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "pattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/MessageFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "template"

    .prologue
    .line 372
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 373
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 3
    .parameter "template"
    .parameter "locale"

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 357
    iput-object p2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 358
    invoke-virtual {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private appendQuoted(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 8
    .parameter "buffer"
    .parameter "string"

    .prologue
    const/16 v4, 0x27

    .line 1224
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1225
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_25

    .line 1226
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1227
    .local v0, ch:C
    const/16 v3, 0x7b

    if-eq v0, v3, :cond_15

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_21

    .line 1228
    :cond_15
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1229
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1230
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1225
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1232
    :cond_21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 1235
    .end local v0           #ch:C
    :cond_25
    return-void
.end method

.method private decodeDecimalFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;
    .registers 4
    .parameter "buffer"
    .parameter "format"

    .prologue
    .line 1121
    const-string v0, ",number"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1122
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1134
    :goto_11
    const/4 v0, 0x0

    .end local p2
    :goto_12
    return-object v0

    .line 1124
    .restart local p2
    :cond_13
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1125
    const-string v0, ",integer"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 1126
    :cond_25
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1127
    const-string v0, ",currency"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 1128
    :cond_37
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1129
    const-string v0, ",percent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 1131
    :cond_49
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1132
    check-cast p2, Ljava/text/DecimalFormat;

    .end local p2
    invoke-virtual {p2}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method private decodeSimpleDateFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;
    .registers 8
    .parameter "buffer"
    .parameter "format"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1138
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v3, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1139
    const-string v0, ",time"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1165
    :goto_15
    const/4 v0, 0x0

    .end local p2
    :goto_16
    return-object v0

    .line 1140
    .restart local p2
    :cond_17
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v3, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1142
    const-string v0, ",date"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 1143
    :cond_29
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1145
    const-string v0, ",time,short"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 1146
    :cond_3b
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1148
    const-string v0, ",date,short"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 1149
    :cond_4d
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v2, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1151
    const-string v0, ",time,long"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 1152
    :cond_5f
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v2, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1154
    const-string v0, ",date,long"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 1155
    :cond_71
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1157
    const-string v0, ",time,full"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 1158
    :cond_83
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1160
    const-string v0, ",date,full"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 1162
    :cond_95
    const-string v0, ",date,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1163
    check-cast p2, Ljava/text/SimpleDateFormat;

    .end local p2
    invoke-virtual {p2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 733
    if-eqz p1, :cond_11

    .line 734
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_11

    .line 735
    aget-object v1, p1, v0

    if-nez v1, :cond_e

    .line 736
    const-string v1, "null"

    aput-object v1, p1, v0

    .line 734
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 740
    .end local v0           #i:I
    :cond_11
    new-instance v1, Ljava/text/MessageFormat;

    invoke-direct {v1, p0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private formatImpl([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;)Ljava/lang/StringBuffer;
    .registers 22
    .parameter "objects"
    .parameter "buffer"
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/Vector",
            "<",
            "Ljava/text/MessageFormat$FieldContainer;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .prologue
    .line 560
    .local p4, fields:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/text/MessageFormat$FieldContainer;>;"
    new-instance v15, Ljava/text/FieldPosition;

    const/4 v5, 0x0

    invoke-direct {v15, v5}, Ljava/text/FieldPosition;-><init>(I)V

    .line 561
    .local v15, passedField:Ljava/text/FieldPosition;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Ljava/text/MessageFormat;->maxOffset:I

    move v5, v0

    if-gt v13, v5, :cond_10a

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    move-object v5, v0

    aget-object v5, v5, v13

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .line 565
    .local v6, begin:I
    if-eqz p1, :cond_8d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    move-object v5, v0

    aget v5, v5, v13

    move-object/from16 v0, p1

    array-length v0, v0

    move v7, v0

    if-ge v5, v7, :cond_8d

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    move-object v5, v0

    aget v5, v5, v13

    aget-object v11, p1, v5

    .line 575
    .local v11, arg:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object v5, v0

    aget-object v12, v5, v13

    .line 576
    .local v12, format:Ljava/text/Format;
    if-eqz v12, :cond_42

    if-nez v11, :cond_4a

    .line 577
    :cond_42
    instance-of v5, v11, Ljava/lang/Number;

    if-eqz v5, :cond_bf

    .line 578
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v12

    .line 588
    :cond_4a
    :goto_4a
    instance-of v5, v12, Ljava/text/ChoiceFormat;

    if-eqz v5, :cond_e3

    .line 589
    invoke-virtual {v12, v11}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 590
    .local v16, result:Ljava/lang/String;
    new-instance v14, Ljava/text/MessageFormat;

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 591
    .local v14, mf:Ljava/text/MessageFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object v5, v0

    invoke-virtual {v14, v5}, Ljava/text/MessageFormat;->setLocale(Ljava/util/Locale;)V

    .line 592
    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Ljava/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 593
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    move-object v5, v0

    aget v8, v5, v13

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/Vector;)V

    .line 595
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v11

    move v3, v6

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/MessageFormat;->handleformat(Ljava/text/Format;Ljava/lang/Object;ILjava/util/Vector;)V

    .line 561
    .end local v11           #arg:Ljava/lang/Object;
    .end local v12           #format:Ljava/text/Format;
    .end local v14           #mf:Ljava/text/MessageFormat;
    .end local v16           #result:Ljava/lang/String;
    :goto_89
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .line 568
    :cond_8d
    const/16 v5, 0x7b

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    move-object v5, v0

    aget v5, v5, v13

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 570
    const/16 v5, 0x7d

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 571
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    move-object v5, v0

    aget v8, v5, v13

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/Vector;)V

    goto :goto_89

    .line 579
    .restart local v11       #arg:Ljava/lang/Object;
    .restart local v12       #format:Ljava/text/Format;
    :cond_bf
    instance-of v5, v11, Ljava/util/Date;

    if-eqz v5, :cond_c8

    .line 580
    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v12

    goto :goto_4a

    .line 582
    :cond_c8
    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 583
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    move-object v5, v0

    aget v8, v5, v13

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/Vector;)V

    goto :goto_89

    .line 597
    :cond_e3
    move-object v0, v12

    move-object v1, v11

    move-object/from16 v2, p2

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 598
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    move-object v5, v0

    aget v8, v5, v13

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/Vector;)V

    .line 600
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v11

    move v3, v6

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/MessageFormat;->handleformat(Ljava/text/Format;Ljava/lang/Object;ILjava/util/Vector;)V

    goto :goto_89

    .line 603
    .end local v6           #begin:I
    .end local v11           #arg:Ljava/lang/Object;
    .end local v12           #format:Ljava/text/Format;
    :cond_10a
    move-object/from16 v0, p0

    iget v0, v0, Ljava/text/MessageFormat;->maxOffset:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    move-object v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_12d

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/text/MessageFormat;->maxOffset:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 606
    :cond_12d
    return-object p2
.end method

.method private handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/Vector;)V
    .registers 9
    .parameter "begin"
    .parameter "end"
    .parameter "argIndex"
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/text/FieldPosition;",
            "Ljava/util/Vector",
            "<",
            "Ljava/text/MessageFormat$FieldContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 617
    .local p5, fields:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/text/MessageFormat$FieldContainer;>;"
    if-eqz p5, :cond_11

    .line 618
    new-instance v0, Ljava/text/MessageFormat$FieldContainer;

    sget-object v1, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Ljava/text/MessageFormat$FieldContainer;-><init>(IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    invoke-virtual {p5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_10
    :goto_10
    return-void

    .line 620
    :cond_11
    if-eqz p4, :cond_10

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    sget-object v1, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    if-ne v0, v1, :cond_10

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    if-nez v0, :cond_10

    .line 623
    invoke-virtual {p4, p1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 624
    invoke-virtual {p4, p2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_10
.end method

.method private handleformat(Ljava/text/Format;Ljava/lang/Object;ILjava/util/Vector;)V
    .registers 14
    .parameter "format"
    .parameter "arg"
    .parameter "begin"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/Format;",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/Vector",
            "<",
            "Ljava/text/MessageFormat$FieldContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 665
    .local p4, fields:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/text/MessageFormat$FieldContainer;>;"
    if-eqz p4, :cond_45

    .line 666
    invoke-virtual {p1, p2}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v3

    .line 668
    .local v3, iterator:Ljava/text/AttributedCharacterIterator;
    :goto_6
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v6

    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v7

    if-eq v6, v7, :cond_45

    .line 669
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getRunStart()I

    move-result v4

    .line 670
    .local v4, start:I
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v1

    .line 672
    .local v1, end:I
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 673
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    .line 674
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 676
    .local v0, attribute:Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-interface {v3, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v5

    .line 677
    .local v5, value:Ljava/lang/Object;
    new-instance v6, Ljava/text/MessageFormat$FieldContainer;

    add-int v7, p3, v4

    add-int v8, p3, v1

    invoke-direct {v6, v7, v8, v0, v5}, Ljava/text/MessageFormat$FieldContainer;-><init>(IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    invoke-virtual {p4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 680
    .end local v0           #attribute:Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v5           #value:Ljava/lang/Object;
    :cond_41
    invoke-interface {v3, v1}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    goto :goto_6

    .line 683
    .end local v1           #end:I
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v3           #iterator:Ljava/text/AttributedCharacterIterator;
    .end local v4           #start:I
    :cond_45
    return-void
.end method

.method private match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I
    .registers 16
    .parameter "string"
    .parameter "position"
    .parameter "last"
    .parameter "tokens"

    .prologue
    const/4 v10, -0x1

    .line 944
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .local v8, length:I
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .local v2, offset:I
    const/4 v9, -0x1

    .line 945
    .local v9, token:I
    :goto_a
    if-ge v2, v8, :cond_19

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 946
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 948
    :cond_19
    array-length v7, p4

    .local v7, i:I
    :cond_1a
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_30

    .line 949
    const/4 v1, 0x1

    aget-object v3, p4, v7

    const/4 v4, 0x0

    aget-object v0, p4, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 951
    move v9, v7

    .line 955
    :cond_30
    if-ne v9, v10, :cond_34

    move v0, v10

    .line 968
    :goto_33
    return v0

    .line 958
    :cond_34
    aget-object v0, p4, v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    .line 959
    :goto_3b
    if-ge v2, v8, :cond_4a

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 960
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 963
    :cond_4a
    if-ge v2, v8, :cond_61

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .local v6, ch:C
    const/16 v0, 0x7d

    if-eq v6, v0, :cond_5a

    if-nez p3, :cond_61

    const/16 v0, 0x2c

    if-ne v6, v0, :cond_61

    .line 965
    :cond_5a
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    move v0, v9

    .line 966
    goto :goto_33

    .end local v6           #ch:C
    :cond_61
    move v0, v10

    .line 968
    goto :goto_33
.end method

.method private parseVariable(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/text/Format;
    .registers 15
    .parameter "string"
    .parameter "position"

    .prologue
    .line 972
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, length:I
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    .line 974
    .local v5, offset:I
    if-ge v5, v3, :cond_19

    add-int/lit8 v6, v5, 0x1

    .end local v5           #offset:I
    .local v6, offset:I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, ch:C
    const/16 v8, 0x7d

    if-eq v1, v8, :cond_21

    const/16 v8, 0x2c

    if-eq v1, v8, :cond_21

    move v5, v6

    .line 975
    .end local v1           #ch:C
    .end local v6           #offset:I
    .restart local v5       #offset:I
    :cond_19
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Missing element format"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 977
    .end local v5           #offset:I
    .restart local v1       #ch:C
    .restart local v6       #offset:I
    :cond_21
    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 978
    const/16 v8, 0x7d

    if-ne v1, v8, :cond_2a

    .line 979
    const/4 v8, 0x0

    .line 1046
    :goto_29
    return-object v8

    .line 981
    :cond_2a
    const/4 v8, 0x0

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "time"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "date"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "number"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "choice"

    aput-object v11, v9, v10

    invoke-direct {p0, p1, p2, v8, v9}, Ljava/text/MessageFormat;->match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I

    move-result v7

    .line 983
    .local v7, type:I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_51

    .line 984
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Unknown element format"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 986
    :cond_51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 987
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 988
    packed-switch v7, :pswitch_data_13a

    .line 1042
    const/16 v8, 0x7d

    const/16 v9, 0x7b

    :try_start_67
    invoke-static {p1, p2, v0, v8, v9}, Ljava/text/Format;->upToWithQuotes(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;CC)Z
    :try_end_6a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_67 .. :try_end_6a} :catch_136

    .line 1046
    :goto_6a
    new-instance v8, Ljava/text/ChoiceFormat;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V

    goto :goto_29

    .line 991
    :pswitch_74
    const/16 v8, 0x7d

    if-ne v1, v8, :cond_8b

    .line 992
    const/4 v8, 0x1

    if-ne v7, v8, :cond_83

    const/4 v8, 0x2

    iget-object v9, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8, v9}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v8

    goto :goto_29

    :cond_83
    const/4 v8, 0x2

    iget-object v9, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8, v9}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v8

    goto :goto_29

    .line 996
    :cond_8b
    const/4 v8, 0x1

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "full"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "long"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "medium"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "short"

    aput-object v11, v9, v10

    invoke-direct {p0, p1, p2, v8, v9}, Ljava/text/MessageFormat;->match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I

    move-result v2

    .line 998
    .local v2, dateStyle:I
    const/4 v8, -0x1

    if-ne v2, v8, :cond_be

    .line 999
    const/16 v8, 0x7d

    const/16 v9, 0x7b

    invoke-static {p1, p2, v0, v8, v9}, Ljava/text/Format;->upToWithQuotes(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;CC)Z

    .line 1000
    new-instance v8, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/16 :goto_29

    .line 1002
    :cond_be
    packed-switch v2, :pswitch_data_144

    .line 1016
    :goto_c1
    const/4 v8, 0x1

    if-ne v7, v8, :cond_d4

    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v2, v8}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v8

    goto/16 :goto_29

    .line 1004
    :pswitch_cc
    const/4 v2, 0x0

    .line 1005
    goto :goto_c1

    .line 1007
    :pswitch_ce
    const/4 v2, 0x1

    .line 1008
    goto :goto_c1

    .line 1010
    :pswitch_d0
    const/4 v2, 0x2

    .line 1011
    goto :goto_c1

    .line 1013
    :pswitch_d2
    const/4 v2, 0x3

    goto :goto_c1

    .line 1016
    :cond_d4
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v2, v8}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v8

    goto/16 :goto_29

    .line 1020
    .end local v2           #dateStyle:I
    :pswitch_dc
    const/16 v8, 0x7d

    if-ne v1, v8, :cond_e8

    .line 1022
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    goto/16 :goto_29

    .line 1025
    :cond_e8
    const/4 v8, 0x1

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "currency"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "percent"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "integer"

    aput-object v11, v9, v10

    invoke-direct {p0, p1, p2, v8, v9}, Ljava/text/MessageFormat;->match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I

    move-result v4

    .line 1027
    .local v4, numberStyle:I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_11b

    .line 1028
    const/16 v8, 0x7d

    const/16 v9, 0x7b

    invoke-static {p1, p2, v0, v8, v9}, Ljava/text/Format;->upToWithQuotes(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;CC)Z

    .line 1029
    new-instance v8, Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/text/DecimalFormatSymbols;

    iget-object v11, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-direct {v10, v11}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v8, v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    goto/16 :goto_29

    .line 1032
    :cond_11b
    packed-switch v4, :pswitch_data_150

    .line 1038
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    goto/16 :goto_29

    .line 1034
    :pswitch_126
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    goto/16 :goto_29

    .line 1036
    :pswitch_12e
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    goto/16 :goto_29

    .line 1043
    .end local v4           #numberStyle:I
    :catch_136
    move-exception v8

    goto/16 :goto_6a

    .line 988
    nop

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_74
        :pswitch_74
        :pswitch_dc
    .end packed-switch

    .line 1002
    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_cc
        :pswitch_ce
        :pswitch_d0
        :pswitch_d2
    .end packed-switch

    .line 1032
    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_126
        :pswitch_12e
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 13
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 1271
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 1272
    .local v1, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v7, "argumentNumbers"

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    check-cast v7, [I

    iput-object v7, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1273
    const-string v7, "formats"

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/text/Format;

    check-cast v7, [Ljava/text/Format;

    iput-object v7, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1274
    const-string v7, "locale"

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Locale;

    iput-object v7, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 1275
    const-string v7, "maxOffset"

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1276
    const-string v7, "offsets"

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    move-object v0, v7

    check-cast v0, [I

    move-object v5, v0

    .line 1277
    .local v5, offsets:[I
    const-string v7, "pattern"

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1279
    .local v6, pattern:Ljava/lang/String;
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gez v7, :cond_6b

    .line 1280
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_69

    move v4, v10

    .line 1285
    .local v4, length:I
    :goto_50
    new-array v7, v4, [Ljava/lang/String;

    iput-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    .line 1286
    const/4 v3, 0x0

    .line 1287
    .local v3, last:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_56
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v7, :cond_7d

    .line 1288
    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget v8, v5, v2

    invoke-virtual {v6, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 1289
    aget v3, v5, v2

    .line 1287
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .end local v2           #i:I
    .end local v3           #last:I
    .end local v4           #length:I
    :cond_69
    move v4, v9

    .line 1280
    goto :goto_50

    .line 1282
    :cond_6b
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    aget v8, v5, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_7b

    move v8, v10

    :goto_78
    add-int v4, v7, v8

    .restart local v4       #length:I
    goto :goto_50

    .end local v4           #length:I
    :cond_7b
    const/4 v8, 0x2

    goto :goto_78

    .line 1291
    .restart local v2       #i:I
    .restart local v3       #last:I
    .restart local v4       #length:I
    :cond_7d
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_96

    .line 1292
    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v8, v8

    sub-int/2addr v8, v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1295
    :cond_96
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 11
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1246
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 1247
    .local v1, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v7, "argumentNumbers"

    iget-object v8, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1248
    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1249
    .local v0, compatibleFormats:[Ljava/text/Format;
    const-string v7, "formats"

    invoke-virtual {v1, v7, v0}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1250
    const-string v7, "locale"

    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1251
    const-string v7, "maxOffset"

    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1252
    const/4 v3, 0x0

    .line 1253
    .local v3, offset:I
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v5, v7, 0x1

    .line 1254
    .local v5, offsetsLength:I
    new-array v4, v5, [I

    .line 1255
    .local v4, offsets:[I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1256
    .local v6, pattern:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2d
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v7, :cond_46

    .line 1257
    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v3, v7

    .line 1258
    aput v3, v4, v2

    .line 1259
    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 1261
    :cond_46
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_5a

    .line 1262
    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    :cond_5a
    const-string v7, "offsets"

    invoke-virtual {v1, v7, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1265
    const-string v7, "pattern"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1266
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1267
    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .registers 25
    .parameter "template"

    .prologue
    .line 384
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    .line 385
    .local v12, length:I
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 386
    .local v9, buffer:Ljava/lang/StringBuffer;
    new-instance v19, Ljava/text/ParsePosition;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Ljava/text/ParsePosition;-><init>(I)V

    .line 387
    .local v19, position:Ljava/text/ParsePosition;
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 388
    .local v14, localStrings:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 389
    .local v6, argCount:I
    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object v8, v0

    .line 390
    .local v8, args:[I
    const/4 v15, -0x1

    .line 391
    .local v15, maxArg:I
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 392
    .local v13, localFormats:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/text/Format;>;"
    :goto_23
    invoke-virtual/range {v19 .. v19}, Ljava/text/ParsePosition;->getIndex()I

    move-result v20

    move/from16 v0, v20

    move v1, v12

    if-ge v0, v1, :cond_f4

    .line 393
    const/16 v20, 0x7b

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object v2, v9

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Ljava/text/Format;->upTo(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;C)Z

    move-result v20

    if-eqz v20, :cond_e0

    .line 394
    const/4 v5, 0x0

    .line 395
    .local v5, arg:I
    invoke-virtual/range {v19 .. v19}, Ljava/text/ParsePosition;->getIndex()I

    move-result v17

    .line 396
    .local v17, offset:I
    move/from16 v0, v17

    move v1, v12

    if-lt v0, v1, :cond_4f

    .line 397
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "Invalid argument number"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .end local v17           #offset:I
    .local v10, ch:C
    .local v18, offset:I
    :cond_4d
    move/from16 v17, v18

    .line 401
    .end local v10           #ch:C
    .end local v18           #offset:I
    .restart local v17       #offset:I
    :cond_4f
    add-int/lit8 v18, v17, 0x1

    .end local v17           #offset:I
    .restart local v18       #offset:I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .restart local v10       #ch:C
    const/16 v20, 0x7d

    move v0, v10

    move/from16 v1, v20

    if-eq v0, v1, :cond_94

    const/16 v20, 0x2c

    move v0, v10

    move/from16 v1, v20

    if-eq v0, v1, :cond_94

    .line 402
    const/16 v20, 0x30

    move v0, v10

    move/from16 v1, v20

    if-ge v0, v1, :cond_7d

    const/16 v20, 0x39

    move v0, v10

    move/from16 v1, v20

    if-le v0, v1, :cond_7d

    .line 403
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "Invalid argument number"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 406
    :cond_7d
    mul-int/lit8 v20, v5, 0xa

    const/16 v21, 0x30

    sub-int v21, v10, v21

    add-int v5, v20, v21

    .line 408
    if-ltz v5, :cond_8c

    move/from16 v0, v18

    move v1, v12

    if-lt v0, v1, :cond_4d

    .line 409
    :cond_8c
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "Invalid argument number"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 412
    :cond_94
    add-int/lit8 v17, v18, -0x1

    .line 413
    .end local v18           #offset:I
    .restart local v17       #offset:I
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 414
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;->parseVariable(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/text/Format;

    move-result-object v20

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 415
    move-object v0, v8

    array-length v0, v0

    move/from16 v20, v0

    move v0, v6

    move/from16 v1, v20

    if-lt v0, v1, :cond_d8

    .line 416
    move-object v0, v8

    array-length v0, v0

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 417
    .local v16, newArgs:[I
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v8

    array-length v0, v0

    move/from16 v22, v0

    move-object v0, v8

    move/from16 v1, v20

    move-object/from16 v2, v16

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    move-object/from16 v8, v16

    .line 420
    .end local v16           #newArgs:[I
    :cond_d8
    add-int/lit8 v7, v6, 0x1

    .end local v6           #argCount:I
    .local v7, argCount:I
    aput v5, v8, v6

    .line 421
    if-le v5, v15, :cond_153

    .line 422
    move v15, v5

    move v6, v7

    .line 425
    .end local v5           #arg:I
    .end local v7           #argCount:I
    .end local v10           #ch:C
    .end local v17           #offset:I
    .restart local v6       #argCount:I
    :cond_e0
    :goto_e0
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 426
    const/16 v20, 0x0

    move-object v0, v9

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_23

    .line 428
    :cond_f4
    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    .line 429
    const/4 v11, 0x0

    .end local p1
    .local v11, i:I
    :goto_105
    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v20

    move v0, v11

    move/from16 v1, v20

    if-ge v0, v1, :cond_11f

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v14, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    aput-object p1, v20, v11

    .line 429
    add-int/lit8 v11, v11, 0x1

    goto :goto_105

    .line 432
    :cond_11f
    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 433
    move v0, v6

    new-array v0, v0, [Ljava/text/Format;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 434
    const/4 v11, 0x0

    :goto_130
    if-ge v11, v6, :cond_143

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object/from16 v20, v0

    invoke-virtual {v13, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/Format;

    aput-object p1, v20, v11

    .line 434
    add-int/lit8 v11, v11, 0x1

    goto :goto_130

    .line 437
    :cond_143
    const/16 v20, 0x1

    sub-int v20, v6, v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/text/MessageFormat;->maxOffset:I

    .line 438
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Ljava/text/MessageFormat;->maxArgumentIndex:I

    .line 439
    return-void

    .end local v6           #argCount:I
    .end local v11           #i:I
    .restart local v5       #arg:I
    .restart local v7       #argCount:I
    .restart local v10       #ch:C
    .restart local v17       #offset:I
    .restart local p1
    :cond_153
    move v6, v7

    .end local v7           #argCount:I
    .restart local v6       #argCount:I
    goto :goto_e0
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 450
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/MessageFormat;

    .line 451
    .local v1, clone:Ljava/text/MessageFormat;
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v3, v3

    new-array v0, v3, [Ljava/text/Format;

    .line 452
    .local v0, array:[Ljava/text/Format;
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v2, v3

    .local v2, i:I
    :cond_e
    :goto_e
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_25

    .line 453
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, v3, v2

    if-eqz v3, :cond_e

    .line 454
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/Format;

    aput-object v3, v0, v2

    goto :goto_e

    .line 457
    :cond_25
    iput-object v0, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 458
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "object"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 474
    if-ne p0, p1, :cond_6

    move v3, v6

    .line 491
    :goto_5
    return v3

    .line 477
    :cond_6
    instance-of v3, p1, Ljava/text/MessageFormat;

    if-nez v3, :cond_c

    move v3, v5

    .line 478
    goto :goto_5

    .line 480
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/text/MessageFormat;

    move-object v1, v0

    .line 481
    .local v1, format:Ljava/text/MessageFormat;
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    iget v4, v1, Ljava/text/MessageFormat;->maxOffset:I

    if-eq v3, v4, :cond_18

    move v3, v5

    .line 482
    goto :goto_5

    .line 486
    :cond_18
    const/4 v2, 0x0

    .local v2, i:I
    :goto_19
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v3, :cond_2c

    .line 487
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v3, v3, v2

    iget-object v4, v1, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_29

    move v3, v5

    .line 488
    goto :goto_5

    .line 486
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 491
    :cond_2c
    iget-object v3, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    iget-object v4, v1, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget-object v4, v1, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    iget-object v4, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    move v3, v6

    goto :goto_5

    :cond_4c
    move v3, v5

    goto :goto_5
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "object"
    .parameter "buffer"
    .parameter "field"

    .prologue
    .line 717
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Ljava/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "objects"
    .parameter "buffer"
    .parameter "field"

    .prologue
    .line 555
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/MessageFormat;->formatImpl([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 11
    .parameter "object"

    .prologue
    .line 512
    if-nez p1, :cond_8

    .line 513
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 516
    :cond_8
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 517
    .local v1, buffer:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 520
    .local v3, fields:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/text/MessageFormat$FieldContainer;>;"
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    new-instance v5, Ljava/text/FieldPosition;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-direct {p0, p1, v1, v5, v3}, Ljava/text/MessageFormat;->formatImpl([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;)Ljava/lang/StringBuffer;

    .line 523
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 526
    .local v0, as:Ljava/text/AttributedString;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_29
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_43

    .line 527
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/MessageFormat$FieldContainer;

    .line 528
    .local v2, fc:Ljava/text/MessageFormat$FieldContainer;
    iget-object v5, v2, Ljava/text/MessageFormat$FieldContainer;->attribute:Ljava/text/AttributedCharacterIterator$Attribute;

    iget-object v6, v2, Ljava/text/MessageFormat$FieldContainer;->value:Ljava/lang/Object;

    iget v7, v2, Ljava/text/MessageFormat$FieldContainer;->start:I

    iget v8, v2, Ljava/text/MessageFormat$FieldContainer;->end:I

    invoke-virtual {v0, v5, v6, v7, v8}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 526
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 532
    .end local v2           #fc:Ljava/text/MessageFormat$FieldContainer;
    :cond_43
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v5

    return-object v5
.end method

.method public getFormats()[Ljava/text/Format;
    .registers 2

    .prologue
    .line 749
    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    invoke-virtual {v0}, [Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/text/Format;

    return-object p0
.end method

.method public getFormatsByArgumentIndex()[Ljava/text/Format;
    .registers 5

    .prologue
    .line 760
    iget v2, p0, Ljava/text/MessageFormat;->maxArgumentIndex:I

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [Ljava/text/Format;

    .line 761
    .local v0, answer:[Ljava/text/Format;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_1a

    .line 762
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v2, v2, v1

    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, v3, v1

    aput-object v3, v0, v2

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 764
    :cond_1a
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 807
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 812
    const/4 v0, 0x0

    .line 813
    .local v0, hashCode:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v2, :cond_26

    .line 814
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v2, v2, v1

    iget-object v3, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 815
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v1

    if-eqz v2, :cond_23

    .line 816
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 813
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 819
    :cond_26
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3c

    .line 820
    iget-object v2, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 822
    :cond_3c
    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_48

    .line 823
    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    .line 825
    :goto_47
    return v2

    :cond_48
    move v2, v0

    goto :goto_47
.end method

.method public parse(Ljava/lang/String;)[Ljava/lang/Object;
    .registers 7
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 839
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 840
    .local v0, position:Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v1

    .line 841
    .local v1, result:[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_1c

    .line 842
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "Parse failure"

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 844
    :cond_1c
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
    .registers 15
    .parameter "string"
    .parameter "position"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 867
    if-nez p1, :cond_7

    .line 868
    sget-object v8, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 915
    :goto_6
    return-object v8

    .line 870
    :cond_7
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Ljava/text/ParsePosition;-><init>(I)V

    .line 871
    .local v2, internalPos:Ljava/text/ParsePosition;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 872
    .local v4, offset:I
    iget v8, p0, Ljava/text/MessageFormat;->maxArgumentIndex:I

    add-int/lit8 v8, v8, 0x1

    new-array v6, v8, [Ljava/lang/Object;

    .line 873
    .local v6, result:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v8, :cond_7c

    .line 874
    iget-object v8, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v7, v8, v1

    .line 875
    .local v7, sub:Ljava/lang/String;
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_2b

    .line 876
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v8, v10

    .line 877
    goto :goto_6

    .line 879
    :cond_2b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v4, v8

    .line 881
    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v0, v8, v1

    .line 882
    .local v0, format:Ljava/text/Format;
    if-nez v0, :cond_65

    .line 883
    add-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v9, v9

    if-ge v8, v9, :cond_5c

    .line 884
    iget-object v8, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    add-int/lit8 v9, v1, 0x1

    aget-object v8, v8, v9

    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 885
    .local v3, next:I
    if-ne v3, v11, :cond_4e

    .line 886
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v8, v10

    .line 887
    goto :goto_6

    .line 889
    :cond_4e
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 890
    .local v5, parse:Ljava/lang/String;
    move v4, v3

    .line 904
    .end local v3           #next:I
    .end local v5           #parse:Ljava/lang/String;
    :goto_53
    iget-object v8, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v8, v8, v1

    aput-object v5, v6, v8

    .line 873
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 892
    :cond_5c
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 893
    .restart local v5       #parse:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_53

    .line 896
    .end local v5           #parse:Ljava/lang/String;
    :cond_65
    invoke-virtual {v2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 897
    invoke-virtual {v0, p1, v2}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v5

    .line 898
    .local v5, parse:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v8

    if-eq v8, v11, :cond_77

    .line 899
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v8, v10

    .line 900
    goto :goto_6

    .line 902
    :cond_77
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    goto :goto_53

    .line 906
    .end local v0           #format:Ljava/text/Format;
    .end local v5           #parse:Ljava/lang/Object;
    .end local v7           #sub:Ljava/lang/String;
    :cond_7c
    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v9, v9

    if-ge v8, v9, :cond_9e

    .line 907
    iget-object v8, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget v9, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v9, v9, 0x1

    aget-object v7, v8, v9

    .line 908
    .restart local v7       #sub:Ljava/lang/String;
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_99

    .line 909
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v8, v10

    .line 910
    goto/16 :goto_6

    .line 912
    :cond_99
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v4, v8

    .line 914
    .end local v7           #sub:Ljava/lang/String;
    :cond_9e
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v8, v6

    .line 915
    goto/16 :goto_6
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .parameter "string"
    .parameter "position"

    .prologue
    .line 939
    invoke-virtual {p0, p1, p2}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setFormat(ILjava/text/Format;)V
    .registers 4
    .parameter "offset"
    .parameter "format"

    .prologue
    .line 1058
    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v0, p1

    .line 1059
    return-void
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .registers 5
    .parameter "argIndex"
    .parameter "format"

    .prologue
    .line 777
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_14

    .line 778
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_11

    .line 779
    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v1, v0

    .line 777
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 782
    :cond_14
    return-void
.end method

.method public setFormats([Ljava/text/Format;)V
    .registers 6
    .parameter "formats"

    .prologue
    .line 1068
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v1, v2

    .line 1069
    .local v1, min:I
    array-length v2, p1

    if-ge v2, v1, :cond_7

    .line 1070
    array-length v1, p1

    .line 1072
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_13

    .line 1073
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v0

    aput-object v3, v2, v0

    .line 1072
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1075
    :cond_13
    return-void
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .registers 6
    .parameter "formats"

    .prologue
    .line 792
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1d

    .line 793
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_1a

    .line 794
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_17

    .line 795
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v1

    aput-object v3, v2, v0

    .line 793
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 792
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 799
    .end local v0           #i:I
    :cond_1d
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 10
    .parameter "locale"

    .prologue
    const/4 v7, 0x0

    .line 1086
    iput-object p1, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 1087
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v3, :cond_49

    .line 1088
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v0, v3, v1

    .line 1101
    .local v0, format:Ljava/text/Format;
    instance-of v3, v0, Ljava/text/DecimalFormat;

    if-eqz v3, :cond_2e

    .line 1103
    :try_start_10
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    new-instance v4, Ljava/text/DecimalFormat;

    check-cast v0, Ljava/text/DecimalFormat;

    .end local v0           #format:Ljava/text/Format;
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v6, p1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v4, v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    aput-object v4, v3, v1
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_24} :catch_27

    .line 1087
    :cond_24
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1105
    :catch_27
    move-exception v3

    move-object v2, v3

    .line 1106
    .local v2, npe:Ljava/lang/NullPointerException;
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object v7, v3, v1

    goto :goto_24

    .line 1108
    .end local v2           #npe:Ljava/lang/NullPointerException;
    .restart local v0       #format:Ljava/text/Format;
    :cond_2e
    instance-of v3, v0, Ljava/text/SimpleDateFormat;

    if-eqz v3, :cond_24

    .line 1110
    :try_start_32
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    new-instance v4, Ljava/text/SimpleDateFormat;

    check-cast v0, Ljava/text/SimpleDateFormat;

    .end local v0           #format:Ljava/text/Format;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v4, v3, v1
    :try_end_41
    .catch Ljava/lang/NullPointerException; {:try_start_32 .. :try_end_41} :catch_42

    goto :goto_24

    .line 1112
    :catch_42
    move-exception v3

    move-object v2, v3

    .line 1113
    .restart local v2       #npe:Ljava/lang/NullPointerException;
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object v7, v3, v1

    goto :goto_24

    .line 1118
    .end local v2           #npe:Ljava/lang/NullPointerException;
    :cond_49
    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .registers 14

    .prologue
    const/16 v12, 0x7d

    const/16 v11, 0x7b

    .line 1174
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1175
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_a
    iget v10, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v4, v10, :cond_8b

    .line 1176
    iget-object v10, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-direct {p0, v0, v10}, Ljava/text/MessageFormat;->appendQuoted(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1177
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1178
    iget-object v10, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v10, v10, v4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1179
    iget-object v10, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, v10, v4

    .line 1180
    .local v3, format:Ljava/text/Format;
    const/4 v8, 0x0

    .line 1181
    .local v8, pattern:Ljava/lang/String;
    instance-of v10, v3, Ljava/text/ChoiceFormat;

    if-eqz v10, :cond_5e

    .line 1182
    const-string v10, ",choice,"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1183
    check-cast v3, Ljava/text/ChoiceFormat;

    .end local v3           #format:Ljava/text/Format;
    invoke-virtual {v3}, Ljava/text/ChoiceFormat;->toPattern()Ljava/lang/String;

    move-result-object v8

    .line 1191
    :cond_33
    :goto_33
    if-eqz v8, :cond_85

    .line 1192
    const/4 v9, 0x0

    .line 1193
    .local v9, quote:Z
    const/4 v5, 0x0

    .local v5, index:I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, length:I
    const/4 v2, 0x0

    .local v2, count:I
    move v6, v5

    .line 1194
    .end local v5           #index:I
    .local v6, index:I
    :goto_3d
    if-ge v6, v7, :cond_85

    .line 1195
    add-int/lit8 v5, v6, 0x1

    .end local v6           #index:I
    .restart local v5       #index:I
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1196
    .local v1, ch:C
    const/16 v10, 0x27

    if-ne v1, v10, :cond_4d

    .line 1197
    if-nez v9, :cond_7a

    const/4 v10, 0x1

    move v9, v10

    .line 1199
    :cond_4d
    :goto_4d
    if-nez v9, :cond_59

    .line 1200
    if-ne v1, v11, :cond_53

    .line 1201
    add-int/lit8 v2, v2, 0x1

    .line 1203
    :cond_53
    if-ne v1, v12, :cond_59

    .line 1204
    if-lez v2, :cond_7d

    .line 1205
    add-int/lit8 v2, v2, -0x1

    .line 1212
    :cond_59
    :goto_59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v6, v5

    .line 1213
    .end local v5           #index:I
    .restart local v6       #index:I
    goto :goto_3d

    .line 1184
    .end local v1           #ch:C
    .end local v2           #count:I
    .end local v6           #index:I
    .end local v7           #length:I
    .end local v9           #quote:Z
    .restart local v3       #format:Ljava/text/Format;
    :cond_5e
    instance-of v10, v3, Ljava/text/DecimalFormat;

    if-eqz v10, :cond_67

    .line 1185
    invoke-direct {p0, v0, v3}, Ljava/text/MessageFormat;->decodeDecimalFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;

    move-result-object v8

    goto :goto_33

    .line 1186
    :cond_67
    instance-of v10, v3, Ljava/text/SimpleDateFormat;

    if-eqz v10, :cond_70

    .line 1187
    invoke-direct {p0, v0, v3}, Ljava/text/MessageFormat;->decodeSimpleDateFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;

    move-result-object v8

    goto :goto_33

    .line 1188
    :cond_70
    if-eqz v3, :cond_33

    .line 1189
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Unknown format"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1197
    .end local v3           #format:Ljava/text/Format;
    .restart local v1       #ch:C
    .restart local v2       #count:I
    .restart local v5       #index:I
    .restart local v7       #length:I
    .restart local v9       #quote:Z
    :cond_7a
    const/4 v10, 0x0

    move v9, v10

    goto :goto_4d

    .line 1207
    :cond_7d
    const-string v10, "\'}"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1208
    const/16 v1, 0x27

    goto :goto_59

    .line 1215
    .end local v1           #ch:C
    .end local v2           #count:I
    .end local v5           #index:I
    .end local v7           #length:I
    .end local v9           #quote:Z
    :cond_85
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1175
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1217
    .end local v8           #pattern:Ljava/lang/String;
    :cond_8b
    iget v10, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v10, v10, 0x1

    iget-object v11, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v10, v11, :cond_9f

    .line 1218
    iget-object v10, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget v11, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v11, v11, 0x1

    aget-object v10, v10, v11

    invoke-direct {p0, v0, v10}, Ljava/text/MessageFormat;->appendQuoted(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1220
    :cond_9f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method
