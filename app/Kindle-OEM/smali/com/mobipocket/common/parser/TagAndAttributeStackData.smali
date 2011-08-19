.class public Lcom/mobipocket/common/parser/TagAndAttributeStackData;
.super Ljava/lang/Object;
.source "TagAndAttributeStackData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/parser/TagAndAttributeStackData$1;,
        Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;
    }
.end annotation


# static fields
.field public static final VA_AbsBottom:S = 0xas

.field public static final VA_AbsMiddle:S = 0x9s

.field public static final VA_BaseLine:S = 0x3s

.field public static final VA_Bottom:S = 0x2s

.field public static final VA_Default:S = 0x8s

.field public static final VA_LowerScript:S = 0x7s

.field public static final VA_Middle:S = 0x1s

.field public static final VA_SuperScript:S = 0x6s

.field public static final VA_TextBottom:S = 0x5s

.field public static final VA_TextTop:S = 0x4s

.field public static final VA_Top:S


# instance fields
.field nbTags:I

.field strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

.field tagAndAttributeStack:[I

.field topTagIndex:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .parameter "initialSize"

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    .line 97
    iput v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    .line 98
    iput v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    .line 99
    new-instance v0, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;-><init>(Lcom/mobipocket/common/parser/TagAndAttributeStackData$1;)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    .line 100
    return-void
.end method

.method constructor <init>(Lcom/mobipocket/common/parser/TagAndAttributeStackData;)V
    .locals 3
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iget v0, p1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    iput v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    .line 110
    iget v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    .line 111
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    if-ge v0, v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    iget-object v2, p1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    iget v0, p1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    iput v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    .line 114
    new-instance v0, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    iget-object v1, p1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;-><init>(Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;Lcom/mobipocket/common/parser/TagAndAttributeStackData$1;)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    .line 116
    return-void
.end method

.method constructor <init>([B)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 126
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    .line 128
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    .line 129
    iput v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    .line 130
    iput v6, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    .line 131
    new-instance v2, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;-><init>(Lcom/mobipocket/common/parser/TagAndAttributeStackData$1;)V

    iput-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    move v2, v6

    move v3, v6

    .line 133
    :goto_0
    if-ge v2, v1, :cond_1

    .line 135
    iget-object v4, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v5

    aput v5, v4, v2

    .line 136
    if-gtz v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v3, v3, v2

    invoke-static {v3}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToTagSize(I)I

    move-result v3

    .line 139
    iget v4, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    .line 141
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    .line 145
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v2

    .line 146
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v3

    const v4, 0xfdea

    if-eq v3, v4, :cond_2

    .line 147
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "wrong encoding"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_2
    invoke-virtual {v0, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readBytes(I)[B

    move-result-object v3

    .line 149
    rem-int/lit8 v2, v2, 0x4

    sub-int v2, v7, v2

    .line 150
    if-lt v2, v7, :cond_3

    move v2, v6

    .line 152
    :cond_3
    invoke-virtual {v0, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V

    move v2, v6

    move v4, v6

    .line 154
    :goto_1
    if-ge v2, v1, :cond_5

    .line 156
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v5

    .line 158
    shl-int/lit8 v6, v5, 0x1

    add-int/2addr v6, v4

    array-length v7, v3

    if-gt v6, v7, :cond_4

    .line 161
    mul-int/lit8 v6, v5, 0x2

    invoke-static {v3, v4, v6}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringFromUTF16BE([BII)Ljava/lang/String;

    move-result-object v6

    .line 167
    :goto_2
    iget-object v7, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    new-instance v8, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v8, v6}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 165
    :cond_4
    const-string v6, ""

    goto :goto_2

    .line 170
    :cond_5
    return-void
.end method

.method private static codeToAttrName(I)S
    .locals 1
    .parameter "attrCode"

    .prologue
    .line 205
    const v0, 0xffff

    and-int/2addr v0, p0

    int-to-short v0, v0

    return v0
.end method

.method private static codeToStrAttrIndex(I)I
    .locals 1
    .parameter "attrCode"

    .prologue
    .line 210
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method static codeToStrAttrSize(I)I
    .locals 1
    .parameter "tagCode"

    .prologue
    .line 200
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method static codeToTagName(I)S
    .locals 1
    .parameter "tagCode"

    .prologue
    .line 190
    const v0, 0xffff

    and-int/2addr v0, p0

    int-to-short v0, v0

    return v0
.end method

.method static codeToTagSize(I)I
    .locals 1
    .parameter "tagCode"

    .prologue
    .line 195
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static getAttrCode(S)I
    .locals 1
    .parameter "attr"

    .prologue
    .line 215
    const v0, 0xffff

    invoke-static {p0, v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->getAttrCode(SI)I

    move-result v0

    return v0
.end method

.method private static getAttrCode(SI)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 220
    shl-int/lit8 v0, p1, 0x10

    or-int/2addr v0, p0

    return v0
.end method

.method private static getTagcode(SII)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    shl-int/lit8 v0, p1, 0x10

    or-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x18

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addTag(SLcom/mobipocket/common/parser/AttributeStack;I)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    if-nez p2, :cond_2

    const/4 v0, 0x0

    .line 239
    :goto_0
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x3

    .line 240
    invoke-virtual {p0, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->allocateTagAndAttribute(I)V

    .line 241
    iget v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    .line 242
    const/4 v1, 0x3

    .line 243
    const/4 v2, 0x0

    .line 244
    iget v3, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    .line 245
    iget-object v4, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    iget v5, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {p1, v6, v7}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->getTagcode(SII)I

    move-result v6

    aput v6, v4, v5

    .line 246
    iget-object v4, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    iget v5, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    aput p3, v4, v5

    .line 248
    const/4 v4, 0x1

    sub-int/2addr v0, v4

    move v9, v2

    move v2, v1

    move v1, v9

    :goto_1
    if-ltz v0, :cond_4

    .line 250
    invoke-virtual {p2}, Lcom/mobipocket/common/parser/AttributeStack;->peekAttributeName()S

    move-result v4

    .line 251
    invoke-static {v4}, Lcom/mobipocket/common/parser/EBookDTD;->isAttributeStringCoded(S)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 253
    iget-object v5, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-virtual {p2}, Lcom/mobipocket/common/parser/AttributeStack;->peekAttributeValue()Lcom/mobipocket/common/parser/StrDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v5, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    iget v6, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    iget-object v7, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-virtual {v7}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-static {v4, v7}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->getAttrCode(SI)I

    move-result v4

    aput v4, v5, v6

    .line 255
    add-int/lit8 v2, v2, 0x1

    .line 256
    add-int/lit8 v1, v1, 0x1

    .line 327
    :cond_0
    :goto_2
    invoke-virtual {p2}, Lcom/mobipocket/common/parser/AttributeStack;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 328
    invoke-virtual {p2}, Lcom/mobipocket/common/parser/AttributeStack;->pop()Ljava/lang/Object;

    .line 248
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 238
    :cond_2
    invoke-virtual {p2}, Lcom/mobipocket/common/parser/AttributeStack;->size()I

    move-result v0

    goto :goto_0

    .line 260
    :cond_3
    invoke-virtual {p2}, Lcom/mobipocket/common/parser/AttributeStack;->peekEncodedAttributeValue()I

    move-result v5

    .line 261
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 265
    packed-switch v4, :pswitch_data_0

    move v9, v5

    move v5, v4

    move v4, v9

    .line 322
    :goto_3
    iget-object v6, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    iget v7, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    invoke-static {v5}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->getAttrCode(S)I

    move-result v5

    aput v5, v6, v7

    .line 323
    iget-object v5, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    iget v6, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    aput v4, v5, v6

    .line 324
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 268
    :pswitch_0
    packed-switch v5, :pswitch_data_1

    :pswitch_1
    move v9, v5

    move v5, v4

    move v4, v9

    .line 315
    goto :goto_3

    .line 271
    :pswitch_2
    const/4 v5, 0x1

    move v9, v5

    move v5, v4

    move v4, v9

    .line 272
    goto :goto_3

    .line 274
    :pswitch_3
    const/4 v5, 0x2

    move v9, v5

    move v5, v4

    move v4, v9

    .line 275
    goto :goto_3

    .line 277
    :pswitch_4
    const/4 v5, 0x3

    move v9, v5

    move v5, v4

    move v4, v9

    .line 278
    goto :goto_3

    .line 280
    :pswitch_5
    const/4 v5, 0x4

    move v9, v5

    move v5, v4

    move v4, v9

    .line 281
    goto :goto_3

    .line 283
    :pswitch_6
    const/4 v5, 0x5

    move v9, v5

    move v5, v4

    move v4, v9

    .line 284
    goto :goto_3

    .line 286
    :pswitch_7
    const/4 v4, 0x0

    .line 287
    const/16 v5, 0x5b

    .line 288
    goto :goto_3

    .line 290
    :pswitch_8
    const/4 v4, 0x1

    .line 291
    const/16 v5, 0x5b

    .line 292
    goto :goto_3

    .line 294
    :pswitch_9
    const/4 v4, 0x2

    .line 295
    const/16 v5, 0x5b

    .line 296
    goto :goto_3

    .line 298
    :pswitch_a
    const/4 v4, 0x3

    .line 299
    const/16 v5, 0x5b

    .line 300
    goto :goto_3

    .line 302
    :pswitch_b
    const/16 v4, 0x9

    .line 303
    const/16 v5, 0x5b

    .line 304
    goto :goto_3

    .line 306
    :pswitch_c
    const/16 v4, 0xa

    .line 307
    const/16 v5, 0x5b

    .line 308
    goto :goto_3

    .line 310
    :pswitch_d
    const/4 v4, 0x4

    .line 311
    const/16 v5, 0x5b

    .line 312
    goto :goto_3

    .line 332
    :cond_4
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    iget v4, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    invoke-static {p1, v2, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->getTagcode(SII)I

    move-result v5

    aput v5, v0, v4

    .line 334
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    invoke-static {p1, v2, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->getTagcode(SII)I

    move-result v1

    aput v1, v0, v3

    .line 335
    return-void

    .line 265
    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch

    .line 268
    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method allocateTagAndAttribute(I)V
    .locals 4
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 174
    iget v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 176
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    new-array v0, v1, [I

    .line 177
    .local v0, newTagAndAtributeStack:[I
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    iget v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iput-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    .line 180
    .end local v0           #newTagAndAtributeStack:[I
    :cond_0
    return-void
.end method

.method public attributeStackAt(I)Lcom/mobipocket/common/parser/AttributeStack;
    .locals 8
    .parameter

    .prologue
    const v7, 0xffff

    .line 434
    new-instance v1, Lcom/mobipocket/common/parser/AttributeStack;

    invoke-direct {v1}, Lcom/mobipocket/common/parser/AttributeStack;-><init>()V

    .line 436
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->getArrayIndexOfTag(I)I

    move-result v0

    .line 437
    if-ltz v0, :cond_4

    iget v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    if-ge v0, v2, :cond_4

    .line 439
    invoke-virtual {v1}, Lcom/mobipocket/common/parser/AttributeStack;->removeAllElements()V

    .line 440
    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToTagSize(I)I

    move-result v2

    .line 441
    iget-object v3, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToStrAttrSize(I)I

    move-result v3

    .line 442
    add-int/lit8 v0, v0, 0x1

    .line 443
    add-int/2addr v2, v3

    const/4 v3, 0x3

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    .line 444
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 446
    add-int/lit8 v4, v0, 0x1

    .line 447
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v0, v0, v4

    invoke-static {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToAttrName(I)S

    move-result v0

    .line 448
    invoke-static {v0}, Lcom/mobipocket/common/parser/EBookDTD;->isAttributeSupported(S)Z

    move-result v5

    if-nez v5, :cond_0

    .line 453
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v0, v0, v4

    invoke-static {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToStrAttrIndex(I)I

    move-result v0

    .line 454
    if-ne v0, v7, :cond_3

    .line 456
    add-int/lit8 v0, v4, 0x1

    .line 444
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 461
    :cond_0
    invoke-static {v0}, Lcom/mobipocket/common/parser/EBookDTD;->isAttributeStringCoded(S)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 463
    invoke-virtual {v1, v0}, Lcom/mobipocket/common/parser/AttributeStack;->pushNewAttribute(S)V

    .line 464
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v0, v0, v4

    invoke-static {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToStrAttrIndex(I)I

    move-result v0

    .line 465
    invoke-virtual {v1}, Lcom/mobipocket/common/parser/AttributeStack;->peekAttributeValue()Lcom/mobipocket/common/parser/StrDescriptor;

    move-result-object v5

    iget-object v6, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-virtual {v6, v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v5, v0}, Lcom/mobipocket/common/parser/StrDescriptor;->copy(Lcom/mobipocket/common/parser/StrDescriptor;)V

    move v0, v4

    .line 467
    goto :goto_1

    .line 470
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 471
    iget-object v5, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    const/4 v6, 0x1

    sub-int v6, v4, v6

    aget v5, v5, v6

    invoke-static {v5}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToAttrName(I)S

    move-result v5

    const/16 v6, 0x33

    if-ne v5, v6, :cond_2

    .line 474
    iget-object v5, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v5, v5, v4

    and-int/2addr v5, v7

    packed-switch v5, :pswitch_data_0

    .line 492
    iget-object v5, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v5, v5, v4

    and-int/2addr v5, v7

    int-to-short v5, v5

    .line 495
    :goto_2
    invoke-virtual {v1, v0, v5}, Lcom/mobipocket/common/parser/AttributeStack;->pushNewDecodedAttribute(SI)V

    move v0, v4

    .line 496
    goto :goto_1

    .line 477
    :pswitch_0
    const/16 v5, 0x11

    .line 478
    goto :goto_2

    .line 480
    :pswitch_1
    const/16 v5, 0x13

    .line 481
    goto :goto_2

    .line 483
    :pswitch_2
    const/16 v5, 0x12

    .line 484
    goto :goto_2

    .line 486
    :pswitch_3
    const/16 v5, 0x14

    .line 487
    goto :goto_2

    .line 489
    :pswitch_4
    const/16 v5, 0x16

    .line 490
    goto :goto_2

    .line 502
    :cond_2
    iget-object v5, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v5, v5, v4

    invoke-virtual {v1, v0, v5}, Lcom/mobipocket/common/parser/AttributeStack;->pushNewDecodedAttribute(SI)V

    :cond_3
    move v0, v4

    goto :goto_1

    .line 507
    :cond_4
    return-object v1

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public completeStacks(Lcom/mobipocket/common/parser/TagStack;Lcom/mobipocket/common/parser/styles/StyleStack;Lcom/mobipocket/common/parser/styles/StyleDescriptor;[Lcom/mobipocket/common/library/reader/ActiveArea;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 524
    new-instance v0, Lcom/mobipocket/common/parser/AttributeStack;

    invoke-direct {v0}, Lcom/mobipocket/common/parser/AttributeStack;-><init>()V

    .line 525
    invoke-virtual {p1}, Lcom/mobipocket/common/parser/TagStack;->removeAllElements()V

    .line 534
    invoke-virtual {p2}, Lcom/mobipocket/common/parser/styles/StyleStack;->removeAllElements()V

    .line 535
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/mobipocket/common/parser/TagStack;->push(S)V

    .line 536
    new-instance v1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-direct {v1, p3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;-><init>(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    invoke-virtual {p2, v1}, Lcom/mobipocket/common/parser/styles/StyleStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const/4 v1, 0x0

    .line 541
    const/4 v2, 0x0

    move v10, v2

    move v2, v1

    move v1, v10

    :goto_0
    iget v3, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    if-ge v1, v3, :cond_7

    .line 543
    new-instance v3, Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {p2}, Lcom/mobipocket/common/parser/styles/StyleStack;->peek()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-direct {v3, p3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;-><init>(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 544
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/AttributeStack;->removeAllElements()V

    .line 545
    iget-object v4, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToTagName(I)S

    move-result v4

    .line 546
    iget-object v5, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v5, v5, v2

    invoke-static {v5}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToTagSize(I)I

    move-result v5

    .line 547
    iget-object v6, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v6, v6, v2

    invoke-static {v6}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToStrAttrSize(I)I

    move-result v6

    .line 548
    add-int/lit8 v2, v2, 0x1

    .line 549
    add-int/2addr v5, v6

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1

    .line 550
    const/4 v6, 0x0

    move v10, v6

    move v6, v2

    move v2, v10

    :goto_1
    if-ge v2, v5, :cond_4

    .line 552
    add-int/lit8 v6, v6, 0x1

    .line 553
    iget-object v7, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v7, v7, v6

    invoke-static {v7}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToAttrName(I)S

    move-result v7

    .line 554
    invoke-static {v7}, Lcom/mobipocket/common/parser/EBookDTD;->isAttributeSupported(S)Z

    move-result v8

    if-nez v8, :cond_1

    .line 559
    iget-object v7, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v7, v7, v6

    invoke-static {v7}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToStrAttrIndex(I)I

    move-result v7

    .line 560
    const v8, 0xffff

    if-ne v7, v8, :cond_0

    .line 562
    add-int/lit8 v6, v6, 0x1

    .line 550
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 567
    :cond_1
    invoke-static {v7}, Lcom/mobipocket/common/parser/EBookDTD;->isAttributeStringCoded(S)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 569
    invoke-virtual {v0, v7}, Lcom/mobipocket/common/parser/AttributeStack;->pushNewAttribute(S)V

    .line 570
    iget-object v7, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v7, v7, v6

    invoke-static {v7}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToStrAttrIndex(I)I

    move-result v7

    .line 571
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/AttributeStack;->peekAttributeValue()Lcom/mobipocket/common/parser/StrDescriptor;

    move-result-object v8

    iget-object v9, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-virtual {v9, v7}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v8, p3}, Lcom/mobipocket/common/parser/StrDescriptor;->copy(Lcom/mobipocket/common/parser/StrDescriptor;)V

    goto :goto_2

    .line 576
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 580
    iget-object v8, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    const/4 v9, 0x1

    sub-int v9, v6, v9

    aget v8, v8, v9

    invoke-static {v8}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToAttrName(I)S

    move-result v8

    const/16 v9, 0x33

    if-ne v8, v9, :cond_3

    .line 583
    iget-object v8, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v8, v8, v6

    const v9, 0xffff

    and-int/2addr v8, v9

    packed-switch v8, :pswitch_data_0

    .line 601
    iget-object v8, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v8, v8, v6

    const v9, 0xffff

    and-int/2addr v8, v9

    int-to-short v8, v8

    .line 604
    :goto_3
    invoke-virtual {v0, v7, v8}, Lcom/mobipocket/common/parser/AttributeStack;->pushNewDecodedAttribute(SI)V

    goto :goto_2

    .line 586
    :pswitch_0
    const/16 v8, 0x11

    .line 587
    goto :goto_3

    .line 589
    :pswitch_1
    const/16 v8, 0x13

    .line 590
    goto :goto_3

    .line 592
    :pswitch_2
    const/16 v8, 0x12

    .line 593
    goto :goto_3

    .line 595
    :pswitch_3
    const/16 v8, 0x14

    .line 596
    goto :goto_3

    .line 598
    :pswitch_4
    const/16 v8, 0x16

    .line 599
    goto :goto_3

    .line 611
    :cond_3
    iget-object v8, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v8, v8, v6

    invoke-virtual {v0, v7, v8}, Lcom/mobipocket/common/parser/AttributeStack;->pushNewDecodedAttribute(SI)V

    goto :goto_2

    .line 616
    :cond_4
    add-int/lit8 v2, v6, 0x1

    .line 617
    add-int/lit8 v2, v2, 0x1

    .line 618
    invoke-virtual {v3, v4, v0}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->derive(SLcom/mobipocket/common/parser/AttributeStack;)V

    .line 619
    const/16 v5, 0x30

    if-ne v4, v5, :cond_6

    .line 621
    new-instance v5, Lcom/mobipocket/common/library/reader/ActiveArea;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/mobipocket/common/library/reader/ActiveArea;-><init>(I)V

    .line 622
    invoke-virtual {v5, v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->computeLink(Lcom/mobipocket/common/parser/AttributeStack;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 624
    invoke-virtual {v3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->addLinkProperties()V

    .line 625
    const/4 v6, 0x0

    aput-object v5, p4, v6

    .line 643
    :cond_5
    :goto_4
    invoke-virtual {p1, v4}, Lcom/mobipocket/common/parser/TagStack;->push(S)V

    .line 644
    invoke-virtual {p2, v3}, Lcom/mobipocket/common/parser/styles/StyleStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 632
    :cond_6
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/mobipocket/common/parser/AttributeStack;->attributeStringValue(S)Ljava/lang/String;

    move-result-object v5

    .line 633
    if-eqz v5, :cond_5

    const/16 v6, 0x3b

    invoke-virtual {v0, v6}, Lcom/mobipocket/common/parser/AttributeStack;->attributeStringValue(S)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    .line 635
    invoke-virtual {v3, v5}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->addTitleProperty(Ljava/lang/String;)V

    .line 636
    new-instance v6, Lcom/mobipocket/common/library/reader/ActiveArea;

    const/4 v7, 0x6

    invoke-direct {v6, v7}, Lcom/mobipocket/common/library/reader/ActiveArea;-><init>(I)V

    .line 637
    invoke-virtual {v6, v5}, Lcom/mobipocket/common/library/reader/ActiveArea;->computeTitle(Ljava/lang/String;)V

    .line 638
    const/4 v5, 0x0

    aput-object v6, p4, v5

    goto :goto_4

    .line 647
    :cond_7
    return-void

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getArrayIndexOfTag(I)I
    .locals 3
    .parameter "tagIndex"

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, arrayIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    if-ge v1, v2, :cond_0

    .line 388
    if-ne v1, p1, :cond_1

    .line 394
    :cond_0
    return v0

    .line 392
    :cond_1
    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToTagSize(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAttributeStackSizeAt(I)I
    .locals 3
    .parameter "tagIndex"

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->getArrayIndexOfTag(I)I

    move-result v0

    .line 419
    .local v0, arrayIndex:I
    const/4 v1, 0x0

    .line 420
    .local v1, currentNBStrAttr:I
    if-ltz v0, :cond_0

    iget v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    if-ge v0, v2, :cond_0

    .line 422
    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToStrAttrSize(I)I

    move-result v1

    .line 424
    :cond_0
    return v1
.end method

.method public getSaveStateSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 655
    iget-object v3, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-static {v3}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->access$200(Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;)I

    move-result v2

    .line 656
    .local v2, strAttrStacksize:I
    rem-int/lit8 v3, v2, 0x4

    sub-int v0, v4, v3

    .line 657
    .local v0, roundSize:I
    if-lt v0, v4, :cond_0

    .line 658
    const/4 v0, 0x0

    .line 659
    :cond_0
    iget-object v3, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->size()I

    move-result v1

    .line 660
    .local v1, strAttrStackNBElements:I
    iget v3, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0xc

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v3, v4

    return v3
.end method

.method getTopElement()I
    .locals 3

    .prologue
    .line 350
    iget v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    iget v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popAll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 343
    iput v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    .line 344
    iput v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    .line 345
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->removeAllElements()V

    .line 346
    return-void
.end method

.method public saveState(Ljava/io/OutputStream;)V
    .locals 7
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 671
    iget-object v5, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-static {v5}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->access$200(Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;)I

    move-result v3

    .line 672
    .local v3, strAttrStacksize:I
    rem-int/lit8 v5, v3, 0x4

    sub-int v1, v6, v5

    .line 673
    .local v1, roundSize:I
    if-lt v1, v6, :cond_0

    .line 674
    const/4 v1, 0x0

    .line 675
    :cond_0
    iget-object v5, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->size()I

    move-result v2

    .line 677
    .local v2, strAttrStackNBElements:I
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 679
    .local v4, toSave:Ljava/io/DataOutputStream;
    iget v5, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 680
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v5, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    if-ge v0, v5, :cond_1

    .line 682
    iget-object v5, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 680
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 684
    :cond_1
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 685
    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 686
    const v5, 0xfdea

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 687
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 689
    iget-object v5, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-virtual {v5, v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v5, v4}, Lcom/mobipocket/common/parser/StrDescriptor;->serialize(Ljava/io/DataOutputStream;)V

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 691
    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_3

    .line 692
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 693
    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_4

    .line 695
    iget-object v5, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-virtual {v5, v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 693
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 697
    :cond_4
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    return v0
.end method

.method public tagElementAt(I)I
    .locals 3
    .parameter "tagIndex"

    .prologue
    .line 368
    const/4 v1, -0x1

    .line 369
    .local v1, tag:I
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->getArrayIndexOfTag(I)I

    move-result v0

    .line 370
    .local v0, arrayIndex:I
    if-ltz v0, :cond_0

    iget v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    if-ge v0, v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToTagName(I)S

    move-result v1

    .line 374
    :cond_0
    return v1
.end method

.method public tagElementPositionAt(I)I
    .locals 4
    .parameter "tagIndex"

    .prologue
    .line 403
    const/4 v1, -0x1

    .line 404
    .local v1, position:I
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->getArrayIndexOfTag(I)I

    move-result v0

    .line 405
    .local v0, arrayIndex:I
    if-ltz v0, :cond_0

    iget v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    add-int/lit8 v3, v0, 0x1

    aget v1, v2, v3

    .line 409
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 705
    const-string v1, ""

    .line 706
    .local v1, ret:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, z:I
    :goto_0
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 708
    invoke-virtual {p0, v3}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagElementAt(I)I

    move-result v2

    .line 709
    .local v2, tag:I
    invoke-virtual {p0, v3}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagElementPositionAt(I)I

    move-result v0

    .line 710
    .local v0, pos:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">:@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 706
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 712
    .end local v0           #pos:I
    .end local v2           #tag:I
    :cond_0
    return-object v1
.end method
