.class public Lcom/android/vcard/VCardBuilder;
.super Ljava/lang/Object;
.source "VCardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardBuilder$PostalStruct;
    }
.end annotation


# static fields
.field private static final sAllowedAndroidPropertySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPostalTypePriorityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppendTypeParamName:Z

.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mCharset:Ljava/lang/String;

.field private mEndAppended:Z

.field private final mIsDoCoMo:Z

.field private final mIsJapaneseMobilePhone:Z

.field private final mIsV30OrV40:Z

.field private final mNeedsToConvertPhoneticString:Z

.field private final mOnlyOneNoteFieldIsAvailable:Z

.field private final mRefrainsQPToNameProperties:Z

.field private final mShouldAppendCharsetParam:Z

.field private final mShouldUseQuotedPrintable:Z

.field private final mUsesAndroidProperty:Z

.field private final mUsesDefactProperty:Z

.field private final mVCardCharsetParameter:Ljava/lang/String;

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v1, v3

    const-string v2, "vnd.android.cursor.item/contact_event"

    aput-object v2, v1, v4

    const-string v2, "vnd.android.cursor.item/relation"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardBuilder;->sAllowedAndroidPropertySet:Ljava/util/Set;

    .line 991
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    .line 992
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .line 127
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .parameter "vcardType"
    .parameter "charset"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    .line 137
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "VCardBuilder"

    const-string v1, "Should not use vCard 4.0 when building vCard. It is not officially published yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    .line 143
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    .line 144
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    .line 145
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsJapaneseMobilePhone:Z

    .line 146
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->onlyOneNoteFieldIsAvailable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mOnlyOneNoteFieldIsAvailable:Z

    .line 147
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    .line 148
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->usesDefactProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mUsesDefactProperty:Z

    .line 149
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->shouldRefrainQPToNameProperties(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    .line 150
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->appendTypeParamName(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mAppendTypeParamName:Z

    .line 151
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    .line 157
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "UTF-8"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    .line 160
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 161
    const-string v0, "SHIFT_JIS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 165
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    const-string v0, "SHIFT_JIS"

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 199
    :goto_2
    const-string v0, "CHARSET=SHIFT_JIS"

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    .line 220
    :goto_3
    invoke-virtual {p0}, Lcom/android/vcard/VCardBuilder;->clear()V

    .line 221
    return-void

    :cond_3
    move v0, v2

    .line 142
    goto :goto_0

    :cond_4
    move v0, v2

    .line 157
    goto :goto_1

    .line 175
    :cond_5
    iput-object p2, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 197
    :cond_6
    iput-object p2, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 201
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 202
    const-string v0, "VCardBuilder"

    const-string v1, "Use the charset \"UTF-8\" for export."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 206
    const-string v0, "CHARSET=UTF-8"

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_3

    .line 216
    :cond_8
    iput-object p2, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHARSET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_3
.end method

.method private appendNamePropertiesV40(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 22
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    move v3, v0

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    move v3, v0

    if-eqz v3, :cond_1

    .line 311
    :cond_0
    const-string v3, "VCardBuilder"

    const-string v4, "Invalid flag is used in vCard 4.0 construction. Ignored."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 315
    :cond_2
    const-string v3, "FN"

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :goto_0
    return-object p0

    .line 324
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/vcard/VCardBuilder;->getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v9

    .line 326
    .local v9, contentValues:Landroid/content/ContentValues;
    const-string v3, "data3"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, familyName:Ljava/lang/String;
    const-string v3, "data5"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, middleName:Ljava/lang/String;
    const-string v3, "data2"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 329
    .local v6, givenName:Ljava/lang/String;
    const-string v3, "data4"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 330
    .local v7, prefix:Ljava/lang/String;
    const-string v3, "data6"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 331
    .local v8, suffix:Ljava/lang/String;
    const-string v3, "data1"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 332
    .local v17, formattedName:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 337
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 338
    const-string v3, "FN"

    const-string v4, ""

    .end local v4           #familyName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 341
    .restart local v4       #familyName:Ljava/lang/String;
    :cond_4
    move-object/from16 v4, v17

    .line 344
    :cond_5
    const-string v3, "data9"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 346
    .local v18, phoneticFamilyName:Ljava/lang/String;
    const-string v3, "data8"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 348
    .local v20, phoneticMiddleName:Ljava/lang/String;
    const-string v3, "data7"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 350
    .local v19, phoneticGivenName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 351
    .local v11, escapedFamily:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 352
    .local v13, escapedGiven:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 353
    .local v14, escapedMiddle:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 354
    .local v15, escapedPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 356
    .local v16, escapedSuffix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v10, "N"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 361
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v10, ";"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x3b

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x3b

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 365
    .local v21, sortAs:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v10, "SORT-AS="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Lcom/android/vcard/VCardUtils;->toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .end local v21           #sortAs:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v10, ":"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v10, ";"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v10, ";"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v10, ";"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v10, ";"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v10, "\r\n"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 386
    const-string v3, "VCardBuilder"

    const-string v10, "DISPLAY_NAME is empty."

    invoke-static {v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    move v3, v0

    invoke-static {v3}, Lcom/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v3

    invoke-static/range {v3 .. v8}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 391
    .local v10, escaped:Ljava/lang/String;
    const-string v3, "FN"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .end local v4           #familyName:Ljava/lang/String;
    .end local v10           #escaped:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendPhoneticNameFields(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 393
    .restart local v4       #familyName:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 394
    .local v12, escapedFormatted:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "FN"

    .end local v4           #familyName:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private appendPhoneticNameFields(Landroid/content/ContentValues;)V
    .locals 14
    .parameter "contentValues"

    .prologue
    .line 596
    const-string v12, "data9"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 598
    .local v9, tmpPhoneticFamilyName:Ljava/lang/String;
    const-string v12, "data8"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 600
    .local v11, tmpPhoneticMiddleName:Ljava/lang/String;
    const-string v12, "data7"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 602
    .local v10, tmpPhoneticGivenName:Ljava/lang/String;
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    if-eqz v12, :cond_1

    .line 603
    invoke-static {v9}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 604
    .local v4, phoneticFamilyName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 605
    .local v6, phoneticMiddleName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 613
    .local v5, phoneticGivenName:Ljava/lang/String;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 616
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v12, :cond_0

    .line 617
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "SOUND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-IRMC-N"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    :cond_0
    :goto_1
    return-void

    .line 607
    .end local v4           #phoneticFamilyName:Ljava/lang/String;
    .end local v5           #phoneticGivenName:Ljava/lang/String;
    .end local v6           #phoneticMiddleName:Ljava/lang/String;
    :cond_1
    move-object v4, v9

    .line 608
    .restart local v4       #phoneticFamilyName:Ljava/lang/String;
    move-object v6, v11

    .line 609
    .restart local v6       #phoneticMiddleName:Ljava/lang/String;
    move-object v5, v10

    .restart local v5       #phoneticGivenName:Ljava/lang/String;
    goto :goto_0

    .line 630
    :cond_2
    iget v12, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 722
    :cond_3
    :goto_2
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mUsesDefactProperty:Z

    if-eqz v12, :cond_0

    .line 723
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 724
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_18

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_18

    const/4 v12, 0x1

    move v7, v12

    .line 728
    .local v7, reallyUseQuotedPrintable:Z
    :goto_3
    if-eqz v7, :cond_19

    .line 729
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, encodedPhoneticGivenName:Ljava/lang/String;
    :goto_4
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-PHONETIC-FIRST-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-direct {p0, v12}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 735
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_4
    if-eqz v7, :cond_5

    .line 739
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    :cond_5
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .end local v1           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 747
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_1a

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1a

    const/4 v12, 0x1

    move v7, v12

    .line 751
    .restart local v7       #reallyUseQuotedPrintable:Z
    :goto_5
    if-eqz v7, :cond_1b

    .line 752
    invoke-direct {p0, v6}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 756
    .local v2, encodedPhoneticMiddleName:Ljava/lang/String;
    :goto_6
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-PHONETIC-MIDDLE-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-direct {p0, v12}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 758
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    :cond_7
    if-eqz v7, :cond_8

    .line 762
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    :cond_8
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .end local v2           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 770
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_1c

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1c

    const/4 v12, 0x1

    move v7, v12

    .line 774
    .restart local v7       #reallyUseQuotedPrintable:Z
    :goto_7
    if-eqz v7, :cond_1d

    .line 775
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, encodedPhoneticFamilyName:Ljava/lang/String;
    :goto_8
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-PHONETIC-LAST-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-direct {p0, v12}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 781
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    :cond_a
    if-eqz v7, :cond_b

    .line 785
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    :cond_b
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 632
    .end local v0           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_c
    iget v12, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 633
    iget v12, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12, v4, v6, v5}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 636
    .local v8, sortString:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "SORT-STRING"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    iget v12, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-direct {p0, v12}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 642
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    :cond_d
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 648
    .end local v8           #sortString:Ljava/lang/String;
    :cond_e
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mIsJapaneseMobilePhone:Z

    if-eqz v12, :cond_3

    .line 662
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "SOUND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-IRMC-N"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v12, :cond_15

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_15

    :cond_f
    const/4 v12, 0x1

    move v7, v12

    .line 678
    .restart local v7       #reallyUseQuotedPrintable:Z
    :goto_9
    if-eqz v7, :cond_16

    .line 679
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    .restart local v0       #encodedPhoneticFamilyName:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 681
    .restart local v2       #encodedPhoneticMiddleName:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 688
    .restart local v1       #encodedPhoneticGivenName:Ljava/lang/String;
    :goto_a
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v13, 0x1

    aput-object v2, v12, v13

    const/4 v13, 0x2

    aput-object v1, v12, v13

    invoke-direct {p0, v12}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 690
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :cond_10
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    const/4 v3, 0x1

    .line 696
    .local v3, first:Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 697
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    const/4 v3, 0x0

    .line 700
    :cond_11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 701
    if-eqz v3, :cond_17

    .line 702
    const/4 v3, 0x0

    .line 706
    :goto_b
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    :cond_12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 709
    if-nez v3, :cond_13

    .line 710
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 712
    :cond_13
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    :cond_14
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 666
    .end local v0           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v1           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v2           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v3           #first:Z
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_15
    const/4 v12, 0x0

    move v7, v12

    goto/16 :goto_9

    .line 683
    .restart local v7       #reallyUseQuotedPrintable:Z
    :cond_16
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    .restart local v0       #encodedPhoneticFamilyName:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 685
    .restart local v2       #encodedPhoneticMiddleName:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #encodedPhoneticGivenName:Ljava/lang/String;
    goto/16 :goto_a

    .line 704
    .restart local v3       #first:Z
    :cond_17
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 724
    .end local v0           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v1           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v2           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v3           #first:Z
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_18
    const/4 v12, 0x0

    move v7, v12

    goto/16 :goto_3

    .line 731
    .restart local v7       #reallyUseQuotedPrintable:Z
    :cond_19
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #encodedPhoneticGivenName:Ljava/lang/String;
    goto/16 :goto_4

    .line 747
    .end local v1           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_1a
    const/4 v12, 0x0

    move v7, v12

    goto/16 :goto_5

    .line 754
    .restart local v7       #reallyUseQuotedPrintable:Z
    :cond_1b
    invoke-direct {p0, v6}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #encodedPhoneticMiddleName:Ljava/lang/String;
    goto/16 :goto_6

    .line 770
    .end local v2           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_1c
    const/4 v12, 0x0

    move v7, v12

    goto/16 :goto_7

    .line 777
    .restart local v7       #reallyUseQuotedPrintable:Z
    :cond_1d
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedPhoneticFamilyName:Ljava/lang/String;
    goto/16 :goto_8
.end method

.method private appendPostalsForDoCoMo(Ljava/util/List;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1003
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const v7, 0x7fffffff

    .line 1004
    .local v7, currentPriority:I
    const v1, 0x7fffffff

    .line 1005
    .local v1, currentType:I
    const/4 v3, 0x0

    .line 1006
    .local v3, currentContentValues:Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1007
    .local v6, contentValues:Landroid/content/ContentValues;
    if-eqz v6, :cond_0

    .line 1010
    const-string v0, "data2"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 1011
    .local v11, typeAsInteger:Ljava/lang/Integer;
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 1012
    .local v10, priorityAsInteger:Ljava/lang/Integer;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v9, v0

    .line 1014
    .local v9, priority:I
    :goto_0
    if-ge v9, v7, :cond_0

    .line 1015
    move v7, v9

    .line 1016
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1017
    move-object v3, v6

    .line 1018
    if-nez v9, :cond_0

    .line 1024
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .end local v9           #priority:I
    .end local v10           #priorityAsInteger:Ljava/lang/Integer;
    .end local v11           #typeAsInteger:Ljava/lang/Integer;
    :cond_1
    if-nez v3, :cond_3

    .line 1025
    const-string v0, "VCardBuilder"

    const-string v4, "Should not come here. Must have at least one postal data."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :goto_1
    return-void

    .line 1012
    .restart local v6       #contentValues:Landroid/content/ContentValues;
    .restart local v10       #priorityAsInteger:Ljava/lang/Integer;
    .restart local v11       #typeAsInteger:Ljava/lang/Integer;
    :cond_2
    const v0, 0x7fffffff

    move v9, v0

    goto :goto_0

    .line 1029
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .end local v10           #priorityAsInteger:Ljava/lang/Integer;
    .end local v11           #typeAsInteger:Ljava/lang/Integer;
    :cond_3
    const-string v0, "data3"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1030
    .local v2, label:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    goto :goto_1
.end method

.method private appendPostalsForGeneric(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 1034
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1035
    .local v3, contentValues:Landroid/content/ContentValues;
    if-eqz v3, :cond_0

    .line 1038
    const-string v0, "data2"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1039
    .local v8, typeAsInteger:Ljava/lang/Integer;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 1041
    .local v1, type:I
    :goto_1
    const-string v0, "data3"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1042
    .local v2, label:Ljava/lang/String;
    const-string v0, "is_primary"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1044
    .local v7, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    move v4, v9

    .local v4, isPrimary:Z
    :goto_2
    move-object v0, p0

    .line 1046
    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    goto :goto_0

    .end local v1           #type:I
    .end local v2           #label:Ljava/lang/String;
    .end local v4           #isPrimary:Z
    .end local v7           #isPrimaryAsInteger:Ljava/lang/Integer;
    :cond_1
    move v1, v9

    .line 1039
    goto :goto_1

    .restart local v1       #type:I
    .restart local v2       #label:Ljava/lang/String;
    .restart local v7       #isPrimaryAsInteger:Ljava/lang/Integer;
    :cond_2
    move v4, v5

    .line 1044
    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_2

    .line 1048
    .end local v1           #type:I
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #contentValues:Landroid/content/ContentValues;
    .end local v7           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v8           #typeAsInteger:Ljava/lang/Integer;
    :cond_4
    return-void
.end method

.method private appendTypeParameter(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2047
    return-void
.end method

.method private appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .parameter "builder"
    .parameter "type"

    .prologue
    .line 2054
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mAppendTypeParamName:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v0, :cond_2

    .line 2056
    :cond_1
    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2058
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2059
    return-void
.end method

.method private appendTypeParameters(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2012
    .local p1, types:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 2013
    .local v1, first:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2014
    .local v3, typeValue:Ljava/lang/String;
    iget v4, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2015
    :cond_1
    iget v4, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 2018
    .local v0, encoded:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2022
    if-eqz v1, :cond_3

    .line 2023
    const/4 v1, 0x0

    .line 2027
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 2015
    .end local v0           #encoded:Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->toStringAsV30ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 2025
    .restart local v0       #encoded:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2029
    .end local v0           #encoded:Ljava/lang/String;
    :cond_4
    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->isV21Word(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2032
    if-eqz v1, :cond_5

    .line 2033
    const/4 v1, 0x0

    .line 2037
    :goto_3
    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 2035
    :cond_5
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2040
    .end local v3           #typeValue:Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .locals 4
    .parameter "builder"
    .parameter "type"

    .prologue
    .line 1720
    iget-boolean v1, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v1, :cond_0

    .line 1723
    const-string v1, "VOICE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    :goto_0
    return-void

    .line 1725
    :cond_0
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 1726
    .local v0, phoneType:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1727
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1729
    :cond_1
    const-string v1, "VCardBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported (by vCard) Phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private containsNonEmptyName(Landroid/content/ContentValues;)Z
    .locals 10
    .parameter "contentValues"

    .prologue
    .line 240
    const-string v9, "data3"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, familyName:Ljava/lang/String;
    const-string v9, "data5"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, middleName:Ljava/lang/String;
    const-string v9, "data2"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, givenName:Ljava/lang/String;
    const-string v9, "data4"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 244
    .local v7, prefix:Ljava/lang/String;
    const-string v9, "data6"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 245
    .local v8, suffix:Ljava/lang/String;
    const-string v9, "data9"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, phoneticFamilyName:Ljava/lang/String;
    const-string v9, "data8"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, phoneticMiddleName:Ljava/lang/String;
    const-string v9, "data7"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, phoneticGivenName:Ljava/lang/String;
    const-string v9, "data1"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, displayName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "str"

    .prologue
    .line 2087
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2088
    const-string v5, ""

    .line 2121
    :goto_0
    return-object v5

    .line 2091
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2092
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 2093
    .local v2, index:I
    const/4 v3, 0x0

    .line 2094
    .local v3, lineCount:I
    const/4 v4, 0x0

    .line 2097
    .local v4, strArray:[B
    :try_start_0
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2103
    :cond_1
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 2104
    const-string v5, "=%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-byte v8, v4, v2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2105
    add-int/lit8 v2, v2, 0x1

    .line 2106
    add-int/lit8 v3, v3, 0x3

    .line 2108
    const/16 v5, 0x43

    if-lt v3, v5, :cond_1

    .line 2116
    const-string v5, "=\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2117
    const/4 v3, 0x0

    goto :goto_1

    .line 2098
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 2099
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v5, "VCardBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Charset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be used. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Try default charset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    goto :goto_1

    .line 2121
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "unescaped"

    .prologue
    const/16 v6, 0x5c

    .line 2132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2133
    const-string v5, ""

    .line 2196
    :goto_0
    return-object v5

    .line 2136
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2137
    .local v4, tmpBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2138
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 2139
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2140
    .local v0, ch:C
    sparse-switch v0, :sswitch_data_0

    .line 2191
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2138
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2142
    :sswitch_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2143
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2147
    :sswitch_1
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_2

    .line 2148
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2149
    .local v3, nextChar:C
    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    .line 2161
    .end local v3           #nextChar:C
    :cond_2
    :sswitch_2
    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2165
    :sswitch_3
    iget-boolean v5, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v5, :cond_3

    .line 2166
    const-string v5, "\\\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2174
    :cond_3
    :sswitch_4
    iget-boolean v5, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v5, :cond_4

    .line 2175
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2176
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2178
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2183
    :sswitch_5
    iget-boolean v5, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v5, :cond_5

    .line 2184
    const-string v5, "\\,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2186
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2196
    .end local v0           #ch:C
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 2140
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x2c -> :sswitch_5
        0x3b -> :sswitch_0
        0x3c -> :sswitch_4
        0x3e -> :sswitch_4
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method private getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v4, 0x0

    .line 262
    .local v4, primaryContentValues:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 263
    .local v5, subprimaryContentValues:Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 264
    .local v0, contentValues:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 267
    const-string v6, "is_super_primary"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 268
    .local v3, isSuperPrimary:Ljava/lang/Integer;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_3

    .line 270
    move-object v4, v0

    .line 288
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v3           #isSuperPrimary:Ljava/lang/Integer;
    :cond_1
    if-nez v4, :cond_2

    .line 289
    if-eqz v5, :cond_5

    .line 291
    move-object v4, v5

    .line 298
    :cond_2
    :goto_1
    return-object v4

    .line 272
    .restart local v0       #contentValues:Landroid/content/ContentValues;
    .restart local v3       #isSuperPrimary:Ljava/lang/Integer;
    :cond_3
    if-nez v4, :cond_0

    .line 275
    const-string v6, "is_primary"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 276
    .local v2, isPrimary:Ljava/lang/Integer;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_4

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 278
    move-object v4, v0

    goto :goto_0

    .line 281
    :cond_4
    if-nez v5, :cond_0

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 283
    move-object v5, v0

    goto :goto_0

    .line 294
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #isPrimary:Ljava/lang/Integer;
    .end local v3           #isSuperPrimary:Ljava/lang/Integer;
    :cond_5
    new-instance v4, Landroid/content/ContentValues;

    .end local v4           #primaryContentValues:Landroid/content/ContentValues;
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .restart local v4       #primaryContentValues:Landroid/content/ContentValues;
    goto :goto_1
.end method

.method private varargs shouldAppendCharsetParam([Ljava/lang/String;)Z
    .locals 7
    .parameter "propertyValueList"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2075
    iget-boolean v4, p0, Lcom/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    if-nez v4, :cond_0

    move v4, v5

    .line 2083
    :goto_0
    return v4

    .line 2078
    :cond_0
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 2079
    .local v3, propertyValue:Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    .line 2080
    goto :goto_0

    .line 2078
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #propertyValue:Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 2083
    goto :goto_0
.end method

.method private splitAndTrimPhoneNumbers(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "phoneNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 914
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 916
    .local v4, phoneList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 917
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 918
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 919
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 920
    .local v1, ch:C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x2b

    if-ne v1, v5, :cond_2

    .line 921
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 918
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 922
    :cond_2
    const/16 v5, 0x3b

    if-eq v1, v5, :cond_3

    const/16 v5, 0xa

    if-ne v1, v5, :cond_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 923
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v0       #builder:Ljava/lang/StringBuilder;
    goto :goto_1

    .line 927
    .end local v1           #ch:C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 928
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    :cond_5
    return-object v4
.end method

.method private tryConstructPostalStruct(Landroid/content/ContentValues;)Lcom/android/vcard/VCardBuilder$PostalStruct;
    .locals 26
    .parameter "contentValues"

    .prologue
    .line 1069
    const-string v24, "data5"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1070
    .local v19, rawPoBox:Ljava/lang/String;
    const-string v24, "data6"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1071
    .local v18, rawNeighborhood:Ljava/lang/String;
    const-string v24, "data4"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1072
    .local v22, rawStreet:Ljava/lang/String;
    const-string v24, "data7"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1073
    .local v16, rawLocality:Ljava/lang/String;
    const-string v24, "data8"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1074
    .local v21, rawRegion:Ljava/lang/String;
    const-string v24, "data9"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1075
    .local v20, rawPostalCode:Ljava/lang/String;
    const-string v24, "data10"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1076
    .local v14, rawCountry:Ljava/lang/String;
    const/16 v24, 0x7

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object v13, v0

    const/16 v24, 0x0

    aput-object v19, v13, v24

    const/16 v24, 0x1

    aput-object v18, v13, v24

    const/16 v24, 0x2

    aput-object v22, v13, v24

    const/16 v24, 0x3

    aput-object v16, v13, v24

    const/16 v24, 0x4

    aput-object v21, v13, v24

    const/16 v24, 0x5

    aput-object v20, v13, v24

    const/16 v24, 0x6

    aput-object v14, v13, v24

    .line 1079
    .local v13, rawAddressArray:[Ljava/lang/String;
    invoke-static {v13}, Lcom/android/vcard/VCardUtils;->areAllEmpty([Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 1080
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    invoke-static {v13}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    const/16 v24, 0x1

    move/from16 v23, v24

    .line 1083
    .local v23, reallyUseQuotedPrintable:Z
    :goto_0
    invoke-static {v13}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_1

    const/16 v24, 0x1

    move/from16 v5, v24

    .line 1103
    .local v5, appendCharset:Z
    :goto_1
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1104
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 1105
    const-string v17, ""

    .line 1116
    .local v17, rawLocality2:Ljava/lang/String;
    :goto_2
    if-eqz v23, :cond_5

    .line 1117
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1118
    .local v9, encodedPoBox:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1119
    .local v12, encodedStreet:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1120
    .local v8, encodedLocality:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1121
    .local v11, encodedRegion:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1122
    .local v10, encodedPostalCode:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1132
    .local v6, encodedCountry:Ljava/lang/String;
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1133
    .local v4, addressBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    new-instance v24, Lcom/android/vcard/VCardBuilder$PostalStruct;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move/from16 v1, v23

    move v2, v5

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vcard/VCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    .line 1177
    .end local v4           #addressBuilder:Ljava/lang/StringBuilder;
    .end local v5           #appendCharset:Z
    .end local v6           #encodedCountry:Ljava/lang/String;
    .end local v8           #encodedLocality:Ljava/lang/String;
    .end local v9           #encodedPoBox:Ljava/lang/String;
    .end local v10           #encodedPostalCode:Ljava/lang/String;
    .end local v11           #encodedRegion:Ljava/lang/String;
    .end local v12           #encodedStreet:Ljava/lang/String;
    .end local v17           #rawLocality2:Ljava/lang/String;
    .end local v23           #reallyUseQuotedPrintable:Z
    :goto_4
    return-object v24

    .line 1080
    :cond_0
    const/16 v24, 0x0

    move/from16 v23, v24

    goto/16 :goto_0

    .line 1083
    .restart local v23       #reallyUseQuotedPrintable:Z
    :cond_1
    const/16 v24, 0x0

    move/from16 v5, v24

    goto/16 :goto_1

    .line 1107
    .restart local v5       #appendCharset:Z
    :cond_2
    move-object/from16 v17, v18

    .restart local v17       #rawLocality2:Ljava/lang/String;
    goto/16 :goto_2

    .line 1110
    .end local v17           #rawLocality2:Ljava/lang/String;
    :cond_3
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 1111
    move-object/from16 v17, v16

    .restart local v17       #rawLocality2:Ljava/lang/String;
    goto/16 :goto_2

    .line 1113
    .end local v17           #rawLocality2:Ljava/lang/String;
    :cond_4
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .restart local v17       #rawLocality2:Ljava/lang/String;
    goto/16 :goto_2

    .line 1124
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1125
    .restart local v9       #encodedPoBox:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1126
    .restart local v12       #encodedStreet:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1127
    .restart local v8       #encodedLocality:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1128
    .restart local v11       #encodedRegion:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1129
    .restart local v10       #encodedPostalCode:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1130
    .restart local v6       #encodedCountry:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_3

    .line 1149
    .end local v5           #appendCharset:Z
    .end local v6           #encodedCountry:Ljava/lang/String;
    .end local v8           #encodedLocality:Ljava/lang/String;
    .end local v9           #encodedPoBox:Ljava/lang/String;
    .end local v10           #encodedPostalCode:Ljava/lang/String;
    .end local v11           #encodedRegion:Ljava/lang/String;
    .end local v12           #encodedStreet:Ljava/lang/String;
    .end local v17           #rawLocality2:Ljava/lang/String;
    .end local v23           #reallyUseQuotedPrintable:Z
    :cond_6
    const-string v24, "data1"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1151
    .local v15, rawFormattedAddress:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 1152
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 1154
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v15, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_8

    const/16 v24, 0x1

    move/from16 v23, v24

    .line 1157
    .restart local v23       #reallyUseQuotedPrintable:Z
    :goto_5
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v15, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_9

    const/16 v24, 0x1

    move/from16 v5, v24

    .line 1160
    .restart local v5       #appendCharset:Z
    :goto_6
    if-eqz v23, :cond_a

    .line 1161
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1169
    .local v7, encodedFormattedAddress:Ljava/lang/String;
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1170
    .restart local v4       #addressBuilder:Ljava/lang/StringBuilder;
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    const-string v24, ";"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    new-instance v24, Lcom/android/vcard/VCardBuilder$PostalStruct;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move/from16 v1, v23

    move v2, v5

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vcard/VCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    goto/16 :goto_4

    .line 1154
    .end local v4           #addressBuilder:Ljava/lang/StringBuilder;
    .end local v5           #appendCharset:Z
    .end local v7           #encodedFormattedAddress:Ljava/lang/String;
    .end local v23           #reallyUseQuotedPrintable:Z
    :cond_8
    const/16 v24, 0x0

    move/from16 v23, v24

    goto :goto_5

    .line 1157
    .restart local v23       #reallyUseQuotedPrintable:Z
    :cond_9
    const/16 v24, 0x0

    move/from16 v5, v24

    goto :goto_6

    .line 1163
    .restart local v5       #appendCharset:Z
    :cond_a
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #encodedFormattedAddress:Ljava/lang/String;
    goto :goto_7
.end method


# virtual methods
.method public appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 12
    .parameter "mimeType"
    .parameter "contentValues"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1830
    sget-object v8, Lcom/android/vcard/VCardBuilder;->sAllowedAndroidPropertySet:Ljava/util/Set;

    invoke-interface {v8, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1874
    :goto_0
    return-void

    .line 1833
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1834
    .local v5, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    const/16 v8, 0xf

    if-gt v1, v8, :cond_2

    .line 1835
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1836
    .local v7, value:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 1837
    const-string v7, ""

    .line 1839
    :cond_1
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1834
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1842
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    iget-boolean v8, p0, Lcom/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    if-eqz v8, :cond_5

    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_5

    move v3, v11

    .line 1845
    .local v3, needCharset:Z
    :goto_2
    iget-boolean v8, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v8, :cond_6

    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_6

    move v6, v11

    .line 1848
    .local v6, reallyUseQuotedPrintable:Z
    :goto_3
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "X-ANDROID-CUSTOM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1849
    if-eqz v3, :cond_3

    .line 1850
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1851
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    :cond_3
    if-eqz v6, :cond_4

    .line 1854
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    :cond_4
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1858
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1859
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1861
    .local v4, rawValue:Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 1862
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1870
    .local v0, encodedValue:Ljava/lang/String;
    :goto_5
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .end local v0           #encodedValue:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #needCharset:Z
    .end local v4           #rawValue:Ljava/lang/String;
    .end local v6           #reallyUseQuotedPrintable:Z
    :cond_5
    move v3, v10

    .line 1842
    goto :goto_2

    .restart local v3       #needCharset:Z
    :cond_6
    move v6, v10

    .line 1845
    goto :goto_3

    .line 1868
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #rawValue:Ljava/lang/String;
    .restart local v6       #reallyUseQuotedPrintable:Z
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedValue:Ljava/lang/String;
    goto :goto_5

    .line 1873
    .end local v0           #encodedValue:Ljava/lang/String;
    .end local v4           #rawValue:Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "type"
    .parameter "label"
    .parameter "rawValue"
    .parameter "isPrimary"

    .prologue
    .line 1529
    packed-switch p1, :pswitch_data_0

    .line 1558
    const-string v2, "VCardBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Email type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    const/4 v1, 0x0

    .line 1564
    .local v1, typeAsString:Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1565
    .local v0, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    .line 1566
    const-string v2, "PREF"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1568
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1569
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1572
    :cond_1
    const-string v2, "EMAIL"

    invoke-virtual {p0, v2, v0, p3}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1574
    return-void

    .line 1531
    .end local v0           #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_0
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1532
    const-string v1, "CELL"

    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1533
    .end local v1           #typeAsString:Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1537
    .end local v1           #typeAsString:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    .line 1539
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1542
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_1
    const-string v1, "HOME"

    .line 1543
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1546
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_2
    const-string v1, "WORK"

    .line 1547
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1550
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_3
    const/4 v1, 0x0

    .line 1551
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1554
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_4
    const-string v1, "CELL"

    .line 1555
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1529
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public appendEmails(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 935
    const/4 v3, 0x0

    .line 936
    .local v3, emailAddressExists:Z
    if-eqz p1, :cond_5

    .line 937
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 938
    .local v0, addressSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 939
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v10, "data1"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 940
    .local v2, emailAddress:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 941
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 943
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 946
    const-string v10, "data2"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 947
    .local v9, typeAsObject:Ljava/lang/Integer;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v8, v10

    .line 949
    .local v8, type:I
    :goto_1
    const-string v10, "data3"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 950
    .local v7, label:Ljava/lang/String;
    const-string v10, "is_primary"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 951
    .local v6, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_3

    move v5, v13

    .line 953
    .local v5, isPrimary:Z
    :goto_2
    const/4 v3, 0x1

    .line 954
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 955
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 956
    invoke-virtual {p0, v8, v7, v2, v5}, Lcom/android/vcard/VCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 947
    .end local v5           #isPrimary:Z
    .end local v6           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v7           #label:Ljava/lang/String;
    .end local v8           #type:I
    :cond_2
    const/4 v10, 0x3

    move v8, v10

    goto :goto_1

    .restart local v6       #isPrimaryAsInteger:Ljava/lang/Integer;
    .restart local v7       #label:Ljava/lang/String;
    .restart local v8       #type:I
    :cond_3
    move v5, v12

    .line 951
    goto :goto_2

    :cond_4
    move v5, v12

    goto :goto_2

    .line 961
    .end local v0           #addressSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v2           #emailAddress:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v7           #label:Ljava/lang/String;
    .end local v8           #type:I
    .end local v9           #typeAsObject:Ljava/lang/Integer;
    :cond_5
    if-nez v3, :cond_6

    iget-boolean v10, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v10, :cond_6

    .line 962
    const-string v10, ""

    const-string v11, ""

    invoke-virtual {p0, v13, v10, v11, v12}, Lcom/android/vcard/VCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 965
    :cond_6
    return-object p0
.end method

.method public appendEvents(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1378
    if-eqz p1, :cond_2

    .line 1379
    const/4 v9, 0x0

    .line 1380
    .local v9, primaryBirthday:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1381
    .local v10, secondaryBirthday:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1382
    .local v1, contentValues:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 1385
    const-string v11, "data2"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1387
    .local v3, eventTypeAsInteger:Ljava/lang/Integer;
    if-eqz v3, :cond_3

    .line 1388
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1392
    .local v2, eventType:I
    :goto_1
    const/4 v11, 0x3

    if-ne v2, v11, :cond_a

    .line 1393
    const-string v11, "data1"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1394
    .local v0, birthdayCandidate:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1397
    const-string v11, "is_super_primary"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1399
    .local v8, isSuperPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_4

    move v7, v13

    .line 1401
    .local v7, isSuperPrimary:Z
    :goto_2
    if-eqz v7, :cond_6

    .line 1403
    move-object v9, v0

    .line 1422
    .end local v0           #birthdayCandidate:Ljava/lang/String;
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v2           #eventType:I
    .end local v3           #eventTypeAsInteger:Ljava/lang/Integer;
    .end local v7           #isSuperPrimary:Z
    .end local v8           #isSuperPrimaryAsInteger:Ljava/lang/Integer;
    :cond_1
    if-eqz v9, :cond_b

    .line 1423
    const-string v11, "BDAY"

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #primaryBirthday:Ljava/lang/String;
    .end local v10           #secondaryBirthday:Ljava/lang/String;
    :cond_2
    :goto_3
    return-object p0

    .line 1390
    .restart local v1       #contentValues:Landroid/content/ContentValues;
    .restart local v3       #eventTypeAsInteger:Ljava/lang/Integer;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v9       #primaryBirthday:Ljava/lang/String;
    .restart local v10       #secondaryBirthday:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x2

    .restart local v2       #eventType:I
    goto :goto_1

    .restart local v0       #birthdayCandidate:Ljava/lang/String;
    .restart local v8       #isSuperPrimaryAsInteger:Ljava/lang/Integer;
    :cond_4
    move v7, v12

    .line 1399
    goto :goto_2

    :cond_5
    move v7, v12

    goto :goto_2

    .line 1406
    .restart local v7       #isSuperPrimary:Z
    :cond_6
    const-string v11, "is_primary"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1408
    .local v6, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_7

    move v5, v13

    .line 1410
    .local v5, isPrimary:Z
    :goto_4
    if-eqz v5, :cond_9

    .line 1412
    move-object v9, v0

    goto :goto_0

    .end local v5           #isPrimary:Z
    :cond_7
    move v5, v12

    .line 1408
    goto :goto_4

    :cond_8
    move v5, v12

    goto :goto_4

    .line 1413
    .restart local v5       #isPrimary:Z
    :cond_9
    if-nez v10, :cond_0

    .line 1415
    move-object v10, v0

    goto :goto_0

    .line 1417
    .end local v0           #birthdayCandidate:Ljava/lang/String;
    .end local v5           #isPrimary:Z
    .end local v6           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v7           #isSuperPrimary:Z
    .end local v8           #isSuperPrimaryAsInteger:Ljava/lang/Integer;
    :cond_a
    iget-boolean v11, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v11, :cond_0

    .line 1419
    const-string v11, "vnd.android.cursor.item/contact_event"

    invoke-virtual {p0, v11, v1}, Lcom/android/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1425
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v2           #eventType:I
    .end local v3           #eventTypeAsInteger:Ljava/lang/Integer;
    :cond_b
    if-eqz v10, :cond_2

    .line 1426
    const-string v11, "BDAY"

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public appendIms(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v13, 0x0

    .line 1183
    if-eqz p1, :cond_8

    .line 1184
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1185
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v11, "data5"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1186
    .local v8, protocolAsObject:Ljava/lang/Integer;
    if-eqz v8, :cond_0

    .line 1189
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/android/vcard/VCardUtils;->getPropertyNameForIm(I)Ljava/lang/String;

    move-result-object v7

    .line 1190
    .local v7, propertyName:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1193
    const-string v11, "data1"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1194
    .local v1, data:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1195
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1197
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1202
    const-string v11, "data2"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 1203
    .local v9, typeAsInteger:Ljava/lang/Integer;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_1
    packed-switch v11, :pswitch_data_0

    .line 1219
    const/4 v10, 0x0

    .line 1225
    .local v10, typeAsString:Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1226
    .local v6, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1227
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    :cond_2
    const-string v11, "is_primary"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1230
    .local v4, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_6

    const/4 v11, 0x1

    move v3, v11

    .line 1232
    .local v3, isPrimary:Z
    :goto_3
    if-eqz v3, :cond_3

    .line 1233
    const-string v11, "PREF"

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    :cond_3
    invoke-virtual {p0, v7, v6, v1}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 1203
    .end local v3           #isPrimary:Z
    .end local v4           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v6           #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #typeAsString:Ljava/lang/String;
    :cond_4
    const/4 v11, 0x3

    goto :goto_1

    .line 1205
    :pswitch_0
    const-string v10, "HOME"

    .line 1206
    .restart local v10       #typeAsString:Ljava/lang/String;
    goto :goto_2

    .line 1209
    .end local v10           #typeAsString:Ljava/lang/String;
    :pswitch_1
    const-string v10, "WORK"

    .line 1210
    .restart local v10       #typeAsString:Ljava/lang/String;
    goto :goto_2

    .line 1213
    .end local v10           #typeAsString:Ljava/lang/String;
    :pswitch_2
    const-string v11, "data3"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1214
    .local v5, label:Ljava/lang/String;
    if-eqz v5, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "X-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 1215
    .restart local v10       #typeAsString:Ljava/lang/String;
    :goto_4
    goto :goto_2

    .line 1214
    .end local v10           #typeAsString:Ljava/lang/String;
    :cond_5
    const/4 v11, 0x0

    move-object v10, v11

    goto :goto_4

    .end local v5           #label:Ljava/lang/String;
    .restart local v4       #isPrimaryAsInteger:Ljava/lang/Integer;
    .restart local v6       #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #typeAsString:Ljava/lang/String;
    :cond_6
    move v3, v13

    .line 1230
    goto :goto_3

    :cond_7
    move v3, v13

    goto :goto_3

    .line 1239
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v6           #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #propertyName:Ljava/lang/String;
    .end local v8           #protocolAsObject:Ljava/lang/Integer;
    .end local v9           #typeAsInteger:Ljava/lang/Integer;
    .end local v10           #typeAsString:Ljava/lang/String;
    :cond_8
    return-object p0

    .line 1203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "propertyName"
    .parameter "rawValue"

    .prologue
    const/4 v0, 0x0

    .line 1913
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1914
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .parameter "propertyName"
    .parameter "rawValue"
    .parameter "needCharset"
    .parameter "reallyUseQuotedPrintable"

    .prologue
    .line 1923
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1924
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter "propertyName"
    .parameter
    .parameter "rawValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1928
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1929
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 3
    .parameter "propertyName"
    .parameter
    .parameter "rawValue"
    .parameter "needCharset"
    .parameter "reallyUseQuotedPrintable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 1934
    .local p2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1936
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 1939
    :cond_0
    if-eqz p4, :cond_1

    .line 1940
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1941
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1945
    :cond_1
    if-eqz p5, :cond_2

    .line 1946
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1947
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1948
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1955
    .local v0, encodedValue:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1956
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1957
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1958
    return-void

    .line 1952
    .end local v0           #encodedValue:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "propertyName"
    .parameter "rawValue"

    .prologue
    .line 1878
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1879
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter "propertyName"
    .parameter
    .parameter "rawValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1888
    new-array v0, v2, [Ljava/lang/String;

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v4, v2

    .line 1890
    .local v4, needCharset:Z
    :goto_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v5, v2

    .local v5, reallyUseQuotedPrintable:Z
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1893
    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1895
    return-void

    .end local v4           #needCharset:Z
    .end local v5           #reallyUseQuotedPrintable:Z
    :cond_0
    move v4, v1

    .line 1888
    goto :goto_0

    .restart local v4       #needCharset:Z
    :cond_1
    move v5, v1

    .line 1890
    goto :goto_1
.end method

.method public appendNameProperties(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 24
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    move v3, v0

    invoke-static {v3}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    invoke-direct/range {p0 .. p1}, Lcom/android/vcard/VCardBuilder;->appendNamePropertiesV40(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v3

    .line 585
    :goto_0
    return-object v3

    .line 415
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 416
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    move v3, v0

    invoke-static {v3}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 420
    const-string v3, "N"

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v3, "FN"

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    move-object/from16 v3, p0

    .line 425
    goto :goto_0

    .line 422
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    move v3, v0

    if-eqz v3, :cond_2

    .line 423
    const-string v3, "N"

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 428
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/vcard/VCardBuilder;->getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v9

    .line 430
    .local v9, contentValues:Landroid/content/ContentValues;
    const-string v3, "data3"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 431
    .local v4, familyName:Ljava/lang/String;
    const-string v3, "data5"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 432
    .local v5, middleName:Ljava/lang/String;
    const-string v3, "data2"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 433
    .local v6, givenName:Ljava/lang/String;
    const-string v3, "data4"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 434
    .local v7, prefix:Ljava/lang/String;
    const-string v3, "data6"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 435
    .local v8, suffix:Ljava/lang/String;
    const-string v3, "data1"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 437
    .local v10, displayName:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 438
    :cond_5
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v3, v11

    const/4 v11, 0x1

    aput-object v6, v3, v11

    const/4 v11, 0x2

    aput-object v5, v3, v11

    const/4 v11, 0x3

    aput-object v7, v3, v11

    const/4 v11, 0x4

    aput-object v8, v3, v11

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v20

    .line 440
    .local v20, reallyAppendCharsetParameterToName:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    move v3, v0

    if-nez v3, :cond_c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v3, v11

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v6, v3, v11

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v3, v11

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v7, v3, v11

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v8, v3, v11

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_6
    const/4 v3, 0x1

    move/from16 v23, v3

    .line 449
    .local v23, reallyUseQuotedPrintableToName:Z
    :goto_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 450
    move-object/from16 v18, v10

    .line 456
    .local v18, formattedName:Ljava/lang/String;
    :goto_3
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v18, v3, v10

    .end local v10           #displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v19

    .line 458
    .local v19, reallyAppendCharsetParameterToFN:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    move v3, v0

    if-nez v3, :cond_e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v18, v3, v10

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x1

    move/from16 v22, v3

    .line 467
    .local v22, reallyUseQuotedPrintableToFN:Z
    :goto_4
    if-eqz v23, :cond_f

    .line 468
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 469
    .local v12, encodedFamily:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 470
    .local v14, encodedGiven:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 471
    .local v15, encodedMiddle:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 472
    .local v16, encodedPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 481
    .local v17, encodedSuffix:Ljava/lang/String;
    :goto_5
    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    .line 485
    .local v13, encodedFormattedname:Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "N"

    .end local v4           #familyName:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    move v3, v0

    if-eqz v3, :cond_11

    .line 487
    if-eqz v20, :cond_7

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :cond_7
    if-eqz v23, :cond_8

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "FN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    if-eqz v19, :cond_9

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    :cond_9
    if-eqz v22, :cond_a

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .end local v12           #encodedFamily:Ljava/lang/String;
    .end local v13           #encodedFormattedname:Ljava/lang/String;
    .end local v14           #encodedGiven:Ljava/lang/String;
    .end local v15           #encodedMiddle:Ljava/lang/String;
    .end local v16           #encodedPrefix:Ljava/lang/String;
    .end local v17           #encodedSuffix:Ljava/lang/String;
    .end local v18           #formattedName:Ljava/lang/String;
    .end local v19           #reallyAppendCharsetParameterToFN:Z
    .end local v20           #reallyAppendCharsetParameterToName:Z
    .end local v22           #reallyUseQuotedPrintableToFN:Z
    .end local v23           #reallyUseQuotedPrintableToName:Z
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendPhoneticNameFields(Landroid/content/ContentValues;)V

    move-object/from16 v3, p0

    .line 585
    goto/16 :goto_0

    .line 440
    .restart local v4       #familyName:Ljava/lang/String;
    .restart local v10       #displayName:Ljava/lang/String;
    .restart local v20       #reallyAppendCharsetParameterToName:Z
    :cond_c
    const/4 v3, 0x0

    move/from16 v23, v3

    goto/16 :goto_2

    .line 452
    .restart local v23       #reallyUseQuotedPrintableToName:Z
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    move v3, v0

    invoke-static {v3}, Lcom/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v3

    invoke-static/range {v3 .. v8}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .restart local v18       #formattedName:Ljava/lang/String;
    goto/16 :goto_3

    .line 458
    .end local v10           #displayName:Ljava/lang/String;
    .restart local v19       #reallyAppendCharsetParameterToFN:Z
    :cond_e
    const/4 v3, 0x0

    move/from16 v22, v3

    goto/16 :goto_4

    .line 474
    .restart local v22       #reallyUseQuotedPrintableToFN:Z
    :cond_f
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 475
    .restart local v12       #encodedFamily:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 476
    .restart local v14       #encodedGiven:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 477
    .restart local v15       #encodedMiddle:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 478
    .restart local v16       #encodedPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .restart local v17       #encodedSuffix:Ljava/lang/String;
    goto/16 :goto_5

    .line 481
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto/16 :goto_6

    .line 503
    .end local v4           #familyName:Ljava/lang/String;
    .restart local v13       #encodedFormattedname:Ljava/lang/String;
    :cond_11
    if-eqz v20, :cond_12

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    :cond_12
    if-eqz v23, :cond_13

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 537
    .end local v12           #encodedFamily:Ljava/lang/String;
    .end local v13           #encodedFormattedname:Ljava/lang/String;
    .end local v14           #encodedGiven:Ljava/lang/String;
    .end local v15           #encodedMiddle:Ljava/lang/String;
    .end local v16           #encodedPrefix:Ljava/lang/String;
    .end local v17           #encodedSuffix:Ljava/lang/String;
    .end local v18           #formattedName:Ljava/lang/String;
    .end local v19           #reallyAppendCharsetParameterToFN:Z
    .end local v20           #reallyAppendCharsetParameterToName:Z
    .end local v22           #reallyUseQuotedPrintableToFN:Z
    .end local v23           #reallyUseQuotedPrintableToName:Z
    .restart local v4       #familyName:Ljava/lang/String;
    .restart local v10       #displayName:Ljava/lang/String;
    :cond_14
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 538
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    move v3, v0

    if-nez v3, :cond_18

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    .end local v4           #familyName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x1

    move/from16 v21, v3

    .line 541
    .local v21, reallyUseQuotedPrintableToDisplayName:Z
    :goto_9
    if-eqz v21, :cond_19

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 547
    .local v11, encodedDisplayName:Ljava/lang/String;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "N"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_15
    if-eqz v21, :cond_16

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "FN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 538
    .end local v11           #encodedDisplayName:Ljava/lang/String;
    .end local v21           #reallyUseQuotedPrintableToDisplayName:Z
    :cond_18
    const/4 v3, 0x0

    move/from16 v21, v3

    goto/16 :goto_9

    .line 541
    .restart local v21       #reallyUseQuotedPrintableToDisplayName:Z
    :cond_19
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto/16 :goto_a

    .line 577
    .end local v21           #reallyUseQuotedPrintableToDisplayName:Z
    .restart local v4       #familyName:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    move v3, v0

    invoke-static {v3}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 578
    const-string v3, "N"

    const-string v4, ""

    .end local v4           #familyName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v3, "FN"

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 580
    .restart local v4       #familyName:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    move v3, v0

    if-eqz v3, :cond_b

    .line 581
    const-string v3, "N"

    const-string v4, ""

    .end local v4           #familyName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public appendNickNames(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 797
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-boolean v4, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v4, :cond_1

    .line 798
    const/4 v3, 0x0

    .line 805
    .local v3, useAndroidProperty:Z
    :goto_0
    if-eqz p1, :cond_3

    .line 806
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 807
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "data1"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 808
    .local v2, nickname:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 811
    if-eqz v3, :cond_2

    .line 812
    const-string v4, "vnd.android.cursor.item/nickname"

    invoke-virtual {p0, v4, v0}, Lcom/android/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 799
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #nickname:Ljava/lang/String;
    .end local v3           #useAndroidProperty:Z
    :cond_1
    iget-boolean v4, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v4, :cond_3

    .line 800
    const/4 v3, 0x1

    .restart local v3       #useAndroidProperty:Z
    goto :goto_0

    .line 814
    .restart local v0       #contentValues:Landroid/content/ContentValues;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #nickname:Ljava/lang/String;
    :cond_2
    const-string v4, "NICKNAME"

    invoke-virtual {p0, v4, v2}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 818
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #nickname:Ljava/lang/String;
    .end local v3           #useAndroidProperty:Z
    :cond_3
    return-object p0
.end method

.method public appendNotes(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1329
    if-eqz p1, :cond_4

    .line 1330
    iget-boolean v8, p0, Lcom/android/vcard/VCardBuilder;->mOnlyOneNoteFieldIsAvailable:Z

    if-eqz v8, :cond_7

    .line 1331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1332
    .local v4, noteBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1333
    .local v1, first:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1334
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v8, "data1"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1335
    .local v3, note:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1336
    const-string v3, ""

    .line 1338
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 1339
    if-eqz v1, :cond_2

    .line 1340
    const/4 v1, 0x0

    .line 1344
    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1342
    :cond_2
    const/16 v8, 0xa

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1347
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v3           #note:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1350
    .local v5, noteStr:Ljava/lang/String;
    new-array v8, v10, [Ljava/lang/String;

    aput-object v5, v8, v9

    invoke-static {v8}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    move v7, v10

    .line 1352
    .local v7, shouldAppendCharsetInfo:Z
    :goto_2
    iget-boolean v8, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v8, :cond_6

    new-array v8, v10, [Ljava/lang/String;

    aput-object v5, v8, v9

    invoke-static {v8}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    move v6, v10

    .line 1355
    .local v6, reallyUseQuotedPrintable:Z
    :goto_3
    const-string v8, "NOTE"

    invoke-virtual {p0, v8, v5, v7, v6}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1372
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #noteBuilder:Ljava/lang/StringBuilder;
    .end local v5           #noteStr:Ljava/lang/String;
    .end local v6           #reallyUseQuotedPrintable:Z
    .end local v7           #shouldAppendCharsetInfo:Z
    :cond_4
    return-object p0

    .restart local v1       #first:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #noteBuilder:Ljava/lang/StringBuilder;
    .restart local v5       #noteStr:Ljava/lang/String;
    :cond_5
    move v7, v9

    .line 1350
    goto :goto_2

    .restart local v7       #shouldAppendCharsetInfo:Z
    :cond_6
    move v6, v9

    .line 1352
    goto :goto_3

    .line 1358
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #noteBuilder:Ljava/lang/StringBuilder;
    .end local v5           #noteStr:Ljava/lang/String;
    .end local v7           #shouldAppendCharsetInfo:Z
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1359
    .restart local v0       #contentValues:Landroid/content/ContentValues;
    const-string v8, "data1"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1360
    .restart local v5       #noteStr:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1361
    new-array v8, v10, [Ljava/lang/String;

    aput-object v5, v8, v9

    invoke-static {v8}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    move v7, v10

    .line 1363
    .restart local v7       #shouldAppendCharsetInfo:Z
    :goto_5
    iget-boolean v8, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v8, :cond_a

    new-array v8, v10, [Ljava/lang/String;

    aput-object v5, v8, v9

    invoke-static {v8}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    move v6, v10

    .line 1366
    .restart local v6       #reallyUseQuotedPrintable:Z
    :goto_6
    const-string v8, "NOTE"

    invoke-virtual {p0, v8, v5, v7, v6}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_4

    .end local v6           #reallyUseQuotedPrintable:Z
    .end local v7           #shouldAppendCharsetInfo:Z
    :cond_9
    move v7, v9

    .line 1361
    goto :goto_5

    .restart local v7       #shouldAppendCharsetInfo:Z
    :cond_a
    move v6, v9

    .line 1363
    goto :goto_6
.end method

.method public appendOrganizations(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1261
    if-eqz p1, :cond_b

    .line 1262
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1263
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v7, "data1"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1264
    .local v0, company:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1265
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1267
    :cond_1
    const-string v7, "data5"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1268
    .local v2, department:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1269
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1271
    :cond_2
    const-string v7, "data4"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1272
    .local v6, title:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1273
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1276
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1277
    .local v4, orgBuilder:Ljava/lang/StringBuilder;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1278
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1281
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 1282
    const/16 v7, 0x3b

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1284
    :cond_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1287
    .local v5, orgline:Ljava/lang/String;
    const-string v7, "ORG"

    new-array v8, v11, [Ljava/lang/String;

    aput-object v5, v8, v10

    invoke-static {v8}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    move v8, v11

    :goto_1
    iget-boolean v9, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v9, :cond_8

    new-array v9, v11, [Ljava/lang/String;

    aput-object v5, v9, v10

    invoke-static {v9}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    move v9, v11

    :goto_2
    invoke-virtual {p0, v7, v5, v8, v9}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1292
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1293
    const-string v7, "TITLE"

    new-array v8, v11, [Ljava/lang/String;

    aput-object v6, v8, v10

    invoke-static {v8}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    move v8, v11

    :goto_3
    iget-boolean v9, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v9, :cond_a

    new-array v9, v11, [Ljava/lang/String;

    aput-object v6, v9, v10

    invoke-static {v9}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    move v9, v11

    :goto_4
    invoke-virtual {p0, v7, v6, v8, v9}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_7
    move v8, v10

    .line 1287
    goto :goto_1

    :cond_8
    move v9, v10

    goto :goto_2

    :cond_9
    move v8, v10

    .line 1293
    goto :goto_3

    :cond_a
    move v9, v10

    goto :goto_4

    .line 1300
    .end local v0           #company:Ljava/lang/String;
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v2           #department:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #orgBuilder:Ljava/lang/StringBuilder;
    .end local v5           #orgline:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    :cond_b
    return-object p0
.end method

.method public appendPhones(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 24
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 822
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v14, 0x0

    .line 823
    .local v14, phoneLineExists:Z
    if-eqz p1, :cond_9

    .line 824
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 825
    .local v17, phoneSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 826
    .local v6, contentValues:Landroid/content/ContentValues;
    const-string v20, "data2"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 827
    .local v19, typeAsObject:Ljava/lang/Integer;
    const-string v20, "data3"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 828
    .local v12, label:Ljava/lang/String;
    const-string v20, "is_primary"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 829
    .local v11, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-lez v20, :cond_3

    const/16 v20, 0x1

    move/from16 v10, v20

    .line 831
    .local v10, isPrimary:Z
    :goto_1
    const-string v20, "data1"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 832
    .local v15, phoneNumber:Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 833
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 835
    :cond_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 841
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v18, v20

    .line 842
    .local v18, type:I
    :goto_2
    const/16 v20, 0x6

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 844
    :cond_2
    const/4 v14, 0x1

    .line 845
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 846
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 847
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v12

    move-object v3, v15

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 829
    .end local v10           #isPrimary:Z
    .end local v15           #phoneNumber:Ljava/lang/String;
    .end local v18           #type:I
    :cond_3
    const/16 v20, 0x0

    move/from16 v10, v20

    goto :goto_1

    :cond_4
    const/16 v20, 0x0

    move/from16 v10, v20

    goto :goto_1

    .line 841
    .restart local v10       #isPrimary:Z
    .restart local v15       #phoneNumber:Ljava/lang/String;
    :cond_5
    const/16 v20, 0x1

    move/from16 v18, v20

    goto :goto_2

    .line 850
    .restart local v18       #type:I
    :cond_6
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->splitAndTrimPhoneNumbers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 851
    .local v16, phoneNumberList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 854
    const/4 v14, 0x1

    .line 855
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 856
    .local v5, actualPhoneNumber:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 857
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/vcard/VCardUtils;->getPhoneNumberFormat(I)I

    move-result v13

    .line 858
    .local v13, phoneFormat:I
    invoke-static {v5, v13}, Lcom/android/vcard/VCardUtils$PhoneNumberUtilsPort;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 864
    .local v7, formatted:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_8

    const-string v20, "tel:"

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 867
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "tel:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 871
    :cond_8
    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 872
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v12

    move-object v3, v7

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 881
    .end local v5           #actualPhoneNumber:Ljava/lang/String;
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .end local v7           #formatted:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #isPrimary:Z
    .end local v11           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v12           #label:Ljava/lang/String;
    .end local v13           #phoneFormat:I
    .end local v15           #phoneNumber:Ljava/lang/String;
    .end local v16           #phoneNumberList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #phoneSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18           #type:I
    .end local v19           #typeAsObject:Ljava/lang/Integer;
    :cond_9
    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 882
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v21, ""

    const-string v22, ""

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 885
    :cond_a
    return-object p0
.end method

.method public appendPhotoLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "encodedValue"
    .parameter "photoType"

    .prologue
    .line 1739
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1740
    .local v6, tmpBuilder:Ljava/lang/StringBuilder;
    const-string v8, "PHOTO"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    iget-boolean v8, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v8, :cond_1

    .line 1743
    const-string v8, "ENCODING=B"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    :goto_0
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1748
    invoke-direct {p0, v6, p2}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1749
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1753
    .local v7, tmpStr:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #tmpBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1754
    .restart local v6       #tmpBuilder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1755
    .local v2, lineCount:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    .line 1756
    .local v1, length:I
    const/16 v8, 0x4b

    const-string v9, "\r\n"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v4, v8, v9

    .line 1758
    .local v4, maxNumForFirstLine:I
    const-string v8, " "

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v5, v4, v8

    .line 1759
    .local v5, maxNumInGeneral:I
    move v3, v4

    .line 1760
    .local v3, maxNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1761
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1762
    add-int/lit8 v2, v2, 0x1

    .line 1763
    if-le v2, v3, :cond_0

    .line 1764
    const-string v8, "\r\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    move v3, v5

    .line 1767
    const/4 v2, 0x0

    .line 1760
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1745
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #lineCount:I
    .end local v3           #maxNum:I
    .end local v4           #maxNumForFirstLine:I
    .end local v5           #maxNumInGeneral:I
    .end local v7           #tmpStr:Ljava/lang/String;
    :cond_1
    const-string v8, "ENCODING=BASE64"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1770
    .restart local v0       #i:I
    .restart local v1       #length:I
    .restart local v2       #lineCount:I
    .restart local v3       #maxNum:I
    .restart local v4       #maxNumForFirstLine:I
    .restart local v5       #maxNumInGeneral:I
    .restart local v7       #tmpStr:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1771
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    return-void
.end method

.method public appendPhotos(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1304
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_2

    .line 1305
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1306
    .local v0, contentValues:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 1309
    const-string v5, "data15"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1310
    .local v1, data:[B
    if-eqz v1, :cond_0

    .line 1313
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->guessImageType([B)Ljava/lang/String;

    move-result-object v4

    .line 1314
    .local v4, photoType:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1315
    const-string v5, "VCardBuilder"

    const-string v6, "Unknown photo type. Ignored."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1319
    :cond_1
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 1320
    .local v3, photoString:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1321
    invoke-virtual {p0, v3, v4}, Lcom/android/vcard/VCardBuilder;->appendPhotoLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1325
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #data:[B
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #photoString:Ljava/lang/String;
    .end local v4           #photoType:Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V
    .locals 8
    .parameter "type"
    .parameter "label"
    .parameter "contentValues"
    .parameter "isPrimary"
    .parameter "emitEveryTime"

    .prologue
    .line 1455
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardBuilder;->tryConstructPostalStruct(Landroid/content/ContentValues;)Lcom/android/vcard/VCardBuilder$PostalStruct;

    move-result-object v3

    .line 1456
    .local v3, postalStruct:Lcom/android/vcard/VCardBuilder$PostalStruct;
    if-nez v3, :cond_6

    .line 1457
    if-eqz p5, :cond_5

    .line 1458
    const/4 v4, 0x0

    .line 1459
    .local v4, reallyUseQuotedPrintable:Z
    const/4 v1, 0x0

    .line 1460
    .local v1, appendCharset:Z
    const-string v0, ""

    .line 1471
    .local v0, addressValue:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1472
    .local v2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    .line 1473
    const-string v5, "PREF"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1475
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1499
    const-string v5, "VCardBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown StructuredPostal type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, "ADR"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1506
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 1509
    :cond_2
    if-eqz v1, :cond_3

    .line 1514
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    :cond_3
    if-eqz v4, :cond_4

    .line 1518
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    :cond_4
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    .end local v0           #addressValue:Ljava/lang/String;
    .end local v1           #appendCharset:Z
    .end local v2           #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #reallyUseQuotedPrintable:Z
    :cond_5
    return-void

    .line 1465
    :cond_6
    iget-boolean v4, v3, Lcom/android/vcard/VCardBuilder$PostalStruct;->reallyUseQuotedPrintable:Z

    .line 1466
    .restart local v4       #reallyUseQuotedPrintable:Z
    iget-boolean v1, v3, Lcom/android/vcard/VCardBuilder$PostalStruct;->appendCharset:Z

    .line 1467
    .restart local v1       #appendCharset:Z
    iget-object v0, v3, Lcom/android/vcard/VCardBuilder$PostalStruct;->addressData:Ljava/lang/String;

    .restart local v0       #addressValue:Ljava/lang/String;
    goto :goto_0

    .line 1477
    .restart local v2       #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    const-string v5, "HOME"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1481
    :pswitch_2
    const-string v5, "WORK"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1485
    :pswitch_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1491
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1475
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public appendPostals(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 969
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 970
    :cond_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_1

    .line 971
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "ADR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "HOME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    :cond_1
    :goto_0
    return-object p0

    .line 978
    :cond_2
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_3

    .line 979
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->appendPostalsForDoCoMo(Ljava/util/List;)V

    goto :goto_0

    .line 981
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->appendPostalsForGeneric(Ljava/util/List;)V

    goto :goto_0
.end method

.method public appendRelation(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1434
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1435
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1436
    .local v0, contentValues:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 1439
    const-string v2, "vnd.android.cursor.item/relation"

    invoke-virtual {p0, v2, v0}, Lcom/android/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1442
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-object p0
.end method

.method public appendSipAddresses(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v7, 0x4

    .line 1784
    iget-boolean v5, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v5, :cond_2

    .line 1785
    const/4 v4, 0x0

    .line 1792
    .local v4, useXProperty:Z
    :goto_0
    if-eqz p1, :cond_6

    .line 1793
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1794
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v5, "data1"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1795
    .local v3, sipAddress:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1798
    if-eqz v4, :cond_3

    .line 1800
    const-string v5, "sip:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1801
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 1804
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1807
    :cond_1
    const-string v5, "X-SIP"

    invoke-virtual {p0, v5, v3}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1786
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #sipAddress:Ljava/lang/String;
    .end local v4           #useXProperty:Z
    :cond_2
    iget-boolean v5, p0, Lcom/android/vcard/VCardBuilder;->mUsesDefactProperty:Z

    if-eqz v5, :cond_6

    .line 1787
    const/4 v4, 0x1

    .restart local v4       #useXProperty:Z
    goto :goto_0

    .line 1809
    .restart local v0       #contentValues:Landroid/content/ContentValues;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #sipAddress:Ljava/lang/String;
    :cond_3
    const-string v5, "sip:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1810
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1813
    :cond_4
    iget v5, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v5}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1816
    const-string v2, "TEL"

    .line 1821
    .local v2, propertyName:Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v2, v3}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1819
    .end local v2           #propertyName:Ljava/lang/String;
    :cond_5
    const-string v2, "IMPP"

    .restart local v2       #propertyName:Ljava/lang/String;
    goto :goto_2

    .line 1825
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #propertyName:Ljava/lang/String;
    .end local v3           #sipAddress:Ljava/lang/String;
    .end local v4           #useXProperty:Z
    :cond_6
    return-object p0
.end method

.method public appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "typeAsInteger"
    .parameter "label"
    .parameter "encodedValue"
    .parameter "isPrimary"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1578
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "TEL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1582
    if-nez p1, :cond_2

    .line 1583
    const/4 v1, 0x7

    .line 1588
    .local v1, type:I
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1589
    .local v0, parameterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    packed-switch v1, :pswitch_data_0

    .line 1701
    :cond_0
    :goto_1
    :pswitch_0
    if-eqz p4, :cond_1

    .line 1702
    const-string v3, "PREF"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1705
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1706
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/vcard/VCardBuilder;->appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    .line 1711
    :goto_2
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    return-void

    .line 1585
    .end local v0           #parameterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #type:I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1       #type:I
    goto :goto_0

    .line 1591
    .restart local v0       #parameterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "HOME"

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1596
    :pswitch_2
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1601
    :pswitch_3
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "HOME"

    aput-object v4, v3, v5

    const-string v4, "FAX"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1606
    :pswitch_4
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v4, v3, v5

    const-string v4, "FAX"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1611
    :pswitch_5
    const-string v3, "CELL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1615
    :pswitch_6
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v3, :cond_3

    .line 1618
    const-string v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1620
    :cond_3
    const-string v3, "PAGER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1625
    :pswitch_7
    const-string v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1629
    :pswitch_8
    const-string v3, "CAR"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1634
    :pswitch_9
    const-string v3, "WORK"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1635
    const/4 p4, 0x1

    .line 1636
    goto/16 :goto_1

    .line 1639
    :pswitch_a
    const-string v3, "ISDN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1643
    :pswitch_b
    const/4 p4, 0x1

    .line 1644
    goto/16 :goto_1

    .line 1647
    :pswitch_c
    const-string v3, "FAX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1651
    :pswitch_d
    const-string v3, "TLX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1655
    :pswitch_e
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v4, v3, v5

    const-string v4, "CELL"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1660
    :pswitch_f
    const-string v3, "WORK"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1662
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v3, :cond_4

    .line 1663
    const-string v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1665
    :cond_4
    const-string v3, "PAGER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1670
    :pswitch_10
    const-string v3, "MSG"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1674
    :pswitch_11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1676
    const-string v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1677
    :cond_5
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1678
    const-string v3, "CELL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1679
    :cond_6
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v3, :cond_7

    .line 1681
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1683
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 1684
    .local v2, upperLabel:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->isValidInV21ButUnknownToContactsPhoteType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1685
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1686
    :cond_8
    new-array v3, v6, [Ljava/lang/String;

    aput-object p2, v3, v5

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1689
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1708
    .end local v2           #upperLabel:Ljava/lang/String;
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    goto/16 :goto_2

    .line 1589
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public appendWebsites(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1243
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_2

    .line 1244
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1245
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v3, "data1"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1246
    .local v2, website:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1247
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1252
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1253
    const-string v3, "URL"

    invoke-virtual {p0, v3, v2}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1257
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #website:Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mEndAppended:Z

    .line 226
    const-string v0, "BEGIN"

    const-string v1, "VCARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "VERSION"

    const-string v1, "4.0"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 229
    :cond_0
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const-string v0, "VERSION"

    const-string v1, "3.0"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_1
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    const-string v0, "VCardBuilder"

    const-string v1, "Unknown vCard version detected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_2
    const-string v0, "VERSION"

    const-string v1, "2.1"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2201
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mEndAppended:Z

    if-nez v0, :cond_1

    .line 2202
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    .line 2203
    const-string v0, "X-CLASS"

    const-string v1, "PUBLIC"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    const-string v0, "X-REDUCTION"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    const-string v0, "X-NO"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    const-string v0, "X-DCM-HMN-MODE"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    :cond_0
    const-string v0, "END"

    const-string v1, "VCARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mEndAppended:Z

    .line 2211
    :cond_1
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
