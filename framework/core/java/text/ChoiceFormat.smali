.class public Ljava/text/ChoiceFormat;
.super Ljava/text/NumberFormat;
.source "ChoiceFormat.java"


# static fields
.field private static final serialVersionUID:J = 0x18e9c6bee365b604L


# instance fields
.field private choiceFormats:[Ljava/lang/String;

.field private choiceLimits:[D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "template"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 111
    invoke-virtual {p0, p1}, Ljava/text/ChoiceFormat;->applyPattern(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>([D[Ljava/lang/String;)V
    .registers 3
    .parameter "limits"
    .parameter "formats"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 98
    invoke-virtual {p0, p1, p2}, Ljava/text/ChoiceFormat;->setChoices([D[Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static final nextDouble(D)D
    .registers 10
    .parameter "value"

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    .line 314
    const-wide/high16 v2, 0x7ff0

    cmpl-double v2, p0, v2

    if-nez v2, :cond_c

    move-wide v2, p0

    .line 324
    :goto_b
    return-wide v2

    .line 319
    :cond_c
    cmpl-double v2, p0, v4

    if-nez v2, :cond_1d

    .line 320
    const-wide/16 v0, 0x0

    .line 324
    .local v0, bits:J
    :goto_12
    cmpg-double v2, p0, v4

    if-gez v2, :cond_22

    sub-long v2, v0, v6

    :goto_18
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    goto :goto_b

    .line 322
    .end local v0           #bits:J
    :cond_1d
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .restart local v0       #bits:J
    goto :goto_12

    .line 324
    :cond_22
    add-long v2, v0, v6

    goto :goto_18
.end method

.method public static nextDouble(DZ)D
    .registers 5
    .parameter "value"
    .parameter "increment"

    .prologue
    .line 339
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Ljava/text/ChoiceFormat;->nextDouble(D)D

    move-result-wide v0

    :goto_6
    return-wide v0

    :cond_7
    invoke-static {p0, p1}, Ljava/text/ChoiceFormat;->previousDouble(D)D

    move-result-wide v0

    goto :goto_6
.end method

.method public static final previousDouble(D)D
    .registers 10
    .parameter "value"

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    .line 396
    const-wide/high16 v2, -0x10

    cmpl-double v2, p0, v2

    if-nez v2, :cond_c

    move-wide v2, p0

    .line 406
    :goto_b
    return-wide v2

    .line 401
    :cond_c
    cmpl-double v2, p0, v4

    if-nez v2, :cond_1d

    .line 402
    const-wide/high16 v0, -0x8000

    .line 406
    .local v0, bits:J
    :goto_12
    cmpg-double v2, p0, v4

    if-gtz v2, :cond_22

    add-long v2, v0, v6

    :goto_18
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    goto :goto_b

    .line 404
    .end local v0           #bits:J
    :cond_1d
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .restart local v0       #bits:J
    goto :goto_12

    .line 406
    :cond_22
    sub-long v2, v0, v6

    goto :goto_18
.end method

.method private skipWhitespace(Ljava/lang/String;I)I
    .registers 5
    .parameter "string"
    .parameter "index"

    .prologue
    .line 436
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 437
    .local v0, length:I
    :goto_4
    if-ge p2, v0, :cond_13

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 438
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 440
    :cond_13
    return p2
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .registers 26
    .parameter "template"

    .prologue
    .line 124
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [D

    move-object v15, v0

    .line 125
    .local v15, limits:[D
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v8, formats:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    .local v12, length:I
    const/4 v13, 0x0

    .local v13, limitCount:I
    const/4 v10, 0x0

    .line 127
    .local v10, index:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    .local v5, buffer:Ljava/lang/StringBuffer;
    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {v21 .. v21}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v7

    .line 129
    .local v7, format:Ljava/text/NumberFormat;
    new-instance v19, Ljava/text/ParsePosition;

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 131
    .local v19, position:Ljava/text/ParsePosition;
    :goto_28
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    invoke-direct {v0, v1, v2}, Ljava/text/ChoiceFormat;->skipWhitespace(Ljava/lang/String;I)I

    move-result v10

    .line 132
    if-lt v10, v12, :cond_8d

    .line 133
    move-object v0, v15

    array-length v0, v0

    move/from16 v21, v0

    move v0, v13

    move/from16 v1, v21

    if-ne v0, v1, :cond_6c

    .line 134
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 139
    :goto_41
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 140
    const/4 v9, 0x0

    .end local p1
    .local v9, i:I
    :goto_52
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v21

    move v0, v9

    move/from16 v1, v21

    if-ge v0, v1, :cond_c8

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    aput-object p1, v21, v9

    .line 140
    add-int/lit8 v9, v9, 0x1

    goto :goto_52

    .line 136
    .end local v9           #i:I
    .restart local p1
    :cond_6c
    move v0, v13

    new-array v0, v0, [D

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 137
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object v0, v15

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    move v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_41

    .line 146
    :cond_8d
    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 147
    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v20

    .line 148
    .local v20, value:Ljava/lang/Number;
    invoke-virtual/range {v19 .. v19}, Ljava/text/ParsePosition;->getIndex()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/text/ChoiceFormat;->skipWhitespace(Ljava/lang/String;I)I

    move-result v10

    .line 149
    invoke-virtual/range {v19 .. v19}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b8

    if-lt v10, v12, :cond_c9

    .line 151
    :cond_b8
    sget-object v21, Llibcore/util/EmptyArray;->DOUBLE:[D

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 152
    sget-object v21, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 153
    .end local v20           #value:Ljava/lang/Number;
    .end local p1
    :cond_c8
    return-void

    .line 155
    .restart local v20       #value:Ljava/lang/Number;
    .restart local p1
    :cond_c9
    add-int/lit8 v11, v10, 0x1

    .end local v10           #index:I
    .local v11, index:I
    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 156
    .local v6, ch:C
    move-object v0, v15

    array-length v0, v0

    move/from16 v21, v0

    move v0, v13

    move/from16 v1, v21

    if-ne v0, v1, :cond_f4

    .line 157
    mul-int/lit8 v21, v13, 0x2

    move/from16 v0, v21

    new-array v0, v0, [D

    move-object/from16 v16, v0

    .line 158
    .local v16, newLimits:[D
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v15

    move/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v22

    move v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    move-object/from16 v15, v16

    .line 162
    .end local v16           #newLimits:[D
    :cond_f4
    sparse-switch v6, :sswitch_data_14c

    .line 171
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 165
    :sswitch_fd
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    .line 173
    .local v17, next:D
    :goto_101
    if-lez v13, :cond_11c

    const/16 v21, 0x1

    sub-int v21, v13, v21

    aget-wide v21, v15, v21

    cmpg-double v21, v17, v21

    if-gtz v21, :cond_11c

    .line 174
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 168
    .end local v17           #next:D
    :sswitch_113
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/text/ChoiceFormat;->nextDouble(D)D

    move-result-wide v17

    .line 169
    .restart local v17       #next:D
    goto :goto_101

    .line 176
    :cond_11c
    const/16 v21, 0x0

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 177
    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 178
    const/16 v21, 0x7c

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object v2, v5

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Ljava/text/ChoiceFormat;->upTo(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;C)Z

    .line 179
    invoke-virtual/range {v19 .. v19}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    .line 180
    .end local v11           #index:I
    .restart local v10       #index:I
    add-int/lit8 v14, v13, 0x1

    .end local v13           #limitCount:I
    .local v14, limitCount:I
    aput-wide v17, v15, v13

    .line 181
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v13, v14

    .line 182
    .end local v14           #limitCount:I
    .restart local v13       #limitCount:I
    goto/16 :goto_28

    .line 162
    nop

    :sswitch_data_14c
    .sparse-switch
        0x23 -> :sswitch_fd
        0x3c -> :sswitch_113
        0x2264 -> :sswitch_fd
    .end sparse-switch
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 195
    invoke-super {p0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/ChoiceFormat;

    .line 196
    .local v0, clone:Ljava/text/ChoiceFormat;
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 197
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    iput-object p0, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 198
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 214
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 221
    :goto_5
    return v2

    .line 217
    :cond_6
    instance-of v2, p1, Ljava/text/ChoiceFormat;

    if-nez v2, :cond_c

    move v2, v4

    .line 218
    goto :goto_5

    .line 220
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/text/ChoiceFormat;

    move-object v1, v0

    .line 221
    .local v1, choice:Ljava/text/ChoiceFormat;
    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    iget-object v3, v1, Ljava/text/ChoiceFormat;->choiceLimits:[D

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    iget-object v3, v1, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    move v2, v5

    goto :goto_5

    :cond_26
    move v2, v4

    goto :goto_5
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 8
    .parameter "value"
    .parameter "buffer"
    .parameter "field"

    .prologue
    .line 240
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v1, v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_6
    if-ltz v0, :cond_1c

    .line 241
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v1, v1, v0

    cmpg-double v1, v1, p1

    if-gtz v1, :cond_19

    .line 242
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 245
    :goto_18
    return-object v1

    .line 240
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 245
    :cond_1c
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_23

    move-object v1, p3

    goto :goto_18

    :cond_23
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    goto :goto_18
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .parameter "value"
    .parameter "buffer"
    .parameter "field"

    .prologue
    .line 264
    long-to-double v0, p1

    invoke-virtual {p0, v0, v1, p3, p4}, Ljava/text/ChoiceFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getFormats()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    return-object v0
.end method

.method public getLimits()[D
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, hashCode:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v4, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v4, v4

    if-ge v1, v4, :cond_22

    .line 299
    iget-object v4, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 300
    .local v2, v:J
    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v4, v2

    long-to-int v4, v4

    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 302
    .end local v2           #v:J
    :cond_22
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 8
    .parameter "string"
    .parameter "position"

    .prologue
    .line 376
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 377
    .local v1, offset:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2d

    .line 378
    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 379
    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 380
    new-instance v2, Ljava/lang/Double;

    iget-object v3, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v3, v3, v0

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    .line 384
    :goto_29
    return-object v2

    .line 377
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 383
    :cond_2d
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 384
    new-instance v2, Ljava/lang/Double;

    const-wide/high16 v3, 0x7ff8

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    goto :goto_29
.end method

.method public setChoices([D[Ljava/lang/String;)V
    .registers 5
    .parameter "limits"
    .parameter "formats"

    .prologue
    .line 428
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_a

    .line 429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 431
    :cond_a
    iput-object p1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 432
    iput-object p2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 433
    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0x7c

    const/16 v7, 0x27

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v5, v5

    if-ge v1, v5, :cond_67

    .line 452
    if-eqz v1, :cond_14

    .line 453
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 455
    :cond_14
    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v5, v5, v1

    invoke-static {v5, v6}, Ljava/text/ChoiceFormat;->previousDouble(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, previous:Ljava/lang/String;
    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v5, v5, v1

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, limit:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_5b

    .line 458
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const/16 v5, 0x3c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    :goto_3a
    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_64

    const/4 v5, 0x1

    move v4, v5

    .line 465
    .local v4, quote:Z
    :goto_47
    if-eqz v4, :cond_4c

    .line 466
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 468
    :cond_4c
    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    if-eqz v4, :cond_58

    .line 470
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 461
    .end local v4           #quote:Z
    :cond_5b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const/16 v5, 0x23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 464
    :cond_64
    const/4 v5, 0x0

    move v4, v5

    goto :goto_47

    .line 473
    .end local v2           #limit:Ljava/lang/String;
    .end local v3           #previous:Ljava/lang/String;
    :cond_67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
