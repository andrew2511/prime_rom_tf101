.class public Landroid/telephony/SmsCbMessage;
.super Ljava/lang/Object;
.source "SmsCbMessage.java"


# static fields
.field private static final CARRIAGE_RETURN:C = '\r'

.field public static final GEOGRAPHICAL_SCOPE_CELL_WIDE:I = 0x3

.field public static final GEOGRAPHICAL_SCOPE_CELL_WIDE_IMMEDIATE:I = 0x0

.field public static final GEOGRAPHICAL_SCOPE_LA_WIDE:I = 0x2

.field public static final GEOGRAPHICAL_SCOPE_PLMN_WIDE:I = 0x1

.field private static final LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

.field private static final LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;


# instance fields
.field private mBody:Ljava/lang/String;

.field private mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

.field private mLanguage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 68
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "de"

    aput-object v1, v0, v4

    const-string v1, "en"

    aput-object v1, v0, v5

    const-string v1, "it"

    aput-object v1, v0, v6

    const-string v1, "fr"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "sv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "el"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    sput-object v0, Landroid/telephony/SmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    .line 76
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cs"

    aput-object v1, v0, v4

    const-string v1, "he"

    aput-object v1, v0, v5

    const-string v1, "ar"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ru"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "is"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    sput-object v0, Landroid/telephony/SmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>([B)V
    .registers 3
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    .line 91
    invoke-direct {p0, p1}, Landroid/telephony/SmsCbMessage;->parseBody([B)V

    .line 92
    return-void
.end method

.method public static createFromPdu([B)Landroid/telephony/SmsCbMessage;
    .registers 3
    .parameter "pdu"

    .prologue
    .line 59
    :try_start_0
    new-instance v1, Landroid/telephony/SmsCbMessage;

    invoke-direct {v1, p0}, Landroid/telephony/SmsCbMessage;-><init>([B)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    .line 61
    :goto_5
    return-object v1

    .line 60
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 61
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_5
.end method

.method private parseBody([B)V
    .registers 12
    .parameter "pdu"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 154
    const/4 v1, 0x0

    .line 158
    .local v1, hasLanguageIndicator:Z
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v4, v4, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    packed-switch v4, :pswitch_data_e0

    .line 220
    :pswitch_10
    const/4 v0, 0x1

    .line 224
    .local v0, encoding:I
    :goto_11
    packed-switch v0, :pswitch_data_104

    .line 255
    :cond_14
    :goto_14
    :pswitch_14
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    if-eqz v4, :cond_d9

    .line 257
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v2, v4, v7

    .local v2, i:I
    :goto_20
    if-ltz v2, :cond_36

    .line 258
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_d5

    .line 259
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    .line 266
    .end local v2           #i:I
    :cond_36
    :goto_36
    return-void

    .line 160
    .end local v0           #encoding:I
    :pswitch_37
    const/4 v0, 0x1

    .line 161
    .restart local v0       #encoding:I
    sget-object v4, Landroid/telephony/SmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    iget-object v5, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v5, v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0xf

    aget-object v4, v4, v5

    iput-object v4, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    goto :goto_11

    .line 165
    .end local v0           #encoding:I
    :pswitch_45
    const/4 v1, 0x1

    .line 166
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v4, v4, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v4, v4, 0xf

    if-ne v4, v7, :cond_50

    .line 167
    const/4 v0, 0x3

    .restart local v0       #encoding:I
    goto :goto_11

    .line 169
    .end local v0           #encoding:I
    :cond_50
    const/4 v0, 0x1

    .line 171
    .restart local v0       #encoding:I
    goto :goto_11

    .line 174
    .end local v0           #encoding:I
    :pswitch_52
    const/4 v0, 0x1

    .line 175
    .restart local v0       #encoding:I
    sget-object v4, Landroid/telephony/SmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    iget-object v5, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v5, v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0xf

    aget-object v4, v4, v5

    iput-object v4, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    goto :goto_11

    .line 179
    .end local v0           #encoding:I
    :pswitch_60
    const/4 v0, 0x1

    .line 180
    .restart local v0       #encoding:I
    goto :goto_11

    .line 184
    .end local v0           #encoding:I
    :pswitch_62
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v4, v4, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v4, v4, 0xc

    shr-int/lit8 v4, v4, 0x2

    packed-switch v4, :pswitch_data_10e

    .line 195
    const/4 v0, 0x1

    .line 196
    .restart local v0       #encoding:I
    goto :goto_11

    .line 186
    .end local v0           #encoding:I
    :pswitch_6f
    const/4 v0, 0x2

    .line 187
    .restart local v0       #encoding:I
    goto :goto_11

    .line 190
    .end local v0           #encoding:I
    :pswitch_71
    const/4 v0, 0x3

    .line 191
    .restart local v0       #encoding:I
    goto :goto_11

    .line 207
    .end local v0           #encoding:I
    :pswitch_73
    const/4 v0, 0x0

    .line 208
    .restart local v0       #encoding:I
    goto :goto_11

    .line 211
    .end local v0           #encoding:I
    :pswitch_75
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v4, v4, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v4, v4, 0x4

    shr-int/lit8 v4, v4, 0x2

    if-ne v4, v7, :cond_81

    .line 212
    const/4 v0, 0x2

    .restart local v0       #encoding:I
    goto :goto_11

    .line 214
    .end local v0           #encoding:I
    :cond_81
    const/4 v0, 0x1

    .line 216
    .restart local v0       #encoding:I
    goto :goto_11

    .line 226
    :pswitch_83
    array-length v4, p1

    sub-int/2addr v4, v8

    mul-int/lit8 v4, v4, 0x8

    div-int/lit8 v4, v4, 0x7

    invoke-static {p1, v8, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    .line 229
    if-eqz v1, :cond_14

    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    if-eqz v4, :cond_14

    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_14

    .line 230
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v4, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    .line 231
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    goto/16 :goto_14

    .line 236
    :pswitch_b0
    const/4 v3, 0x6

    .line 238
    .local v3, offset:I
    if-eqz v1, :cond_c0

    array-length v4, p1

    const/16 v5, 0x8

    if-lt v4, v5, :cond_c0

    .line 239
    invoke-static {p1, v8, v6}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    .line 241
    add-int/lit8 v3, v3, 0x2

    .line 245
    :cond_c0
    :try_start_c0
    new-instance v4, Ljava/lang/String;

    array-length v5, p1

    const v6, 0xfffe

    and-int/2addr v5, v6

    sub-int/2addr v5, v3

    const-string/jumbo v6, "utf-16"

    invoke-direct {v4, p1, v3, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;
    :try_end_d0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c0 .. :try_end_d0} :catch_d2

    goto/16 :goto_14

    .line 246
    :catch_d2
    move-exception v4

    goto/16 :goto_14

    .line 257
    .end local v3           #offset:I
    .restart local v2       #i:I
    :cond_d5
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_20

    .line 264
    .end local v2           #i:I
    :cond_d9
    const-string v4, ""

    iput-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    goto/16 :goto_36

    .line 158
    nop

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_37
        :pswitch_45
        :pswitch_52
        :pswitch_60
        :pswitch_62
        :pswitch_62
        :pswitch_73
        :pswitch_73
        :pswitch_10
        :pswitch_73
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_73
        :pswitch_75
    .end packed-switch

    .line 224
    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_83
        :pswitch_14
        :pswitch_b0
    .end packed-switch

    .line 184
    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_71
    .end packed-switch
.end method


# virtual methods
.method public getGeographicalScope()I
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    return v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageCode()I
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    return v0
.end method

.method public getMessageIdentifier()I
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    return v0
.end method

.method public getUpdateNumber()I
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    return v0
.end method
