.class public Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
.super Ljava/lang/Object;
.source "Newspaper.java"


# instance fields
.field public Countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Country;",
            ">;"
        }
    .end annotation
.end field

.field public latestIssueActivationDate:Ljava/util/Date;

.field public latestIssueDate:Ljava/util/Date;

.field private mBackgroundColor:I

.field private mCid:Ljava/lang/String;

.field private mCountryISOCode:Ljava/lang/String;

.field private mEnableSmart:Z

.field private mExportAllowed:Z

.field private mHasSupplements:Ljava/lang/Boolean;

.field private mIsFavorite:Z

.field private mIsFree:Z

.field private mIsRightToLeft:Z

.field private mLanguage:Ljava/lang/String;

.field private mMedia:Ljava/lang/String;

.field private mParentCid:Ljava/lang/String;

.field private mParentName:Ljava/lang/String;

.field private mPrintingAllowed:Z

.field private mRate:I

.field private mReadingAllowed:Z

.field private mSchedule:Ljava/lang/String;

.field private mServiceId:J

.field private mSubscribed:Z

.field private mSupplementName:Ljava/lang/String;

.field private mSupplements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mHasSupplements:Ljava/lang/Boolean;

    .line 16
    return-void
.end method

.method public static create(JLorg/xml/sax/Attributes;)Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    .locals 4
    .parameter "serviceId"
    .parameter "attributes"

    .prologue
    .line 213
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    invoke-direct {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;-><init>()V

    .line 214
    .local v0, newspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    iput-wide p0, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mServiceId:J

    .line 215
    const-string v1, "cid"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mCid:Ljava/lang/String;

    .line 216
    const-string v1, "title"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mTitle:Ljava/lang/String;

    .line 217
    const-string v1, "parent-name"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mParentName:Ljava/lang/String;

    .line 218
    const-string v1, "reading-allowed"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getBoolAttrValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mReadingAllowed:Z

    .line 219
    const-string v1, "printing-allowed"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getBoolAttrValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mPrintingAllowed:Z

    .line 220
    const-string v1, "export-allowed"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getBoolAttrValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mExportAllowed:Z

    .line 221
    const-string v1, "enable-smart"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getBoolAttrValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mEnableSmart:Z

    .line 222
    const-string v1, "image-background-color"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getIntAttrValue(Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mBackgroundColor:I

    .line 223
    const-string v1, "media"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mMedia:Ljava/lang/String;

    .line 224
    const-string v1, "is-right-to-left"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getBoolAttrValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mIsRightToLeft:Z

    .line 225
    const-string v1, "rate"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getIntAttrValue(Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mRate:I

    .line 226
    const-string v1, "supplement-name"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mSupplementName:Ljava/lang/String;

    .line 227
    const-string v1, "schedule"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mSchedule:Ljava/lang/String;

    .line 228
    const-string v1, "subscribed"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getBoolAttrValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mSubscribed:Z

    .line 229
    const-string v1, "countryISOCode"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mCountryISOCode:Ljava/lang/String;

    .line 230
    const-string v1, "language"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mLanguage:Ljava/lang/String;

    .line 231
    const-string v1, "is-favorite"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getBoolAttrValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mIsFavorite:Z

    .line 232
    const-string v1, "is-free"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getBoolAttrValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mIsFree:Z

    .line 233
    const-string v1, "parent-cid"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mParentCid:Ljava/lang/String;

    .line 234
    return-object v0
.end method

.method private static getBoolAttrValue(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 237
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getIntAttrValue(Ljava/lang/String;II)I
    .locals 2
    .parameter "value"
    .parameter "radix"
    .parameter "defaultValue"

    .prologue
    .line 240
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, p2

    .line 245
    :goto_0
    return v1

    .line 242
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, p2

    .line 245
    goto :goto_0
.end method

.method public static getNewspaper(JLjava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    .locals 2
    .parameter "serviceId"
    .parameter "cid"

    .prologue
    .line 146
    invoke-static {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspaperDbAdapter;->getNewspaper(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getNewspapers(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 147
    .local v0, newspapers:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 148
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    move-object v1, p0

    goto :goto_0
.end method

.method public static getNewspapers(J)Ljava/util/List;
    .locals 1
    .parameter "serviceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspaperDbAdapter;->getNewspapers(J)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getNewspapers(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getNewspapers(Landroid/database/Cursor;)Ljava/util/List;
    .locals 27
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    if-nez p0, :cond_0

    const/16 p0, 0x0

    .line 209
    .end local p0
    :goto_0
    return-object p0

    .line 152
    .restart local p0
    :cond_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 153
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    .line 154
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 155
    const/16 p0, 0x0

    goto :goto_0

    .line 158
    :cond_1
    const/16 v23, 0x0

    .line 160
    .local v23, result:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    const-string v3, "service_id"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 161
    .local v19, idxServiceId:I
    const-string v3, "cid"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 162
    .local v4, idxCid:I
    const-string v3, "title"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 163
    .local v22, idxTitle:I
    const-string v3, "parent_name"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 164
    .local v14, idxParentName:I
    const-string v3, "reading_allowed"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 165
    .local v17, idxReadingAllowed:I
    const-string v3, "printing_allowed"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 166
    .local v15, idxPrintingAllowed:I
    const-string v3, "export_allowed"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 167
    .local v7, idxExportAllowed:I
    const-string v3, "enable_smart"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 168
    .local v6, idxEnableSmart:I
    const-string v3, "background_color"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 169
    .local v3, idxBackgroundColor:I
    const-string v5, "media"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 170
    .local v12, idxMedia:I
    const-string v5, "media"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 171
    .local v10, idxIsRightToLeft:I
    const-string v5, "rate"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 172
    .local v16, idxRate:I
    const-string v5, "supplement_name"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 173
    .local v21, idxSupplementName:I
    const-string v5, "schedule"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 174
    .local v18, idxSchedule:I
    const-string v5, "subscribed"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 175
    .local v20, idxSubscribed:I
    const-string v5, "country_iso_code"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 176
    .local v5, idxCountryISOCode:I
    const-string v8, "title_is_favorite"

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 177
    .local v8, idxIsFavorite:I
    const-string v9, "language"

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 178
    .local v11, idxLanguage:I
    const-string v9, "parent_cid"

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 179
    .local v13, idxParentCid:I
    const-string v9, "title_is_free"

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .local v9, idxIsFree:I
    move-object/from16 v24, v23

    .line 181
    .end local v23           #result:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    .local v24, result:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    :goto_1
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-nez v23, :cond_2

    .line 207
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    .line 208
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object/from16 p0, v24

    .line 209
    goto/16 :goto_0

    .line 182
    :cond_2
    new-instance v23, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    invoke-direct/range {v23 .. v23}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;-><init>()V

    .line 183
    .local v23, newspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mServiceId:J

    .line 184
    move-object/from16 v0, p0

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mCid:Ljava/lang/String;

    .line 185
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mTitle:Ljava/lang/String;

    .line 186
    move-object/from16 v0, p0

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mParentName:Ljava/lang/String;

    .line 187
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_4

    const/16 v25, 0x1

    :goto_2
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mReadingAllowed:Z

    .line 188
    move-object/from16 v0, p0

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_5

    const/16 v25, 0x1

    :goto_3
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mPrintingAllowed:Z

    .line 189
    move-object/from16 v0, p0

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_6

    const/16 v25, 0x1

    :goto_4
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mExportAllowed:Z

    .line 190
    move-object/from16 v0, p0

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_7

    const/16 v25, 0x1

    :goto_5
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mEnableSmart:Z

    .line 191
    move-object/from16 v0, p0

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mBackgroundColor:I

    .line 192
    move-object/from16 v0, p0

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mMedia:Ljava/lang/String;

    .line 193
    move-object/from16 v0, p0

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_8

    const/16 v25, 0x1

    :goto_6
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mIsRightToLeft:Z

    .line 194
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mRate:I

    .line 195
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mSupplementName:Ljava/lang/String;

    .line 196
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mSchedule:Ljava/lang/String;

    .line 197
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_9

    const/16 v25, 0x1

    :goto_7
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mSubscribed:Z

    .line 198
    move-object/from16 v0, p0

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mCountryISOCode:Ljava/lang/String;

    .line 199
    move-object/from16 v0, p0

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_a

    const/16 v25, 0x1

    :goto_8
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mIsFavorite:Z

    .line 200
    move-object/from16 v0, p0

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mLanguage:Ljava/lang/String;

    .line 201
    move-object/from16 v0, p0

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mParentCid:Ljava/lang/String;

    .line 202
    move-object/from16 v0, p0

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_b

    const/16 v25, 0x1

    :goto_9
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mIsFree:Z

    .line 204
    if-nez v24, :cond_3

    new-instance v24, Ljava/util/ArrayList;

    .end local v24           #result:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .restart local v24       #result:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    :cond_3
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 187
    :cond_4
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 188
    :cond_5
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 189
    :cond_6
    const/16 v25, 0x0

    goto/16 :goto_4

    .line 190
    :cond_7
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 193
    :cond_8
    const/16 v25, 0x0

    goto/16 :goto_6

    .line 197
    :cond_9
    const/16 v25, 0x0

    goto :goto_7

    .line 199
    :cond_a
    const/16 v25, 0x0

    goto :goto_8

    .line 202
    :cond_b
    const/16 v25, 0x0

    goto :goto_9
.end method

.method public static getNewspapersCount(J)I
    .locals 1
    .parameter "serviceId"

    .prologue
    .line 250
    invoke-static {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspaperDbAdapter;->getNewspapersCount(J)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mBackgroundColor:I

    return v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mCid:Ljava/lang/String;

    return-object v0
.end method

.method public getCountries()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Country;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    iget-wide v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mServiceId:J

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mCid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspapersToCountriesDbAdapter;->getCountries(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getCountries(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
    .locals 3

    .prologue
    .line 274
    iget-wide v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mServiceId:J

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mCountryISOCode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getCountry(JLjava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    move-result-object v0

    return-object v0
.end method

.method public getCountryISOCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mCountryISOCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 277
    iget-wide v1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mServiceId:J

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mCountryISOCode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getCountry(JLjava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    move-result-object v0

    .line 278
    .local v0, country:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 279
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getEnableSmart()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mEnableSmart:Z

    return v0
.end method

.method public getExportAllowed()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mExportAllowed:Z

    return v0
.end method

.method public getIsRightToLeft()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mIsRightToLeft:Z

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getMedia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mMedia:Ljava/lang/String;

    return-object v0
.end method

.method public getParentCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mParentCid:Ljava/lang/String;

    return-object v0
.end method

.method public getParentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mParentName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrintingAllowed()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mPrintingAllowed:Z

    return v0
.end method

.method public getRate()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mRate:I

    return v0
.end method

.method public getReadingAllowed()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mReadingAllowed:Z

    return v0
.end method

.method public getSchedule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mSchedule:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mServiceId:J

    return-wide v0
.end method

.method public getSubscribed()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mSubscribed:Z

    return v0
.end method

.method public getSupplementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mSupplementName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplements()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mSupplements:Ljava/util/List;

    if-nez v0, :cond_0

    .line 268
    iget-wide v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mServiceId:J

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mCid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspaperDbAdapter;->getSupplements(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getNewspapers(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mSupplements:Ljava/util/List;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mSupplements:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hasSupplements()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 255
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mHasSupplements:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mSupplements:Ljava/util/List;

    if-nez v0, :cond_2

    .line 257
    new-instance v0, Ljava/lang/Boolean;

    iget-wide v1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mServiceId:J

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mCid:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspaperDbAdapter;->countSupplements(JLjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    move v1, v5

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mHasSupplements:Ljava/lang/Boolean;

    .line 262
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mHasSupplements:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    move v1, v4

    .line 257
    goto :goto_0

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mSupplements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v5

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mHasSupplements:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_2
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mIsFavorite:Z

    return v0
.end method

.method public isFree()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mIsFree:Z

    return v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .parameter "cid"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mCid:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setCountryISOCode(Ljava/lang/String;)V
    .locals 0
    .parameter "countryISOCode"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mCountryISOCode:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setEnableSmart(Z)V
    .locals 0
    .parameter "smartEnabled"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mEnableSmart:Z

    .line 79
    return-void
.end method

.method public setIsFavorite(Z)V
    .locals 0
    .parameter "isFaforite"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mIsFavorite:Z

    .line 124
    return-void
.end method

.method public setParentCid(Ljava/lang/String;)V
    .locals 0
    .parameter "parentCid"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mParentCid:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setParentName(Ljava/lang/String;)V
    .locals 0
    .parameter "parentName"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mParentName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setServiceId(J)V
    .locals 0
    .parameter "serviceId"

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mServiceId:J

    .line 24
    return-void
.end method

.method public setSupplementName(Ljava/lang/String;)V
    .locals 0
    .parameter "supplementName"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mSupplementName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->mTitle:Ljava/lang/String;

    .line 40
    return-void
.end method
