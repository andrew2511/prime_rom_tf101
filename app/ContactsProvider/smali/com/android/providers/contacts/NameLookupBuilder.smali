.class public abstract Lcom/android/providers/contacts/NameLookupBuilder;
.super Ljava/lang/Object;
.source "NameLookupBuilder.java"


# static fields
.field private static final KOREAN_JAUM_CONVERT_MAP:[I


# instance fields
.field private mNames:[Ljava/lang/String;

.field private mNicknameClusters:[[Ljava/lang/String;

.field private final mSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/contacts/NameLookupBuilder;->KOREAN_JAUM_CONVERT_MAP:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x11t 0x0t 0x0t
        0x1t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x11t 0x0t 0x0t
        0x4t 0x11t 0x0t 0x0t
        0x5t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x11t 0x0t 0x0t
        0x7t 0x11t 0x0t 0x0t
        0x8t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x11t 0x0t 0x0t
        0xat 0x11t 0x0t 0x0t
        0xbt 0x11t 0x0t 0x0t
        0xct 0x11t 0x0t 0x0t
        0xdt 0x11t 0x0t 0x0t
        0xet 0x11t 0x0t 0x0t
        0xft 0x11t 0x0t 0x0t
        0x10t 0x11t 0x0t 0x0t
        0x11t 0x11t 0x0t 0x0t
        0x12t 0x11t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/providers/contacts/NameSplitter;)V
    .locals 1
    .parameter "splitter"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNicknameClusters:[[Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 38
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 77
    return-void
.end method

.method private appendKoreanNameConsonantsLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;)V
    .locals 9
    .parameter "builder"
    .parameter "name"

    .prologue
    const v8, 0xac00

    const/16 v7, 0x3131

    .line 176
    const/4 v2, 0x0

    .line 177
    .local v2, position:I
    const/4 v1, 0x0

    .line 180
    .local v1, consonantLength:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 181
    .local v4, stringLength:I
    iget-object v5, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 183
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .end local v2           #position:I
    .local v3, position:I
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 184
    .local v0, character:I
    const/16 v5, 0x20

    if-eq v0, v5, :cond_0

    const/16 v5, 0x2c

    if-eq v0, v5, :cond_0

    const/16 v5, 0x2e

    if-ne v0, v5, :cond_3

    .line 216
    :cond_0
    :goto_1
    if-lt v3, v4, :cond_8

    .line 220
    :cond_1
    :goto_2
    const/4 v5, 0x1

    if-le v1, v5, :cond_2

    .line 221
    iget-object v5, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 223
    :cond_2
    return-void

    .line 190
    :cond_3
    const/16 v5, 0x1100

    if-lt v0, v5, :cond_1

    const/16 v5, 0x1112

    if-le v0, v5, :cond_4

    if-lt v0, v7, :cond_1

    :cond_4
    const/16 v5, 0x314e

    if-le v0, v5, :cond_5

    if-lt v0, v8, :cond_1

    :cond_5
    const v5, 0xd7a3

    if-gt v0, v5, :cond_1

    .line 196
    if-lt v0, v8, :cond_7

    .line 200
    sub-int v5, v0, v8

    div-int/lit16 v5, v5, 0x24c

    add-int/lit16 v0, v5, 0x1100

    .line 214
    :cond_6
    iget-object v5, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 201
    :cond_7
    if-lt v0, v7, :cond_6

    .line 204
    sub-int v5, v0, v7

    sget-object v6, Lcom/android/providers/contacts/NameLookupBuilder;->KOREAN_JAUM_CONVERT_MAP:[I

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 208
    sget-object v5, Lcom/android/providers/contacts/NameLookupBuilder;->KOREAN_JAUM_CONVERT_MAP:[I

    sub-int v6, v0, v7

    aget v0, v5, v6

    .line 209
    if-nez v0, :cond_6

    goto :goto_2

    :cond_8
    move v2, v3

    .end local v3           #position:I
    .restart local v2       #position:I
    goto :goto_0
.end method

.method private appendNameLookupForLocaleBasedName(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V
    .locals 2
    .parameter "builder"
    .parameter "fullName"
    .parameter "fullNameStyle"

    .prologue
    .line 161
    const/4 v1, 0x5

    if-ne p3, v1, :cond_1

    .line 162
    new-instance v0, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v0}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 163
    .local v0, name:Lcom/android/providers/contacts/NameSplitter$Name;
    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;I)V

    .line 164
    iget-object v1, v0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, v0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 166
    iget-object v1, v0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/providers/contacts/NameLookupBuilder;->appendKoreanNameConsonantsLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;)V

    .line 168
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameLookupBuilder;->appendKoreanNameConsonantsLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;)V

    .line 170
    .end local v0           #name:Lcom/android/providers/contacts/NameSplitter$Name;
    :cond_1
    return-void
.end method

.method private appendNameShorthandLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V
    .locals 2
    .parameter "builder"
    .parameter "name"
    .parameter "fullNameStyle"

    .prologue
    .line 323
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/providers/contacts/ContactLocaleUtils;->getNameLookupKeys(Ljava/lang/String;I)Ljava/util/Iterator;

    move-result-object v0

    .line 325
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 326
    .end local p0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_0
    return-void
.end method

.method private insertCollationKey(JJI)V
    .locals 8
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "tokenCount"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 290
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, p5, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 294
    :cond_0
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJILjava/lang/String;)V

    .line 296
    return-void
.end method

.method private insertNameVariant(JJIIZ)V
    .locals 8
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "tokenCount"
    .parameter "lookupType"
    .parameter "buildCollationKey"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 270
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, p5, :cond_1

    .line 271
    if-eqz v7, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJILjava/lang/String;)V

    .line 279
    if-eqz p7, :cond_2

    .line 280
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/NameLookupBuilder;->insertCollationKey(JJI)V

    .line 282
    :cond_2
    return-void
.end method

.method private insertNameVariants(JJIIZZ)V
    .locals 13
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "initiallyExact"
    .parameter "buildCollationKey"

    .prologue
    .line 241
    move/from16 v0, p5

    move/from16 v1, p6

    if-ne v0, v1, :cond_2

    .line 242
    if-eqz p7, :cond_1

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariant(JJIIZ)V

    .line 261
    :cond_0
    return-void

    .line 242
    :cond_1
    const/4 v2, 0x1

    move v8, v2

    goto :goto_0

    .line 250
    :cond_2
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v11, v2, p5

    .line 251
    .local v11, firstToken:Ljava/lang/String;
    move/from16 v12, p5

    .local v12, i:I
    :goto_1
    move v0, v12

    move/from16 v1, p6

    if-ge v0, v1, :cond_0

    .line 252
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v12

    aput-object v3, v2, p5

    .line 253
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aput-object v11, v2, v12

    .line 255
    add-int/lit8 v7, p5, 0x1

    if-eqz p7, :cond_3

    move v0, v12

    move/from16 v1, p5

    if-ne v0, v1, :cond_3

    const/4 v2, 0x1

    move v9, v2

    :goto_2
    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariants(JJIIZZ)V

    .line 258
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v3, v3, p5

    aput-object v3, v2, v12

    .line 259
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aput-object v11, v2, p5

    .line 251
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 255
    :cond_3
    const/4 v2, 0x0

    move v9, v2

    goto :goto_2
.end method

.method private insertNicknamePermutations(JJII)V
    .locals 15
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "fromIndex"
    .parameter "tokenCount"

    .prologue
    .line 304
    move/from16 v12, p5

    .local v12, i:I
    :goto_0
    move v0, v12

    move/from16 v1, p6

    if-ge v0, v1, :cond_2

    .line 305
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNicknameClusters:[[Ljava/lang/String;

    aget-object v11, v2, v12

    .line 306
    .local v11, clusters:[Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 307
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v14, v2, v12

    .line 308
    .local v14, token:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, j:I
    :goto_1
    array-length v2, v11

    if-ge v13, v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v3, v11, v13

    aput-object v3, v2, v12

    .line 312
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move/from16 v8, p6

    invoke-direct/range {v2 .. v10}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariants(JJIIZZ)V

    .line 315
    add-int/lit8 v7, v12, 0x1

    move-object v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNicknamePermutations(JJII)V

    .line 308
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aput-object v14, v2, v12

    .line 304
    .end local v13           #j:I
    .end local v14           #token:Ljava/lang/String;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 320
    .end local v11           #clusters:[Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public appendToSearchIndex(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V
    .locals 4
    .parameter "builder"
    .parameter "name"
    .parameter "fullNameStyle"

    .prologue
    .line 143
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    iget-object v3, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lcom/android/providers/contacts/NameSplitter;->tokenize([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 144
    .local v1, tokenCount:I
    if-nez v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 149
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/NameLookupBuilder;->appendNameShorthandLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V

    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/NameLookupBuilder;->appendNameLookupForLocaleBasedName(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected abstract getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method protected abstract insertNameLookup(JJILjava/lang/String;)V
.end method

.method public insertNameLookup(JJLjava/lang/String;I)V
    .locals 21
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "name"
    .parameter "fullNameStyle"

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object v4, v0

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/NameSplitter;->tokenize([Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 101
    .local v8, tokenCount:I
    if-nez v8, :cond_0

    .line 140
    :goto_0
    return-void

    .line 105
    :cond_0
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    move/from16 v0, v19

    move v1, v8

    if-ge v0, v1, :cond_1

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object v4, v0

    aget-object v4, v4, v19

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/NameLookupBuilder;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v19

    .line 105
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 109
    :cond_1
    const/4 v3, 0x4

    if-le v8, v3, :cond_2

    const/4 v3, 0x1

    move/from16 v20, v3

    .line 110
    .local v20, tooManyTokens:Z
    :goto_2
    if-eqz v20, :cond_4

    .line 111
    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariant(JJIIZ)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    new-instance v5, Lcom/android/providers/contacts/NameLookupBuilder$1;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/NameLookupBuilder$1;-><init>(Lcom/android/providers/contacts/NameLookupBuilder;)V

    invoke-static {v3, v4, v8, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v18, v3, v4

    .line 124
    .local v18, firstToken:Ljava/lang/String;
    const/16 v19, 0x4

    :goto_3
    move/from16 v0, v19

    move v1, v8

    if-ge v0, v1, :cond_3

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object v5, v0

    aget-object v5, v5, v19

    aput-object v5, v3, v4

    .line 126
    const/4 v14, 0x4

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v14}, Lcom/android/providers/contacts/NameLookupBuilder;->insertCollationKey(JJI)V

    .line 124
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 109
    .end local v18           #firstToken:Ljava/lang/String;
    .end local v20           #tooManyTokens:Z
    :cond_2
    const/4 v3, 0x0

    move/from16 v20, v3

    goto :goto_2

    .line 128
    .restart local v18       #firstToken:Ljava/lang/String;
    .restart local v20       #tooManyTokens:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    aput-object v18, v3, v4

    .line 130
    const/4 v8, 0x4

    .line 134
    .end local v18           #firstToken:Ljava/lang/String;
    :cond_4
    const/16 v19, 0x0

    :goto_4
    move/from16 v0, v19

    move v1, v8

    if-ge v0, v1, :cond_5

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNicknameClusters:[[Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object v4, v0

    aget-object v4, v4, v19

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/NameLookupBuilder;->getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v19

    .line 134
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 138
    :cond_5
    const/4 v14, 0x0

    if-nez v20, :cond_6

    const/4 v3, 0x1

    move/from16 v16, v3

    :goto_5
    const/16 v17, 0x1

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move v15, v8

    invoke-direct/range {v9 .. v17}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariants(JJIIZZ)V

    .line 139
    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNicknamePermutations(JJII)V

    goto/16 :goto_0

    .line 138
    :cond_6
    const/4 v3, 0x0

    move/from16 v16, v3

    goto :goto_5
.end method

.method protected normalizeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 226
    invoke-static {p1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
