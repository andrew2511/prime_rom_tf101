.class public Lcom/mobipocket/common/parser/AttributeStack;
.super Ljava/util/Stack;
.source "AttributeStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/parser/AttributeStack$1;,
        Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
    }
.end annotation


# static fields
.field private static final kgBasicHTMLColors:[I


# instance fields
.field public topComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mobipocket/common/parser/AttributeStack;->kgBasicHTMLColors:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xc0t 0xc0t 0xc0t 0x0t
        0x80t 0x80t 0x80t 0x0t
        0xfft 0xfft 0xfft 0x0t
        0x0t 0x0t 0x80t 0x0t
        0x0t 0x0t 0xfft 0x0t
        0x80t 0x0t 0x80t 0x0t
        0xfft 0x0t 0xfft 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0xfft 0x0t 0x0t
        0x0t 0x80t 0x80t 0x0t
        0x0t 0xfft 0xfft 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0x80t 0x80t 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/parser/AttributeStack;->topComplete:Z

    .line 38
    return-void
.end method

.method private static getEncodedAttributeValue(Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;)I
    .locals 11
    .parameter

    .prologue
    const/16 v6, 0x2d

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 152
    iget-object v0, p0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->value:Lcom/mobipocket/common/parser/StrDescriptor;

    if-nez v0, :cond_1

    .line 153
    iget v0, p0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->encodedValue:I

    .line 479
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    new-array v0, v9, [S

    aput-short v7, v0, v8

    .line 155
    iget-object v1, p0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->value:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v1, v9, v9}, Lcom/mobipocket/common/parser/StrDescriptor;->stripBlanks(ZZ)V

    .line 156
    new-instance v1, Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v2, p0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->value:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v1, v2}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>(Lcom/mobipocket/common/parser/StrDescriptor;)V

    .line 157
    iget-short v2, p0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->name:S

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :sswitch_0
    move v0, v7

    .line 479
    goto :goto_0

    .line 161
    :sswitch_1
    invoke-static {v1, v0}, Lcom/mobipocket/common/parser/TernaryTree;->findHtmlKeyword(Lcom/mobipocket/common/parser/StrDescriptor;[S)Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v7

    .line 162
    goto :goto_0

    .line 163
    :cond_3
    aget-short v0, v0, v8

    goto :goto_0

    .line 169
    :sswitch_2
    invoke-virtual {v1}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_a

    :cond_4
    invoke-virtual {v1, v8}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_a

    .line 172
    invoke-virtual {v1}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    .line 174
    invoke-virtual {v1, v9}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/mobipocket/common/parser/UnicodeWestern;->charToHex(C)I

    move-result v0

    if-eq v0, v7, :cond_5

    invoke-virtual {v1, v10}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/mobipocket/common/parser/UnicodeWestern;->charToHex(C)I

    move-result v2

    if-eq v2, v7, :cond_5

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/mobipocket/common/parser/UnicodeWestern;->charToHex(C)I

    move-result v1

    if-ne v1, v7, :cond_6

    :cond_5
    move v0, v7

    .line 177
    goto :goto_0

    .line 178
    :cond_6
    shl-int/lit8 v3, v0, 0x14

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v3, v2, 0xc

    or-int/2addr v0, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x4

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    goto :goto_0

    .line 184
    :cond_7
    invoke-virtual {v1, v9}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/mobipocket/common/parser/UnicodeWestern;->charToHex(C)I

    move-result v0

    if-eq v0, v7, :cond_8

    invoke-virtual {v1, v10}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/mobipocket/common/parser/UnicodeWestern;->charToHex(C)I

    move-result v2

    if-eq v2, v7, :cond_8

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/mobipocket/common/parser/UnicodeWestern;->charToHex(C)I

    move-result v3

    if-eq v3, v7, :cond_8

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/mobipocket/common/parser/UnicodeWestern;->charToHex(C)I

    move-result v4

    if-eq v4, v7, :cond_8

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/mobipocket/common/parser/UnicodeWestern;->charToHex(C)I

    move-result v5

    if-eq v5, v7, :cond_8

    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/mobipocket/common/parser/UnicodeWestern;->charToHex(C)I

    move-result v1

    if-ne v1, v7, :cond_9

    :cond_8
    move v0, v7

    .line 190
    goto/16 :goto_0

    .line 191
    :cond_9
    shl-int/lit8 v0, v0, 0x14

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v3, 0xc

    or-int/2addr v0, v2

    shl-int/lit8 v2, v4, 0x8

    or-int/2addr v0, v2

    shl-int/lit8 v2, v5, 0x4

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    goto/16 :goto_0

    .line 197
    :cond_a
    invoke-static {v1, v0}, Lcom/mobipocket/common/parser/TernaryTree;->findHtmlKeyword(Lcom/mobipocket/common/parser/StrDescriptor;[S)Z

    move-result v1

    if-nez v1, :cond_b

    move v0, v7

    .line 198
    goto/16 :goto_0

    .line 200
    :cond_b
    aget-short v1, v0, v8

    if-lt v1, v9, :cond_c

    aget-short v1, v0, v8

    const/16 v2, 0x10

    if-le v1, v2, :cond_d

    :cond_c
    move v0, v7

    .line 201
    goto/16 :goto_0

    .line 202
    :cond_d
    aget-short v0, v0, v8

    sub-int/2addr v0, v9

    .line 203
    sget-object v1, Lcom/mobipocket/common/parser/AttributeStack;->kgBasicHTMLColors:[I

    aget v0, v1, v0

    goto/16 :goto_0

    .line 215
    :sswitch_3
    invoke-virtual {v1}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v0

    .line 219
    if-eqz v0, :cond_12

    sub-int v2, v0, v9

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_12

    move v2, v9

    .line 220
    :goto_1
    if-lt v0, v10, :cond_13

    sub-int v3, v0, v10

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    const/16 v4, 0x70

    if-ne v3, v4, :cond_13

    sub-int v3, v0, v9

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    const/16 v4, 0x74

    if-eq v3, v4, :cond_e

    sub-int v3, v0, v9

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    const/16 v4, 0x78

    if-ne v3, v4, :cond_13

    :cond_e
    move v3, v9

    .line 224
    :goto_2
    if-lt v0, v10, :cond_14

    sub-int v4, v0, v10

    invoke-virtual {v1, v4}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    const/16 v5, 0x65

    if-ne v4, v5, :cond_14

    sub-int v4, v0, v9

    invoke-virtual {v1, v4}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    const/16 v5, 0x6d

    if-ne v4, v5, :cond_14

    move v4, v9

    .line 225
    :goto_3
    if-lez v0, :cond_15

    invoke-virtual {v1, v8}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-ne v5, v6, :cond_15

    move v5, v9

    .line 226
    :goto_4
    if-lez v0, :cond_16

    invoke-virtual {v1, v8}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_16

    move v6, v9

    .line 229
    :goto_5
    if-eqz v2, :cond_17

    .line 231
    sub-int/2addr v0, v9

    .line 242
    :cond_f
    :goto_6
    if-nez v5, :cond_10

    if-eqz v6, :cond_19

    .line 245
    :cond_10
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v9

    .line 251
    :goto_7
    invoke-virtual {v1, v0}, Lcom/mobipocket/common/parser/StrDescriptor;->addToStart(I)V

    .line 252
    invoke-virtual {v1, v3}, Lcom/mobipocket/common/parser/StrDescriptor;->setLength(I)V

    .line 253
    invoke-virtual {v1, v8, v9}, Lcom/mobipocket/common/parser/StrDescriptor;->stripBlanks(ZZ)V

    .line 254
    invoke-virtual {v1, v8}, Lcom/mobipocket/common/parser/StrDescriptor;->toInteger(I)I

    move-result v0

    .line 256
    if-eqz v5, :cond_11

    .line 258
    sub-int v0, v8, v0

    .line 260
    sget v1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->DIMUNIT_MASK:I

    sget v3, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->DEFAULTATTR_MASK:I

    or-int/2addr v1, v3

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    .line 264
    :cond_11
    if-eqz v2, :cond_1a

    .line 265
    sget v1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->PERCENT_VALUE:I

    or-int/2addr v0, v1

    goto/16 :goto_0

    :cond_12
    move v2, v8

    .line 219
    goto/16 :goto_1

    :cond_13
    move v3, v8

    .line 220
    goto :goto_2

    :cond_14
    move v4, v8

    .line 224
    goto :goto_3

    :cond_15
    move v5, v8

    .line 225
    goto :goto_4

    :cond_16
    move v6, v8

    .line 226
    goto :goto_5

    .line 233
    :cond_17
    if-nez v3, :cond_18

    if-eqz v4, :cond_f

    .line 235
    :cond_18
    sub-int/2addr v0, v10

    goto :goto_6

    :cond_19
    move v3, v0

    move v0, v8

    .line 249
    goto :goto_7

    .line 266
    :cond_1a
    if-eqz v4, :cond_0

    .line 267
    sget v1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->FONTHEIGHT_VALUE:I

    or-int/2addr v0, v1

    goto/16 :goto_0

    .line 282
    :sswitch_4
    invoke-virtual {v1}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v1, v8}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v0

    const/16 v2, 0x58

    if-ne v0, v2, :cond_1c

    :cond_1b
    move v0, v7

    .line 284
    goto/16 :goto_0

    .line 287
    :cond_1c
    invoke-virtual {v1, v8}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_1d

    invoke-virtual {v1, v8}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_1e

    :cond_1d
    move v0, v7

    .line 289
    goto/16 :goto_0

    .line 292
    :cond_1e
    invoke-virtual {v1, v8}, Lcom/mobipocket/common/parser/StrDescriptor;->toInteger(I)I

    move-result v0

    goto/16 :goto_0

    .line 309
    :sswitch_5
    invoke-virtual {v1, v8}, Lcom/mobipocket/common/parser/StrDescriptor;->toInteger(I)I

    move-result v0

    goto/16 :goto_0

    .line 313
    :sswitch_6
    invoke-virtual {v1}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v0

    .line 316
    if-eqz v0, :cond_2

    .line 320
    invoke-virtual {v1, v8}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_1f

    invoke-virtual {v1, v8}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_24

    .line 323
    :cond_1f
    add-int/lit8 v0, v8, 0x1

    move v2, v9

    .line 324
    :goto_8
    invoke-virtual {v1, v0}, Lcom/mobipocket/common/parser/StrDescriptor;->toInteger(I)I

    move-result v0

    .line 328
    if-ne v0, v7, :cond_20

    move v0, v7

    .line 330
    goto/16 :goto_0

    .line 333
    :cond_20
    if-eqz v2, :cond_0

    .line 335
    invoke-virtual {v1, v8}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_21

    .line 336
    sub-int v0, v8, v0

    .line 338
    :cond_21
    sget v1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->DIMUNIT_MASK:I

    sget v2, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->DEFAULTATTR_MASK:I

    or-int/2addr v1, v2

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    .line 339
    sget v1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->DEFAULTATTR_MASK:I

    or-int/2addr v0, v1

    goto/16 :goto_0

    .line 373
    :sswitch_7
    invoke-static {v1, v0}, Lcom/mobipocket/common/parser/TernaryTree;->findHtmlKeyword(Lcom/mobipocket/common/parser/StrDescriptor;[S)Z

    move-result v1

    if-nez v1, :cond_22

    move v0, v7

    .line 374
    goto/16 :goto_0

    .line 377
    :cond_22
    aget-short v0, v0, v8

    packed-switch v0, :pswitch_data_0

    move v0, v7

    .line 402
    goto/16 :goto_0

    :pswitch_0
    move v0, v8

    .line 381
    goto/16 :goto_0

    :pswitch_1
    move v0, v10

    .line 385
    goto/16 :goto_0

    .line 389
    :pswitch_2
    iget-short v0, p0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->name:S

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_23

    move v0, v7

    .line 391
    goto/16 :goto_0

    .line 395
    :pswitch_3
    const/4 v0, 0x3

    .line 396
    iget-short v1, p0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->name:S

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_0

    move v0, v7

    .line 398
    goto/16 :goto_0

    :cond_23
    move v0, v9

    goto/16 :goto_0

    :cond_24
    move v0, v8

    move v2, v8

    goto :goto_8

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_5
        0x33 -> :sswitch_1
        0x34 -> :sswitch_2
        0x35 -> :sswitch_2
        0x36 -> :sswitch_3
        0x37 -> :sswitch_3
        0x39 -> :sswitch_0
        0x3a -> :sswitch_5
        0x3b -> :sswitch_4
        0x3d -> :sswitch_5
        0x3e -> :sswitch_5
        0x3f -> :sswitch_5
        0x42 -> :sswitch_1
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_7
        0x69 -> :sswitch_5
        0x6d -> :sswitch_6
        0x6e -> :sswitch_5
        0x71 -> :sswitch_6
        0x7b -> :sswitch_7
        0x7c -> :sswitch_3
        0x7d -> :sswitch_3
        0x7e -> :sswitch_3
        0x7f -> :sswitch_3
        0x80 -> :sswitch_5
        0x81 -> :sswitch_5
        0x82 -> :sswitch_5
        0x83 -> :sswitch_5
        0x87 -> :sswitch_5
        0x88 -> :sswitch_2
    .end sparse-switch

    .line 377
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public attributeIntValue(S)I
    .locals 4
    .parameter "attrName"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/AttributeStack;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 122
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/parser/AttributeStack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;

    .line 124
    .local v1, value:Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
    iget-short v2, v1, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->name:S

    if-ne v2, p1, :cond_0

    .line 125
    invoke-static {v1}, Lcom/mobipocket/common/parser/AttributeStack;->getEncodedAttributeValue(Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;)I

    move-result v2

    .line 127
    .end local v1           #value:Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
    :goto_1
    return v2

    .line 119
    .restart local v1       #value:Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 127
    .end local v1           #value:Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public attributeNameAt(I)S
    .locals 2
    .parameter "index"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/parser/AttributeStack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;

    .line 93
    .local v0, value:Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
    iget-short v1, v0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->name:S

    return v1
.end method

.method public attributeStringValue(S)Ljava/lang/String;
    .locals 4
    .parameter "attrName"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/AttributeStack;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 136
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/parser/AttributeStack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;

    .line 138
    .local v1, value:Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
    iget-short v2, v1, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->name:S

    if-ne v2, p1, :cond_0

    .line 139
    iget-object v2, v1, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->value:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/StrDescriptor;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .end local v1           #value:Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
    :goto_1
    return-object v2

    .line 132
    .restart local v1       #value:Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 141
    .end local v1           #value:Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public cloneAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;
    .locals 5

    .prologue
    .line 487
    new-instance v2, Lcom/mobipocket/common/parser/AttributeStack;

    invoke-direct {v2}, Lcom/mobipocket/common/parser/AttributeStack;-><init>()V

    .line 488
    .local v2, cloned:Lcom/mobipocket/common/parser/AttributeStack;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/AttributeStack;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 492
    invoke-virtual {p0, v3}, Lcom/mobipocket/common/parser/AttributeStack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;

    .line 493
    .local v0, attr:Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
    invoke-static {v0}, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->access$200(Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;)Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;

    move-result-object v1

    .line 494
    .local v1, attrCloned:Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
    invoke-virtual {v2, v1}, Lcom/mobipocket/common/parser/AttributeStack;->addElement(Ljava/lang/Object;)V

    .line 488
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 497
    .end local v0           #attr:Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
    .end local v1           #attrCloned:Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
    :cond_0
    return-object v2
.end method

.method public peekAttributeName()S
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/AttributeStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;

    .line 101
    .local v0, value:Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
    iget-short v1, v0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->name:S

    return v1
.end method

.method public peekAttributeValue()Lcom/mobipocket/common/parser/StrDescriptor;
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/AttributeStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;

    .line 109
    .local v0, value:Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
    iget-object v1, v0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->value:Lcom/mobipocket/common/parser/StrDescriptor;

    return-object v1
.end method

.method public peekEncodedAttributeValue()I
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/AttributeStack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;

    invoke-static {p0}, Lcom/mobipocket/common/parser/AttributeStack;->getEncodedAttributeValue(Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;)I

    move-result v0

    return v0
.end method

.method public pushNewAttribute(S)V
    .locals 2
    .parameter

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/parser/AttributeStack;->topComplete:Z

    .line 78
    new-instance v0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;-><init>(SLcom/mobipocket/common/parser/AttributeStack$1;)V

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/parser/AttributeStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public pushNewDecodedAttribute(SI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/parser/AttributeStack;->topComplete:Z

    .line 84
    new-instance v0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;-><init>(SILcom/mobipocket/common/parser/AttributeStack$1;)V

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/parser/AttributeStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method
