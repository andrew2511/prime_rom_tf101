.class public Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;
.super Ljava/lang/Object;
.source "UrlQuerySanitizer.java"

# interfaces
.implements Landroid/net/UrlQuerySanitizer$ValueSanitizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/UrlQuerySanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IllegalCharacterValueSanitizer"
.end annotation


# static fields
.field public static final ALL_BUT_NUL_AND_ANGLE_BRACKETS_LEGAL:I = 0x59f

.field public static final ALL_BUT_NUL_LEGAL:I = 0x5ff

.field public static final ALL_BUT_WHITESPACE_LEGAL:I = 0x5fc

.field public static final ALL_ILLEGAL:I = 0x0

.field public static final ALL_OK:I = 0x7ff

.field public static final ALL_WHITESPACE_OK:I = 0x3

.field public static final AMP_AND_SPACE_LEGAL:I = 0x81

.field public static final AMP_LEGAL:I = 0x80

.field public static final AMP_OK:I = 0x80

.field public static final DQUOTE_OK:I = 0x8

.field public static final GT_OK:I = 0x40

.field private static final JAVASCRIPT_PREFIX:Ljava/lang/String; = "javascript:"

.field public static final LT_OK:I = 0x20

#the value of this static final field might be set in the static constructor
.field private static final MIN_SCRIPT_PREFIX_LENGTH:I = 0x0

.field public static final NON_7_BIT_ASCII_OK:I = 0x4

.field public static final NUL_OK:I = 0x200

.field public static final OTHER_WHITESPACE_OK:I = 0x2

.field public static final PCT_OK:I = 0x100

.field public static final SCRIPT_URL_OK:I = 0x400

.field public static final SPACE_LEGAL:I = 0x1

.field public static final SPACE_OK:I = 0x1

.field public static final SQUOTE_OK:I = 0x10

.field public static final URL_AND_SPACE_LEGAL:I = 0x195

.field public static final URL_LEGAL:I = 0x194

.field private static final VBSCRIPT_PREFIX:Ljava/lang/String; = "vbscript:"


# instance fields
.field private mFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 274
    const-string v0, "javascript:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "vbscript:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->MIN_SCRIPT_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "flags"

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput p1, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    .line 285
    return-void
.end method

.method private characterIsLegal(C)Z
    .registers 5
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 391
    sparse-switch p1, :sswitch_data_76

    .line 402
    const/16 v0, 0x20

    if-lt p1, v0, :cond_d

    const/16 v0, 0x7f

    if-lt p1, v0, :cond_17

    :cond_d
    const/16 v0, 0x80

    if-lt p1, v0, :cond_73

    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_73

    :cond_17
    move v0, v2

    :goto_18
    return v0

    .line 392
    :sswitch_19
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    move v0, v2

    goto :goto_18

    :cond_21
    move v0, v1

    goto :goto_18

    .line 394
    :sswitch_23
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2b

    move v0, v2

    goto :goto_18

    :cond_2b
    move v0, v1

    goto :goto_18

    .line 395
    :sswitch_2d
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_35

    move v0, v2

    goto :goto_18

    :cond_35
    move v0, v1

    goto :goto_18

    .line 396
    :sswitch_37
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3f

    move v0, v2

    goto :goto_18

    :cond_3f
    move v0, v1

    goto :goto_18

    .line 397
    :sswitch_41
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_49

    move v0, v2

    goto :goto_18

    :cond_49
    move v0, v1

    goto :goto_18

    .line 398
    :sswitch_4b
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_53

    move v0, v2

    goto :goto_18

    :cond_53
    move v0, v1

    goto :goto_18

    .line 399
    :sswitch_55
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5d

    move v0, v2

    goto :goto_18

    :cond_5d
    move v0, v1

    goto :goto_18

    .line 400
    :sswitch_5f
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_67

    move v0, v2

    goto :goto_18

    :cond_67
    move v0, v1

    goto :goto_18

    .line 401
    :sswitch_69
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_71

    move v0, v2

    goto :goto_18

    :cond_71
    move v0, v1

    goto :goto_18

    :cond_73
    move v0, v1

    .line 402
    goto :goto_18

    .line 391
    nop

    :sswitch_data_76
    .sparse-switch
        0x0 -> :sswitch_69
        0x9 -> :sswitch_23
        0xa -> :sswitch_23
        0xb -> :sswitch_23
        0xc -> :sswitch_23
        0xd -> :sswitch_23
        0x20 -> :sswitch_19
        0x22 -> :sswitch_2d
        0x25 -> :sswitch_5f
        0x26 -> :sswitch_55
        0x27 -> :sswitch_37
        0x3c -> :sswitch_41
        0x3e -> :sswitch_4b
    .end sparse-switch
.end method

.method private isWhitespace(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 371
    sparse-switch p1, :sswitch_data_8

    .line 380
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 378
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 371
    nop

    :sswitch_data_8
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_5
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method private trimWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "value"

    .prologue
    .line 350
    const/4 v2, 0x0

    .line 351
    .local v2, start:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .line 352
    .local v1, last:I
    move v0, v1

    .line 353
    .local v0, end:I
    :goto_9
    if-gt v2, v0, :cond_18

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 356
    :cond_18
    :goto_18
    if-lt v0, v2, :cond_27

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 357
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 359
    :cond_27
    if-nez v2, :cond_2d

    if-ne v0, v1, :cond_2d

    move-object v3, p1

    .line 362
    :goto_2c
    return-object v3

    :cond_2d
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2c
.end method


# virtual methods
.method public sanitize(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "value"

    .prologue
    .line 302
    if-nez p1, :cond_4

    .line 303
    const/4 v5, 0x0

    .line 338
    :goto_3
    return-object v5

    .line 305
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 306
    .local v3, length:I
    iget v5, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_2a

    .line 307
    sget v5, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->MIN_SCRIPT_PREFIX_LENGTH:I

    if-lt v3, v5, :cond_2a

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, asLower:Ljava/lang/String;
    const-string v5, "javascript:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_27

    const-string/jumbo v5, "vbscript:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 311
    :cond_27
    const-string v5, ""

    goto :goto_3

    .line 318
    .end local v0           #asLower:Ljava/lang/String;
    :cond_2a
    iget v5, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_38

    .line 319
    invoke-direct {p0, p1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->trimWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 325
    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 326
    .local v4, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3e
    if-ge v2, v3, :cond_5b

    .line 327
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 328
    .local v1, c:C
    invoke-direct {p0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->characterIsLegal(C)Z

    move-result v5

    if-nez v5, :cond_52

    .line 329
    iget v5, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_58

    .line 330
    const/16 v1, 0x20

    .line 336
    :cond_52
    :goto_52
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 333
    :cond_58
    const/16 v1, 0x5f

    goto :goto_52

    .line 338
    .end local v1           #c:C
    :cond_5b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method
