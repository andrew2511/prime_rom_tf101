.class public Lcom/android/providers/contacts/ContactLookupKey;
.super Ljava/lang/Object;
.source "ContactLookupKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static appendEscapedSourceId(Ljava/lang/StringBuilder;Ljava/lang/String;)Z
    .locals 4
    .parameter "sb"
    .parameter "sourceId"

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, escaped:Z
    const/4 v2, 0x0

    .line 90
    .local v2, start:I
    :goto_0
    const/16 v3, 0x2e

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 91
    .local v1, index:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 101
    return v0

    .line 96
    :cond_0
    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0, p1, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 98
    const-string v3, ".."

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v2, v1, 0x1

    .line 100
    goto :goto_0
.end method

.method public static appendToLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "lookupKey"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "rawContactId"
    .parameter "sourceId"
    .parameter "displayName"

    .prologue
    .line 65
    if-nez p6, :cond_0

    .line 66
    const-string p6, ""

    .line 69
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_1
    invoke-static {p1, p2}, Lcom/android/providers/contacts/ContactLookupKey;->getAccountHashCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    if-nez p5, :cond_3

    .line 75
    const/16 v1, 0x72

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_2
    :goto_0
    return-void

    .line 78
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 79
    .local v0, pos:I
    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    invoke-static {p0, p5}, Lcom/android/providers/contacts/ContactLookupKey;->appendEscapedSourceId(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_0
.end method

.method public static getAccountHashCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    .line 56
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xfff

    goto :goto_0
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .parameter "lookupKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;>;"
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 108
    .local v17, string:Ljava/lang/String;
    const/4 v11, 0x0

    .line 109
    .local v11, offset:I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v8

    .line 110
    .local v8, length:I
    const/4 v6, 0x0

    .line 111
    .local v6, hashCode:I
    const/4 v10, -0x1

    .line 112
    .local v10, lookupType:I
    const/4 v5, 0x0

    .line 113
    .local v5, escaped:Z
    const/4 v13, 0x0

    .line 116
    .local v13, rawContactId:Ljava/lang/String;
    :goto_0
    if-ge v11, v8, :cond_12

    .line 117
    const/4 v3, 0x0

    .line 120
    .local v3, c:C
    const/4 v6, 0x0

    move v12, v11

    .line 121
    .end local v11           #offset:I
    .local v12, offset:I
    :goto_1
    if-ge v12, v8, :cond_17

    .line 122
    add-int/lit8 v11, v12, 0x1

    .end local v12           #offset:I
    .restart local v11       #offset:I
    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 123
    const/16 v18, 0x30

    move v0, v3

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    const/16 v18, 0x39

    move v0, v3

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 130
    :cond_0
    :goto_2
    const/16 v18, 0x69

    move v0, v3

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 131
    const/4 v10, 0x0

    .line 132
    const/4 v5, 0x0

    .line 145
    :goto_3
    packed-switch v10, :pswitch_data_0

    .line 227
    new-instance v18, Ljava/lang/IllegalStateException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalStateException;-><init>()V

    throw v18

    .line 126
    :cond_1
    mul-int/lit8 v18, v6, 0xa

    const/16 v19, 0x30

    sub-int v19, v3, v19

    add-int v6, v18, v19

    move v12, v11

    .end local v11           #offset:I
    .restart local v12       #offset:I
    goto :goto_1

    .line 133
    .end local v12           #offset:I
    .restart local v11       #offset:I
    :cond_2
    const/16 v18, 0x65

    move v0, v3

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 134
    const/4 v10, 0x0

    .line 135
    const/4 v5, 0x1

    goto :goto_3

    .line 136
    :cond_3
    const/16 v18, 0x6e

    move v0, v3

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 137
    const/4 v10, 0x1

    goto :goto_3

    .line 138
    :cond_4
    const/16 v18, 0x72

    move v0, v3

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 139
    const/4 v10, 0x2

    goto :goto_3

    .line 141
    :cond_5
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid lookup id: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 147
    :pswitch_0
    if-eqz v5, :cond_a

    .line 148
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .local v14, sb:Ljava/lang/StringBuffer;
    move v12, v11

    .line 149
    .end local v11           #offset:I
    .restart local v12       #offset:I
    :goto_4
    if-ge v12, v8, :cond_8

    .line 150
    add-int/lit8 v11, v12, 0x1

    .end local v12           #offset:I
    .restart local v11       #offset:I
    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 152
    const/16 v18, 0x2e

    move v0, v3

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 153
    if-ne v11, v8, :cond_6

    .line 154
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid lookup id: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 157
    :cond_6
    move-object/from16 v0, v17

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 159
    const/16 v18, 0x2e

    move v0, v3

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 160
    const/16 v18, 0x2e

    move-object v0, v14

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    add-int/lit8 v11, v11, 0x1

    move v12, v11

    .end local v11           #offset:I
    .restart local v12       #offset:I
    goto :goto_4

    .line 166
    .end local v12           #offset:I
    .restart local v11       #offset:I
    :cond_7
    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v12, v11

    .end local v11           #offset:I
    .restart local v12       #offset:I
    goto :goto_4

    :cond_8
    move v11, v12

    .line 169
    .end local v12           #offset:I
    .restart local v11       #offset:I
    :cond_9
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 230
    .end local v14           #sb:Ljava/lang/StringBuffer;
    .local v7, key:Ljava/lang/String;
    :goto_5
    new-instance v15, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    invoke-direct {v15}, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;-><init>()V

    .line 231
    .local v15, segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    iput v6, v15, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->accountHashCode:I

    .line 232
    iput v10, v15, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    .line 233
    iput-object v13, v15, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->rawContactId:Ljava/lang/String;

    .line 234
    iput-object v7, v15, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    .line 235
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object v2, v15

    iput-wide v0, v2, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    .line 236
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 171
    .end local v7           #key:Ljava/lang/String;
    .end local v15           #segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    :cond_a
    move/from16 v16, v11

    .local v16, start:I
    move v12, v11

    .line 172
    .end local v11           #offset:I
    .restart local v12       #offset:I
    :goto_6
    if-ge v12, v8, :cond_16

    .line 173
    add-int/lit8 v11, v12, 0x1

    .end local v12           #offset:I
    .restart local v11       #offset:I
    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 174
    const/16 v18, 0x2e

    move v0, v3

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 178
    :goto_7
    if-ne v11, v8, :cond_b

    .line 179
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #key:Ljava/lang/String;
    goto :goto_5

    .line 181
    .end local v7           #key:Ljava/lang/String;
    :cond_b
    const/16 v18, 0x1

    sub-int v18, v11, v18

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #key:Ljava/lang/String;
    goto :goto_5

    .line 187
    .end local v7           #key:Ljava/lang/String;
    .end local v16           #start:I
    :pswitch_1
    move/from16 v16, v11

    .restart local v16       #start:I
    move v12, v11

    .line 188
    .end local v11           #offset:I
    .restart local v12       #offset:I
    :goto_8
    if-ge v12, v8, :cond_14

    .line 189
    add-int/lit8 v11, v12, 0x1

    .end local v12           #offset:I
    .restart local v11       #offset:I
    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 190
    const/16 v18, 0x2e

    move v0, v3

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 194
    :goto_9
    if-ne v11, v8, :cond_c

    .line 195
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #key:Ljava/lang/String;
    goto :goto_5

    .line 197
    .end local v7           #key:Ljava/lang/String;
    :cond_c
    const/16 v18, 0x1

    sub-int v18, v11, v18

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 199
    .restart local v7       #key:Ljava/lang/String;
    goto :goto_5

    .line 202
    .end local v7           #key:Ljava/lang/String;
    .end local v16           #start:I
    :pswitch_2
    const/4 v4, -0x1

    .line 203
    .local v4, dash:I
    move/from16 v16, v11

    .line 204
    .restart local v16       #start:I
    :cond_d
    if-ge v11, v8, :cond_f

    .line 205
    move-object/from16 v0, v17

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 206
    const/16 v18, 0x2d

    move v0, v3

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    const/16 v18, -0x1

    move v0, v4

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 207
    move v4, v11

    .line 209
    :cond_e
    add-int/lit8 v11, v11, 0x1

    .line 210
    const/16 v18, 0x2e

    move v0, v3

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 214
    :cond_f
    const/16 v18, -0x1

    move v0, v4

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    .line 215
    move-object/from16 v0, v17

    move/from16 v1, v16

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 216
    add-int/lit8 v16, v4, 0x1

    .line 218
    :cond_10
    if-ne v11, v8, :cond_11

    .line 219
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #key:Ljava/lang/String;
    goto/16 :goto_5

    .line 221
    .end local v7           #key:Ljava/lang/String;
    :cond_11
    const/16 v18, 0x1

    sub-int v18, v11, v18

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 223
    .restart local v7       #key:Ljava/lang/String;
    goto/16 :goto_5

    .line 239
    .end local v3           #c:C
    .end local v4           #dash:I
    .end local v7           #key:Ljava/lang/String;
    .end local v16           #start:I
    :cond_12
    return-object v9

    .restart local v3       #c:C
    .restart local v16       #start:I
    :cond_13
    move v12, v11

    .end local v11           #offset:I
    .restart local v12       #offset:I
    goto :goto_8

    :cond_14
    move v11, v12

    .end local v12           #offset:I
    .restart local v11       #offset:I
    goto :goto_9

    :cond_15
    move v12, v11

    .end local v11           #offset:I
    .restart local v12       #offset:I
    goto/16 :goto_6

    :cond_16
    move v11, v12

    .end local v12           #offset:I
    .restart local v11       #offset:I
    goto/16 :goto_7

    .end local v11           #offset:I
    .end local v16           #start:I
    .restart local v12       #offset:I
    :cond_17
    move v11, v12

    .end local v12           #offset:I
    .restart local v11       #offset:I
    goto/16 :goto_2

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
