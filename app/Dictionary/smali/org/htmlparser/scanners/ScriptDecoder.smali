.class public Lorg/htmlparser/scanners/ScriptDecoder;
.super Ljava/lang/Object;
.source "ScriptDecoder.java"


# static fields
.field public static LAST_STATE:I = 0x0

.field protected static final STATE_CHECKSUM:I = 0x6

.field protected static final STATE_DECODE:I = 0x4

.field public static final STATE_DONE:I = 0x0

.field protected static final STATE_ESCAPE:I = 0x5

.field protected static final STATE_FINAL:I = 0x7

.field public static final STATE_INITIAL:I = 0x1

.field protected static final STATE_LENGTH:I = 0x2

.field protected static final STATE_PREFIX:I = 0x3

.field protected static mDigits:[I

.field protected static mEncodingIndex:[B

.field protected static mEscaped:[C

.field protected static mEscapes:[C

.field protected static mLeader:[C

.field protected static mLookupTable:[[C

.field protected static mPrefix:[C

.field protected static mTrailer:[C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x61

    .line 90
    sput v3, Lorg/htmlparser/scanners/ScriptDecoder;->LAST_STATE:I

    .line 98
    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mEncodingIndex:[B

    .line 111
    const/4 v1, 0x3

    new-array v1, v1, [[C

    new-array v2, v4, [C

    fill-array-data v2, :array_1

    aput-object v2, v1, v3

    const/4 v2, 0x1

    new-array v3, v4, [C

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v2, v4, [C

    fill-array-data v2, :array_3

    aput-object v2, v1, v5

    sput-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mLookupTable:[[C

    .line 167
    const/16 v1, 0x7b

    new-array v1, v1, [I

    sput-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    .line 168
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 170
    sget-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    add-int/lit8 v2, v0, 0x41

    aput v0, v1, v2

    .line 171
    sget-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0x1a

    aput v3, v1, v2

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 174
    sget-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    add-int/lit8 v2, v0, 0x30

    add-int/lit8 v3, v0, 0x34

    aput v3, v1, v2

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_1
    sget-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput v3, v1, v2

    .line 176
    sget-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput v3, v1, v2

    .line 184
    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_4

    sput-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mLeader:[C

    .line 196
    new-array v1, v5, [C

    fill-array-data v1, :array_5

    sput-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mPrefix:[C

    .line 207
    const/4 v1, 0x6

    new-array v1, v1, [C

    fill-array-data v1, :array_6

    sput-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mTrailer:[C

    .line 220
    new-array v1, v6, [C

    fill-array-data v1, :array_7

    sput-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mEscapes:[C

    .line 232
    new-array v1, v6, [C

    fill-array-data v1, :array_8

    sput-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mEscaped:[C

    return-void

    .line 98
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x2t
        0x0t
        0x1t
        0x2t
        0x0t
        0x2t
        0x0t
        0x0t
        0x2t
        0x0t
        0x2t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x1t
        0x2t
        0x0t
        0x0t
        0x2t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x2t
        0x1t
        0x1t
        0x0t
        0x2t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x2t
        0x0t
        0x1t
        0x0t
        0x2t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x1t
        0x2t
        0x0t
        0x0t
        0x1t
        0x1t
        0x2t
        0x0t
        0x1t
        0x0t
        0x2t
    .end array-data

    .line 111
    :array_1
    .array-data 0x2
        0x7bt 0x0t
        0x32t 0x0t
        0x30t 0x0t
        0x21t 0x0t
        0x29t 0x0t
        0x5bt 0x0t
        0x38t 0x0t
        0x33t 0x0t
        0x3dt 0x0t
        0x58t 0x0t
        0x3at 0x0t
        0x35t 0x0t
        0x65t 0x0t
        0x39t 0x0t
        0x5ct 0x0t
        0x56t 0x0t
        0x73t 0x0t
        0x66t 0x0t
        0x4et 0x0t
        0x45t 0x0t
        0x6bt 0x0t
        0x62t 0x0t
        0x59t 0x0t
        0x78t 0x0t
        0x5et 0x0t
        0x7dt 0x0t
        0x4at 0x0t
        0x6dt 0x0t
        0x71t 0x0t
        0x0t 0x0t
        0x60t 0x0t
        0x0t 0x0t
        0x53t 0x0t
        0x0t 0x0t
        0x42t 0x0t
        0x27t 0x0t
        0x48t 0x0t
        0x72t 0x0t
        0x75t 0x0t
        0x31t 0x0t
        0x37t 0x0t
        0x4dt 0x0t
        0x52t 0x0t
        0x22t 0x0t
        0x54t 0x0t
        0x6at 0x0t
        0x47t 0x0t
        0x64t 0x0t
        0x2dt 0x0t
        0x20t 0x0t
        0x7ft 0x0t
        0x2et 0x0t
        0x4ct 0x0t
        0x5dt 0x0t
        0x7et 0x0t
        0x6ct 0x0t
        0x6ft 0x0t
        0x79t 0x0t
        0x74t 0x0t
        0x43t 0x0t
        0x26t 0x0t
        0x76t 0x0t
        0x25t 0x0t
        0x24t 0x0t
        0x2bt 0x0t
        0x28t 0x0t
        0x23t 0x0t
        0x41t 0x0t
        0x34t 0x0t
        0x9t 0x0t
        0x2at 0x0t
        0x44t 0x0t
        0x3ft 0x0t
        0x77t 0x0t
        0x3bt 0x0t
        0x55t 0x0t
        0x69t 0x0t
        0x61t 0x0t
        0x63t 0x0t
        0x50t 0x0t
        0x67t 0x0t
        0x51t 0x0t
        0x49t 0x0t
        0x4ft 0x0t
        0x46t 0x0t
        0x68t 0x0t
        0x7ct 0x0t
        0x36t 0x0t
        0x70t 0x0t
        0x6et 0x0t
        0x7at 0x0t
        0x2ft 0x0t
        0x5ft 0x0t
        0x4bt 0x0t
        0x5at 0x0t
        0x2ct 0x0t
        0x57t 0x0t
    .end array-data

    nop

    :array_2
    .array-data 0x2
        0x57t 0x0t
        0x2et 0x0t
        0x47t 0x0t
        0x7at 0x0t
        0x56t 0x0t
        0x42t 0x0t
        0x6at 0x0t
        0x2ft 0x0t
        0x26t 0x0t
        0x49t 0x0t
        0x41t 0x0t
        0x34t 0x0t
        0x32t 0x0t
        0x5bt 0x0t
        0x76t 0x0t
        0x72t 0x0t
        0x43t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x70t 0x0t
        0x45t 0x0t
        0x68t 0x0t
        0x71t 0x0t
        0x4ft 0x0t
        0x9t 0x0t
        0x62t 0x0t
        0x44t 0x0t
        0x23t 0x0t
        0x75t 0x0t
        0x0t 0x0t
        0x7et 0x0t
        0x0t 0x0t
        0x5et 0x0t
        0x0t 0x0t
        0x77t 0x0t
        0x4at 0x0t
        0x61t 0x0t
        0x5dt 0x0t
        0x22t 0x0t
        0x4bt 0x0t
        0x6ft 0x0t
        0x4et 0x0t
        0x3bt 0x0t
        0x4ct 0x0t
        0x50t 0x0t
        0x67t 0x0t
        0x2at 0x0t
        0x7dt 0x0t
        0x74t 0x0t
        0x54t 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x2ct 0x0t
        0x30t 0x0t
        0x6et 0x0t
        0x6bt 0x0t
        0x66t 0x0t
        0x35t 0x0t
        0x25t 0x0t
        0x21t 0x0t
        0x64t 0x0t
        0x4dt 0x0t
        0x52t 0x0t
        0x63t 0x0t
        0x3ft 0x0t
        0x7bt 0x0t
        0x78t 0x0t
        0x29t 0x0t
        0x28t 0x0t
        0x73t 0x0t
        0x59t 0x0t
        0x33t 0x0t
        0x7ft 0x0t
        0x6dt 0x0t
        0x55t 0x0t
        0x53t 0x0t
        0x7ct 0x0t
        0x3at 0x0t
        0x5ft 0x0t
        0x65t 0x0t
        0x46t 0x0t
        0x58t 0x0t
        0x31t 0x0t
        0x69t 0x0t
        0x6ct 0x0t
        0x5at 0x0t
        0x48t 0x0t
        0x27t 0x0t
        0x5ct 0x0t
        0x3dt 0x0t
        0x24t 0x0t
        0x79t 0x0t
        0x37t 0x0t
        0x60t 0x0t
        0x51t 0x0t
        0x20t 0x0t
        0x36t 0x0t
    .end array-data

    nop

    :array_3
    .array-data 0x2
        0x6et 0x0t
        0x2dt 0x0t
        0x75t 0x0t
        0x52t 0x0t
        0x60t 0x0t
        0x71t 0x0t
        0x5et 0x0t
        0x49t 0x0t
        0x5ct 0x0t
        0x62t 0x0t
        0x7dt 0x0t
        0x29t 0x0t
        0x36t 0x0t
        0x20t 0x0t
        0x7ct 0x0t
        0x7at 0x0t
        0x7ft 0x0t
        0x6bt 0x0t
        0x63t 0x0t
        0x33t 0x0t
        0x2bt 0x0t
        0x68t 0x0t
        0x51t 0x0t
        0x66t 0x0t
        0x76t 0x0t
        0x31t 0x0t
        0x64t 0x0t
        0x54t 0x0t
        0x43t 0x0t
        0x0t 0x0t
        0x3at 0x0t
        0x0t 0x0t
        0x7et 0x0t
        0x0t 0x0t
        0x45t 0x0t
        0x2ct 0x0t
        0x2at 0x0t
        0x74t 0x0t
        0x27t 0x0t
        0x37t 0x0t
        0x44t 0x0t
        0x79t 0x0t
        0x59t 0x0t
        0x2ft 0x0t
        0x6ft 0x0t
        0x26t 0x0t
        0x72t 0x0t
        0x6at 0x0t
        0x39t 0x0t
        0x7bt 0x0t
        0x3ft 0x0t
        0x38t 0x0t
        0x77t 0x0t
        0x67t 0x0t
        0x53t 0x0t
        0x47t 0x0t
        0x34t 0x0t
        0x78t 0x0t
        0x5dt 0x0t
        0x30t 0x0t
        0x23t 0x0t
        0x5at 0x0t
        0x5bt 0x0t
        0x6ct 0x0t
        0x48t 0x0t
        0x55t 0x0t
        0x70t 0x0t
        0x69t 0x0t
        0x2et 0x0t
        0x4ct 0x0t
        0x21t 0x0t
        0x24t 0x0t
        0x4et 0x0t
        0x50t 0x0t
        0x9t 0x0t
        0x56t 0x0t
        0x73t 0x0t
        0x35t 0x0t
        0x61t 0x0t
        0x4bt 0x0t
        0x58t 0x0t
        0x3bt 0x0t
        0x57t 0x0t
        0x22t 0x0t
        0x6dt 0x0t
        0x4dt 0x0t
        0x25t 0x0t
        0x28t 0x0t
        0x46t 0x0t
        0x4at 0x0t
        0x32t 0x0t
        0x41t 0x0t
        0x3dt 0x0t
        0x5ft 0x0t
        0x4ft 0x0t
        0x42t 0x0t
        0x65t 0x0t
    .end array-data

    .line 184
    nop

    :array_4
    .array-data 0x2
        0x23t 0x0t
        0x40t 0x0t
        0x7et 0x0t
        0x5et 0x0t
    .end array-data

    .line 196
    :array_5
    .array-data 0x2
        0x3dt 0x0t
        0x3dt 0x0t
    .end array-data

    .line 207
    :array_6
    .array-data 0x2
        0x3dt 0x0t
        0x3dt 0x0t
        0x5et 0x0t
        0x23t 0x0t
        0x7et 0x0t
        0x40t 0x0t
    .end array-data

    .line 220
    :array_7
    .array-data 0x2
        0x23t 0x0t
        0x26t 0x0t
        0x21t 0x0t
        0x2at 0x0t
        0x24t 0x0t
    .end array-data

    .line 232
    nop

    :array_8
    .array-data 0x2
        0xdt 0x0t
        0xat 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x40t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Decode(Lorg/htmlparser/lexer/Page;Lorg/htmlparser/lexer/Cursor;)Ljava/lang/String;
    .locals 22
    .parameter "page"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 289
    const/4 v3, 0x6

    new-array v3, v3, [C

    .line 296
    .local v3, buffer:[C
    new-instance v12, Ljava/lang/StringBuffer;

    const/16 v4, 0x400

    invoke-direct {v12, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 298
    .local v12, ret:Ljava/lang/StringBuffer;
    const/4 v9, 0x1

    .line 299
    .local v9, state:I
    const/4 v13, 0x0

    .line 300
    .local v13, substate_initial:I
    const/4 v14, 0x0

    .line 301
    .local v14, substate_length:I
    const/4 v15, 0x0

    .line 302
    .local v15, substate_prefix:I
    const/4 v10, 0x0

    .line 303
    .local v10, substate_checksum:I
    const/4 v11, 0x0

    .line 304
    .local v11, substate_final:I
    const-wide/16 v7, 0x0

    .line 305
    .local v7, length:J
    const-wide/16 v4, 0x0

    .line 306
    .local v4, checksum:J
    const/4 v6, 0x0

    .local v6, index:I
    move/from16 v18, v15

    .end local v15           #substate_prefix:I
    .local v18, substate_prefix:I
    move/from16 v17, v14

    .end local v14           #substate_length:I
    .local v17, substate_length:I
    move/from16 v16, v13

    .end local v13           #substate_initial:I
    .local v16, substate_initial:I
    move v15, v11

    .end local v11           #substate_final:I
    .local v15, substate_final:I
    move v14, v10

    .end local v10           #substate_checksum:I
    .local v14, substate_checksum:I
    move v13, v9

    .end local v9           #state:I
    .local v13, state:I
    move-wide v10, v7

    .end local v7           #length:J
    .local v10, length:J
    move v9, v6

    .end local v6           #index:I
    .local v9, index:I
    move-wide v6, v4

    .line 307
    .end local v4           #checksum:J
    .local v6, checksum:J
    :goto_0
    if-eqz v13, :cond_10

    .line 309
    invoke-virtual/range {p0 .. p1}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v5

    .line 310
    .local v5, input_character:I
    int-to-char v4, v5

    .line 311
    .local v4, character:C
    const v8, 0xffff

    if-ne v8, v5, :cond_2

    .line 313
    const/4 v4, 0x1

    if-ne v4, v13, :cond_0

    .end local v4           #character:C
    if-nez v16, :cond_0

    if-nez v17, :cond_0

    if-nez v18, :cond_0

    if-nez v14, :cond_0

    if-eqz v15, :cond_1

    .line 319
    :cond_0
    new-instance p0, Lorg/htmlparser/util/ParserException;

    .end local p0
    const-string p1, "illegal state for exit"

    .end local p1
    invoke-direct/range {p0 .. p1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 320
    .restart local p0
    .restart local p1
    :cond_1
    const/4 v4, 0x0

    .end local v13           #state:I
    .local v4, state:I
    move v13, v4

    .line 321
    .end local v4           #state:I
    .restart local v13       #state:I
    goto :goto_0

    .line 323
    .local v4, character:C
    :cond_2
    packed-switch v13, :pswitch_data_0

    .line 449
    new-instance p0, Lorg/htmlparser/util/ParserException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuffer;

    .end local p1
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "invalid state: "

    .end local v3           #buffer:[C
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 326
    .restart local v3       #buffer:[C
    .restart local p0
    .restart local p1
    :pswitch_0
    sget-object v5, Lorg/htmlparser/scanners/ScriptDecoder;->mLeader:[C

    .end local v5           #input_character:I
    aget-char v5, v5, v16

    if-ne v4, v5, :cond_3

    .line 328
    add-int/lit8 v4, v16, 0x1

    .line 329
    .end local v16           #substate_initial:I
    .local v4, substate_initial:I
    sget-object v5, Lorg/htmlparser/scanners/ScriptDecoder;->mLeader:[C

    array-length v5, v5

    if-ne v4, v5, :cond_16

    .line 331
    const/4 v5, 0x0

    .line 332
    .end local v4           #substate_initial:I
    .local v5, substate_initial:I
    const/4 v4, 0x2

    .end local v13           #state:I
    .local v4, state:I
    move/from16 v16, v5

    .end local v5           #substate_initial:I
    .restart local v16       #substate_initial:I
    move v13, v4

    .line 333
    .end local v4           #state:I
    .restart local v13       #state:I
    goto :goto_0

    .line 338
    .local v4, character:C
    :cond_3
    const/4 v5, 0x0

    .local v5, k:I
    move v8, v5

    .end local v5           #k:I
    .local v8, k:I
    :goto_1
    if-lez v16, :cond_4

    .line 340
    sget-object v19, Lorg/htmlparser/scanners/ScriptDecoder;->mLeader:[C

    add-int/lit8 v5, v8, 0x1

    .end local v8           #k:I
    .restart local v5       #k:I
    aget-char v8, v19, v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 341
    add-int/lit8 v8, v16, -0x1

    .line 338
    .end local v16           #substate_initial:I
    .local v8, substate_initial:I
    add-int/lit8 v5, v5, 0x1

    move/from16 v16, v8

    .end local v8           #substate_initial:I
    .restart local v16       #substate_initial:I
    move v8, v5

    .end local v5           #k:I
    .local v8, k:I
    goto :goto_1

    .line 343
    :cond_4
    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 348
    .end local v8           #k:I
    .local v5, input_character:I
    :pswitch_1
    aput-char v4, v3, v17

    .line 349
    add-int/lit8 v4, v17, 0x1

    .line 350
    .end local v17           #substate_length:I
    .local v4, substate_length:I
    array-length v5, v3

    .end local v5           #input_character:I
    if-lt v4, v5, :cond_15

    .line 352
    invoke-static {v3}, Lorg/htmlparser/scanners/ScriptDecoder;->decodeBase64([C)J

    move-result-wide v4

    .line 353
    .end local v10           #length:J
    .local v4, length:J
    const-wide/16 v10, 0x0

    cmp-long v8, v10, v4

    if-lez v8, :cond_5

    .line 354
    new-instance p0, Lorg/htmlparser/util/ParserException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuffer;

    .end local p1
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "illegal length: "

    .end local v3           #buffer:[C
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    move-object/from16 v0, p1

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 355
    .restart local v3       #buffer:[C
    .restart local p0
    .restart local p1
    :cond_5
    const/4 v10, 0x0

    .line 356
    .local v10, substate_length:I
    const/4 v8, 0x3

    .end local v13           #state:I
    .local v8, state:I
    move/from16 v17, v10

    .end local v10           #substate_length:I
    .restart local v17       #substate_length:I
    move v13, v8

    .end local v8           #state:I
    .restart local v13       #state:I
    move-wide v10, v4

    .line 357
    .end local v4           #length:J
    .local v10, length:J
    goto/16 :goto_0

    .line 361
    .local v4, character:C
    .restart local v5       #input_character:I
    :pswitch_2
    sget-object v5, Lorg/htmlparser/scanners/ScriptDecoder;->mPrefix:[C

    .end local v5           #input_character:I
    aget-char v5, v5, v18

    if-ne v4, v5, :cond_6

    .line 362
    add-int/lit8 v4, v18, 0x1

    .line 365
    .end local v18           #substate_prefix:I
    .local v4, substate_prefix:I
    sget-object v5, Lorg/htmlparser/scanners/ScriptDecoder;->mPrefix:[C

    array-length v5, v5

    if-lt v4, v5, :cond_14

    .line 367
    const/4 v5, 0x0

    .line 368
    .end local v4           #substate_prefix:I
    .local v5, substate_prefix:I
    const/4 v4, 0x4

    .end local v13           #state:I
    .local v4, state:I
    move/from16 v18, v5

    .end local v5           #substate_prefix:I
    .restart local v18       #substate_prefix:I
    move v13, v4

    .line 369
    .end local v4           #state:I
    .restart local v13       #state:I
    goto/16 :goto_0

    .line 364
    .local v4, character:C
    :cond_6
    new-instance p0, Lorg/htmlparser/util/ParserException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuffer;

    .end local p1
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "illegal character encountered: "

    .end local v3           #buffer:[C
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v3, " (\'"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v3, "\')"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 373
    .restart local v3       #buffer:[C
    .local v5, input_character:I
    .restart local p0
    .restart local p1
    :pswitch_3
    const/16 v8, 0x40

    if-ne v8, v4, :cond_7

    .line 374
    const/4 v4, 0x5

    .end local v13           #state:I
    .local v4, state:I
    move/from16 v20, v5

    .end local v5           #input_character:I
    .local v20, input_character:I
    move/from16 v21, v9

    .end local v9           #index:I
    .local v21, index:I
    move v9, v4

    .end local v4           #state:I
    .local v9, state:I
    move-wide v4, v6

    .end local v6           #checksum:J
    .local v4, checksum:J
    move/from16 v7, v20

    .end local v20           #input_character:I
    .local v7, input_character:I
    move/from16 v6, v21

    .line 393
    .end local v21           #index:I
    .local v6, index:I
    :goto_2
    const-wide/16 v7, 0x1

    sub-long v7, v10, v7

    .line 394
    .end local v10           #length:J
    .local v7, length:J
    const-wide/16 v10, 0x0

    cmp-long v10, v10, v7

    if-nez v10, :cond_13

    .line 396
    const/4 v6, 0x0

    .line 397
    const/4 v9, 0x6

    move-wide v10, v7

    .end local v7           #length:J
    .restart local v10       #length:J
    move v13, v9

    .end local v9           #state:I
    .restart local v13       #state:I
    move v9, v6

    .end local v6           #index:I
    .local v9, index:I
    move-wide v6, v4

    .line 398
    .end local v4           #checksum:J
    .local v6, checksum:J
    goto/16 :goto_0

    .line 377
    .local v4, character:C
    .restart local v5       #input_character:I
    :cond_7
    const/16 v8, 0x80

    if-ge v5, v8, :cond_a

    .line 379
    const/16 v8, 0x9

    if-ne v5, v8, :cond_8

    .line 380
    const/4 v4, 0x0

    .end local v5           #input_character:I
    .local v4, input_character:I
    move v8, v4

    .line 385
    .end local v4           #input_character:I
    .local v8, input_character:I
    :goto_3
    sget-object v4, Lorg/htmlparser/scanners/ScriptDecoder;->mLookupTable:[[C

    sget-object v5, Lorg/htmlparser/scanners/ScriptDecoder;->mEncodingIndex:[B

    rem-int/lit8 v19, v9, 0x40

    aget-byte v5, v5, v19

    aget-object v4, v4, v5

    aget-char v4, v4, v8

    .line 386
    .local v4, ch:C
    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 387
    int-to-long v4, v4

    add-long/2addr v4, v6

    .line 388
    .end local v6           #checksum:J
    .local v4, checksum:J
    add-int/lit8 v6, v9, 0x1

    .end local v9           #index:I
    .local v6, index:I
    move v7, v8

    .end local v8           #input_character:I
    .local v7, input_character:I
    move v9, v13

    .line 389
    .end local v13           #state:I
    .local v9, state:I
    goto :goto_2

    .line 381
    .end local v7           #input_character:I
    .local v4, character:C
    .restart local v5       #input_character:I
    .local v6, checksum:J
    .local v9, index:I
    .restart local v13       #state:I
    :cond_8
    const/16 v8, 0x20

    if-lt v5, v8, :cond_9

    .line 382
    add-int/lit8 v4, v5, -0x1f

    .end local v5           #input_character:I
    .local v4, input_character:I
    move v8, v4

    .end local v4           #input_character:I
    .restart local v8       #input_character:I
    goto :goto_3

    .line 384
    .end local v8           #input_character:I
    .local v4, character:C
    .restart local v5       #input_character:I
    :cond_9
    new-instance p0, Lorg/htmlparser/util/ParserException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuffer;

    .end local p1
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "illegal encoded character: "

    .end local v3           #buffer:[C
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v3, " (\'"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v3, "\')"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 391
    .restart local v3       #buffer:[C
    .restart local p0
    .restart local p1
    :cond_a
    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move/from16 v20, v5

    .end local v5           #input_character:I
    .restart local v20       #input_character:I
    move-wide v4, v6

    .end local v6           #checksum:J
    .local v4, checksum:J
    move v6, v9

    .end local v9           #index:I
    .local v6, index:I
    move/from16 v7, v20

    .end local v20           #input_character:I
    .restart local v7       #input_character:I
    move v9, v13

    .end local v13           #state:I
    .local v9, state:I
    goto :goto_2

    .line 402
    .end local v7           #input_character:I
    .local v4, character:C
    .restart local v5       #input_character:I
    .local v6, checksum:J
    .local v9, index:I
    .restart local v13       #state:I
    :pswitch_4
    const/4 v5, 0x0

    .line 403
    .local v5, found:Z
    const/4 v8, 0x0

    .end local v13           #state:I
    .local v8, i:I
    :goto_4
    sget-object v13, Lorg/htmlparser/scanners/ScriptDecoder;->mEscapes:[C

    array-length v13, v13

    if-ge v8, v13, :cond_c

    .line 404
    sget-object v13, Lorg/htmlparser/scanners/ScriptDecoder;->mEscapes:[C

    aget-char v13, v13, v8

    if-ne v4, v13, :cond_b

    .line 406
    const/4 v5, 0x1

    .line 407
    sget-object v4, Lorg/htmlparser/scanners/ScriptDecoder;->mEscaped:[C

    .end local v4           #character:C
    aget-char v4, v4, v8

    .line 403
    .restart local v4       #character:C
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 409
    :cond_c
    if-nez v5, :cond_d

    .line 410
    new-instance p0, Lorg/htmlparser/util/ParserException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuffer;

    .end local p1
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unexpected escape character: "

    .end local v3           #buffer:[C
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v3, " (\'"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v3, "\')"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 411
    .restart local v3       #buffer:[C
    .restart local p0
    .restart local p1
    :cond_d
    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 412
    int-to-long v4, v4

    add-long/2addr v4, v6

    .line 413
    .end local v5           #found:Z
    .end local v6           #checksum:J
    .local v4, checksum:J
    add-int/lit8 v6, v9, 0x1

    .line 414
    .end local v9           #index:I
    .local v6, index:I
    const/4 v9, 0x4

    .line 415
    .local v9, state:I
    const-wide/16 v7, 0x1

    sub-long v7, v10, v7

    .line 416
    .end local v8           #i:I
    .end local v10           #length:J
    .local v7, length:J
    const-wide/16 v10, 0x0

    cmp-long v10, v10, v7

    if-nez v10, :cond_13

    .line 418
    const/4 v6, 0x0

    .line 419
    const/4 v9, 0x6

    move-wide v10, v7

    .end local v7           #length:J
    .restart local v10       #length:J
    move v13, v9

    .end local v9           #state:I
    .restart local v13       #state:I
    move v9, v6

    .end local v6           #index:I
    .local v9, index:I
    move-wide v6, v4

    .line 420
    .end local v4           #checksum:J
    .local v6, checksum:J
    goto/16 :goto_0

    .line 424
    .local v4, character:C
    .local v5, input_character:I
    :pswitch_5
    aput-char v4, v3, v14

    .line 425
    add-int/lit8 v4, v14, 0x1

    .line 426
    .end local v14           #substate_checksum:I
    .local v4, substate_checksum:I
    array-length v5, v3

    .end local v5           #input_character:I
    if-lt v4, v5, :cond_12

    .line 428
    invoke-static {v3}, Lorg/htmlparser/scanners/ScriptDecoder;->decodeBase64([C)J

    move-result-wide v4

    .line 429
    .local v4, check:J
    cmp-long v8, v4, v6

    if-eqz v8, :cond_e

    .line 430
    new-instance p0, Lorg/htmlparser/util/ParserException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuffer;

    .end local p1
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "incorrect checksum, expected "

    .end local v3           #buffer:[C
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    move-object/from16 v0, p1

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v3, ", calculated "

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    move-object/from16 v0, p1

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 431
    .restart local v3       #buffer:[C
    .restart local p0
    .restart local p1
    :cond_e
    const-wide/16 v4, 0x0

    .line 432
    .end local v6           #checksum:J
    .local v4, checksum:J
    const/4 v7, 0x0

    .line 433
    .local v7, substate_checksum:I
    const/4 v6, 0x7

    .end local v13           #state:I
    .local v6, state:I
    move v14, v7

    .end local v7           #substate_checksum:I
    .restart local v14       #substate_checksum:I
    move v13, v6

    .end local v6           #state:I
    .restart local v13       #state:I
    move-wide v6, v4

    .line 434
    .end local v4           #checksum:J
    .local v6, checksum:J
    goto/16 :goto_0

    .line 438
    .local v4, character:C
    .restart local v5       #input_character:I
    :pswitch_6
    sget-object v5, Lorg/htmlparser/scanners/ScriptDecoder;->mTrailer:[C

    .end local v5           #input_character:I
    aget-char v5, v5, v15

    if-ne v4, v5, :cond_f

    .line 439
    add-int/lit8 v4, v15, 0x1

    .line 442
    .end local v15           #substate_final:I
    .local v4, substate_final:I
    sget-object v5, Lorg/htmlparser/scanners/ScriptDecoder;->mTrailer:[C

    array-length v5, v5

    if-lt v4, v5, :cond_11

    .line 444
    const/4 v5, 0x0

    .line 445
    .end local v4           #substate_final:I
    .local v5, substate_final:I
    sget v4, Lorg/htmlparser/scanners/ScriptDecoder;->LAST_STATE:I

    .end local v13           #state:I
    .local v4, state:I
    move v15, v5

    .end local v5           #substate_final:I
    .restart local v15       #substate_final:I
    move v13, v4

    .line 446
    .end local v4           #state:I
    .restart local v13       #state:I
    goto/16 :goto_0

    .line 441
    .local v4, character:C
    :cond_f
    new-instance p0, Lorg/htmlparser/util/ParserException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuffer;

    .end local p1
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "illegal character encountered: "

    .end local v3           #buffer:[C
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v3, " (\'"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v3, "\')"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 453
    .end local v4           #character:C
    .restart local v3       #buffer:[C
    .restart local p0
    .restart local p1
    :cond_10
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    return-object p0

    .end local v15           #substate_final:I
    .local v4, substate_final:I
    .restart local p0
    :cond_11
    move v15, v4

    .end local v4           #substate_final:I
    .restart local v15       #substate_final:I
    goto/16 :goto_0

    .end local v14           #substate_checksum:I
    .local v4, substate_checksum:I
    :cond_12
    move v14, v4

    .end local v4           #substate_checksum:I
    .restart local v14       #substate_checksum:I
    goto/16 :goto_0

    .end local v10           #length:J
    .end local v13           #state:I
    .local v4, checksum:J
    .local v6, index:I
    .local v7, length:J
    .local v9, state:I
    :cond_13
    move-wide v10, v7

    .end local v7           #length:J
    .restart local v10       #length:J
    move v13, v9

    .end local v9           #state:I
    .restart local v13       #state:I
    move v9, v6

    .end local v6           #index:I
    .local v9, index:I
    move-wide v6, v4

    .end local v4           #checksum:J
    .local v6, checksum:J
    goto/16 :goto_0

    .end local v18           #substate_prefix:I
    .local v4, substate_prefix:I
    :cond_14
    move/from16 v18, v4

    .end local v4           #substate_prefix:I
    .restart local v18       #substate_prefix:I
    goto/16 :goto_0

    .end local v17           #substate_length:I
    .local v4, substate_length:I
    :cond_15
    move/from16 v17, v4

    .end local v4           #substate_length:I
    .restart local v17       #substate_length:I
    goto/16 :goto_0

    .end local v16           #substate_initial:I
    .local v4, substate_initial:I
    :cond_16
    move/from16 v16, v4

    .end local v4           #substate_initial:I
    .restart local v16       #substate_initial:I
    goto/16 :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected static decodeBase64([C)J
    .locals 6
    .parameter "p"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 254
    const-wide/16 v0, 0x0

    .line 256
    .local v0, ret:J
    sget-object v2, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    const/4 v3, 0x0

    aget-char v3, p0, v3

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 257
    sget-object v2, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    aget-char v3, p0, v4

    aget v2, v2, v3

    shr-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 258
    sget-object v2, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    aget-char v3, p0, v4

    aget v2, v2, v3

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 259
    sget-object v2, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    aget-char v3, p0, v5

    aget v2, v2, v3

    shr-int/lit8 v2, v2, 0x2

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 260
    sget-object v2, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    aget-char v3, p0, v5

    aget v2, v2, v3

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x16

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 261
    sget-object v2, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    const/4 v3, 0x3

    aget-char v3, p0, v3

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 262
    sget-object v2, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    const/4 v3, 0x4

    aget-char v3, p0, v3

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x2

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 263
    sget-object v2, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    const/4 v3, 0x5

    aget-char v3, p0, v3

    aget v2, v2, v3

    shr-int/lit8 v2, v2, 0x4

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 265
    return-wide v0
.end method
