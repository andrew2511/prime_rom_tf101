.class public Lcom/android/providers/contacts/NameDistance;
.super Ljava/lang/Object;
.source "NameDistance.java"


# instance fields
.field private final mMatchFlags1:[Z

.field private final mMatchFlags2:[Z

.field private final mMaxLength:I

.field private final mPrefixOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/NameDistance;->mPrefixOnly:Z

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/NameDistance;->mMaxLength:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags2:[Z

    iput-object v0, p0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags1:[Z

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "maxLength"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/providers/contacts/NameDistance;->mMaxLength:I

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/NameDistance;->mPrefixOnly:Z

    .line 48
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags1:[Z

    .line 49
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags2:[Z

    .line 50
    return-void
.end method


# virtual methods
.method public getDistance([B[B)F
    .locals 22
    .parameter "bytes1"
    .parameter "bytes2"

    .prologue
    .line 67
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 68
    move-object/from16 v5, p1

    .line 69
    .local v5, array2:[B
    move-object/from16 v4, p2

    .line 75
    .local v4, array1:[B
    :goto_0
    array-length v11, v4

    .line 76
    .local v11, length1:I
    const/16 v19, 0x3

    move v0, v11

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 77
    const/4 v15, 0x1

    .line 78
    .local v15, prefix:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    move-object v0, v4

    array-length v0, v0

    move/from16 v19, v0

    move v0, v8

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 79
    aget-byte v19, v4, v8

    aget-byte v20, v5, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 80
    const/4 v15, 0x0

    .line 84
    :cond_0
    if-eqz v15, :cond_3

    .line 85
    const/high16 v19, 0x3f80

    .line 167
    .end local v8           #i:I
    .end local v15           #prefix:Z
    :goto_2
    return v19

    .line 71
    .end local v4           #array1:[B
    .end local v5           #array2:[B
    .end local v11           #length1:I
    :cond_1
    move-object/from16 v5, p2

    .line 72
    .restart local v5       #array2:[B
    move-object/from16 v4, p1

    .restart local v4       #array1:[B
    goto :goto_0

    .line 78
    .restart local v8       #i:I
    .restart local v11       #length1:I
    .restart local v15       #prefix:Z
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 89
    .end local v8           #i:I
    .end local v15           #prefix:Z
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/contacts/NameDistance;->mPrefixOnly:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 90
    const/16 v19, 0x0

    goto :goto_2

    .line 93
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/contacts/NameDistance;->mMaxLength:I

    move/from16 v19, v0

    move v0, v11

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    .line 94
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/contacts/NameDistance;->mMaxLength:I

    move v11, v0

    .line 97
    :cond_5
    array-length v12, v5

    .line 98
    .local v12, length2:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/contacts/NameDistance;->mMaxLength:I

    move/from16 v19, v0

    move v0, v12

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 99
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/contacts/NameDistance;->mMaxLength:I

    move v12, v0

    .line 102
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags1:[Z

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move v2, v11

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags2:[Z

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move v2, v12

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 105
    div-int/lit8 v19, v12, 0x2

    const/16 v20, 0x1

    sub-int v16, v19, v20

    .line 106
    .local v16, range:I
    if-gez v16, :cond_7

    .line 107
    const/16 v16, 0x0

    .line 110
    :cond_7
    const/4 v14, 0x0

    .line 111
    .local v14, matches:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3
    if-ge v8, v11, :cond_c

    .line 112
    aget-byte v6, v4, v8

    .line 114
    .local v6, c1:B
    sub-int v7, v8, v16

    .line 115
    .local v7, from:I
    if-gez v7, :cond_8

    .line 116
    const/4 v7, 0x0

    .line 119
    :cond_8
    add-int v19, v8, v16

    add-int/lit8 v17, v19, 0x1

    .line 120
    .local v17, to:I
    move/from16 v0, v17

    move v1, v12

    if-le v0, v1, :cond_9

    .line 121
    move/from16 v17, v12

    .line 124
    :cond_9
    move v9, v7

    .local v9, j:I
    :goto_4
    move v0, v9

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags2:[Z

    move-object/from16 v19, v0

    aget-boolean v19, v19, v9

    if-nez v19, :cond_b

    aget-byte v19, v5, v9

    move v0, v6

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags1:[Z

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags2:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aput-boolean v21, v20, v9

    aput-boolean v21, v19, v8

    .line 127
    add-int/lit8 v14, v14, 0x1

    .line 111
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 124
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 133
    .end local v6           #c1:B
    .end local v7           #from:I
    .end local v9           #j:I
    .end local v17           #to:I
    :cond_c
    if-nez v14, :cond_d

    .line 134
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 137
    :cond_d
    const/16 v18, 0x0

    .line 138
    .local v18, transpositions:I
    const/4 v9, 0x0

    .line 139
    .restart local v9       #j:I
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v11, :cond_11

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags1:[Z

    move-object/from16 v19, v0

    aget-boolean v19, v19, v8

    if-eqz v19, :cond_10

    .line 141
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags2:[Z

    move-object/from16 v19, v0

    aget-boolean v19, v19, v9

    if-nez v19, :cond_e

    .line 142
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 144
    :cond_e
    aget-byte v19, v4, v8

    aget-byte v20, v5, v9

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    .line 145
    add-int/lit8 v18, v18, 0x1

    .line 147
    :cond_f
    add-int/lit8 v9, v9, 0x1

    .line 139
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 151
    :cond_11
    int-to-float v13, v14

    .line 152
    .local v13, m:F
    move v0, v11

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v13, v19

    move v0, v12

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v13, v20

    add-float v19, v19, v20

    div-int/lit8 v20, v18, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v13, v20

    div-float v20, v20, v13

    add-float v19, v19, v20

    const/high16 v20, 0x4040

    div-float v10, v19, v20

    .line 154
    .local v10, jaro:F
    const v19, 0x3f333333

    cmpg-float v19, v10, v19

    if-gez v19, :cond_12

    move/from16 v19, v10

    .line 155
    goto/16 :goto_2

    .line 159
    :cond_12
    const/4 v15, 0x0

    .line 160
    .local v15, prefix:I
    const/4 v8, 0x0

    :goto_7
    if-ge v8, v11, :cond_13

    .line 161
    aget-byte v19, p1, v8

    aget-byte v20, p2, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_14

    .line 167
    :cond_13
    const v19, 0x3dcccccd

    const/high16 v20, 0x3f80

    move v0, v12

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    move v0, v15

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    const/high16 v20, 0x3f80

    sub-float v20, v20, v10

    mul-float v19, v19, v20

    add-float v19, v19, v10

    goto/16 :goto_2

    .line 164
    :cond_14
    add-int/lit8 v15, v15, 0x1

    .line 160
    add-int/lit8 v8, v8, 0x1

    goto :goto_7
.end method
