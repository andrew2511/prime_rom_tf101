.class public Lcom/android/exchange/provider/ExchangeDirectoryProvider;
.super Landroid/content/ContentProvider;
.source "ExchangeDirectoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;,
        Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;
    }
.end annotation


# static fields
.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field final mAccountIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 73
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 77
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "directories"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "contacts/filter/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "contacts/lookup/*/entities"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "contacts/lookup/*/#/entities"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "data/emails/filter/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->mAccountIdMap:Ljava/util/HashMap;

    .line 102
    return-void
.end method


# virtual methods
.method buildGalResultCursor([Ljava/lang/String;Lcom/android/exchange/provider/GalResult;)Landroid/database/Cursor;
    .locals 19
    .parameter "projection"
    .parameter "galResult"

    .prologue
    .line 347
    const/4 v8, -0x1

    .line 348
    .local v8, displayNameIndex:I
    const/4 v3, -0x1

    .line 349
    .local v3, alternateDisplayNameIndex:I
    const/4 v9, -0x1

    .line 350
    .local v9, emailIndex:I
    const/4 v13, -0x1

    .line 351
    .local v13, idIndex:I
    const/4 v15, -0x1

    .line 353
    .local v15, lookupIndex:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 354
    aget-object v4, p1, v12

    .line 355
    .local v4, column:Ljava/lang/String;
    const-string v17, "display_name"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "display_name"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 357
    :cond_0
    move v8, v12

    .line 353
    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 358
    :cond_2
    const-string v17, "display_name_alt"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 359
    move v3, v12

    goto :goto_1

    .line 360
    :cond_3
    const-string v17, "data1"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 361
    move v9, v12

    goto :goto_1

    .line 362
    :cond_4
    const-string v17, "_id"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 363
    move v13, v12

    goto :goto_1

    .line 364
    :cond_5
    const-string v17, "lookup"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 365
    move v15, v12

    goto :goto_1

    .line 369
    .end local v4           #column:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 374
    .local v16, row:[Ljava/lang/Object;
    new-instance v6, Landroid/database/MatrixCursor;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 375
    .local v6, cursor:Landroid/database/MatrixCursor;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 376
    .local v5, count:I
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v5, :cond_10

    .line 377
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/exchange/provider/GalResult$GalData;

    .line 378
    .local v11, galDataRow:Lcom/android/exchange/provider/GalResult$GalData;
    const-string v17, "firstName"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 379
    .local v10, firstName:Ljava/lang/String;
    const-string v17, "lastName"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 380
    .local v14, lastName:Ljava/lang/String;
    const-string v17, "displayName"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 382
    .local v7, displayName:Ljava/lang/String;
    if-nez v7, :cond_7

    .line 383
    if-eqz v10, :cond_d

    if-eqz v14, :cond_d

    .line 384
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 391
    :cond_7
    :goto_3
    const-string v17, "displayName"

    move-object v0, v11

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const/16 v17, -0x1

    move v0, v8

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 394
    aput-object v7, v16, v8

    .line 396
    :cond_8
    const/16 v17, -0x1

    move v0, v3

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    .line 399
    if-eqz v10, :cond_f

    if-eqz v14, :cond_f

    .line 400
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v3

    .line 405
    :cond_9
    :goto_4
    const/16 v17, -0x1

    move v0, v9

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    .line 406
    const-string v17, "emailAddress"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v9

    .line 408
    :cond_a
    const/16 v17, -0x1

    move v0, v13

    move/from16 v1, v17

    if-eq v0, v1, :cond_b

    .line 409
    add-int/lit8 v17, v12, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v16, v13

    .line 411
    :cond_b
    const/16 v17, -0x1

    move v0, v15

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    .line 414
    invoke-virtual {v11}, Lcom/android/exchange/provider/GalResult$GalData;->toPackedString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v15

    .line 416
    :cond_c
    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 376
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 385
    :cond_d
    if-eqz v10, :cond_e

    .line 386
    move-object v7, v10

    goto :goto_3

    .line 387
    :cond_e
    if-eqz v14, :cond_7

    .line 388
    move-object v7, v14

    goto :goto_3

    .line 402
    :cond_f
    aput-object v7, v16, v3

    goto :goto_4

    .line 418
    .end local v7           #displayName:Ljava/lang/String;
    .end local v10           #firstName:Ljava/lang/String;
    .end local v11           #galDataRow:Lcom/android/exchange/provider/GalResult$GalData;
    .end local v14           #lastName:Ljava/lang/String;
    :cond_10
    return-object v6
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 433
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getAccountIdByName(Landroid/content/Context;Ljava/lang/String;)J
    .locals 11
    .parameter "context"
    .parameter "accountName"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v6, 0x0

    .line 186
    iget-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->mAccountIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 187
    .local v8, accountId:Ljava/lang/Long;
    if-nez v8, :cond_0

    .line 188
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "emailAddress=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v6

    const/4 v5, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v8

    .line 191
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->mAccountIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 423
    sget-object v1, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 424
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 428
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 426
    :pswitch_0
    const-string v1, "vnd.android.cursor.item/contact"

    goto :goto_0

    .line 424
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 438
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 46
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 201
    sget-object v12, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v42

    .line 207
    .local v42, match:I
    packed-switch v42, :pswitch_data_0

    .line 343
    :goto_0
    const/4 v12, 0x0

    .end local p0
    :goto_1
    return-object v12

    .line 210
    .restart local p0
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v12

    const-string v13, "com.android.exchange"

    invoke-virtual {v12, v13}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v25

    .line 212
    .local v25, accounts:[Landroid/accounts/Account;
    new-instance v5, Landroid/database/MatrixCursor;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 213
    .local v5, cursor:Landroid/database/MatrixCursor;
    if-eqz v25, :cond_9

    .line 214
    move-object/from16 v26, v25

    .local v26, arr$:[Landroid/accounts/Account;
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v39, v0

    .local v39, len$:I
    const/16 v38, 0x0

    .local v38, i$:I
    :goto_2
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_9

    aget-object v21, v26, v38

    .line 215
    .local v21, account:Landroid/accounts/Account;
    move-object/from16 v0, p2

    array-length v0, v0

    move v12, v0

    move v0, v12

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    .line 217
    .local v45, row:[Ljava/lang/Object;
    const/16 v37, 0x0

    .local v37, i:I
    :goto_3
    move-object/from16 v0, p2

    array-length v0, v0

    move v12, v0

    move/from16 v0, v37

    move v1, v12

    if-ge v0, v1, :cond_8

    .line 218
    aget-object v31, p2, v37

    .line 219
    .local v31, column:Ljava/lang/String;
    const-string v12, "accountName"

    move-object/from16 v0, v31

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 220
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v12, v0

    aput-object v12, v45, v37

    .line 217
    :cond_0
    :goto_4
    add-int/lit8 v37, v37, 0x1

    goto :goto_3

    .line 221
    :cond_1
    const-string v12, "accountType"

    move-object/from16 v0, v31

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 222
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v12, v0

    aput-object v12, v45, v37

    goto :goto_4

    .line 223
    :cond_2
    const-string v12, "typeResourceId"

    move-object/from16 v0, v31

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 224
    const/16 v28, 0x0

    .line 226
    .local v28, bundle:Landroid/os/Bundle;
    :try_start_0
    const-string v24, "com.android.exchange"

    .line 227
    .local v24, accountType:Ljava/lang/String;
    new-instance v12, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v28

    .line 233
    .end local v24           #accountType:Ljava/lang/String;
    :goto_5
    const v33, 0x7f050001

    .line 234
    .local v33, exchangeName:I
    if-eqz v28, :cond_3

    const-string v12, "com.android.email.EXCHANGE_CONFIGURATION_USE_ALTERNATE_STRINGS"

    const/4 v13, 0x1

    move-object/from16 v0, v28

    move-object v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_3

    .line 237
    const/high16 v33, 0x7f05

    .line 239
    :cond_3
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v45, v37

    goto :goto_4

    .line 240
    .end local v28           #bundle:Landroid/os/Bundle;
    .end local v33           #exchangeName:I
    :cond_4
    const-string v12, "displayName"

    move-object/from16 v0, v31

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 243
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v10, v0

    .line 244
    .local v10, accountName:Ljava/lang/String;
    const/16 v12, 0x40

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v27

    .line 245
    .local v27, atIndex:I
    const/4 v12, -0x1

    move/from16 v0, v27

    move v1, v12

    if-eq v0, v1, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x2

    sub-int/2addr v12, v13

    move/from16 v0, v27

    move v1, v12

    if-ge v0, v1, :cond_5

    .line 246
    add-int/lit8 v12, v27, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v35

    .line 248
    .local v35, firstLetter:C
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v12

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v27, 0x2

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v45, v37

    goto/16 :goto_4

    .line 250
    .end local v35           #firstLetter:C
    :cond_5
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v12, v0

    aput-object v12, v45, v37

    goto/16 :goto_4

    .line 252
    .end local v10           #accountName:Ljava/lang/String;
    .end local v27           #atIndex:I
    :cond_6
    const-string v12, "exportSupport"

    move-object/from16 v0, v31

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 253
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v45, v37

    goto/16 :goto_4

    .line 254
    :cond_7
    const-string v12, "shortcutSupport"

    move-object/from16 v0, v31

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 255
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v45, v37

    goto/16 :goto_4

    .line 258
    .end local v31           #column:Ljava/lang/String;
    :cond_8
    move-object v0, v5

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 214
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_2

    .end local v21           #account:Landroid/accounts/Account;
    .end local v26           #arr$:[Landroid/accounts/Account;
    .end local v37           #i:I
    .end local v38           #i$:I
    .end local v39           #len$:I
    .end local v45           #row:[Ljava/lang/Object;
    :cond_9
    move-object v12, v5

    .line 261
    goto/16 :goto_1

    .line 266
    .end local v5           #cursor:Landroid/database/MatrixCursor;
    .end local v25           #accounts:[Landroid/accounts/Account;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v34

    .line 268
    .local v34, filter:Ljava/lang/String;
    if-eqz v34, :cond_a

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_b

    .line 269
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 272
    :cond_b
    const-string v12, "account_name"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 273
    .restart local v10       #accountName:Ljava/lang/String;
    if-nez v10, :cond_c

    .line 274
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 278
    :cond_c
    const-string v12, "limit"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 279
    .local v41, limitString:Ljava/lang/String;
    const/16 v40, 0x14

    .line 280
    .local v40, limit:I
    if-eqz v41, :cond_d

    .line 282
    :try_start_1
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v40

    .line 286
    :goto_6
    if-gtz v40, :cond_d

    .line 287
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Limit not valid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 283
    :catch_0
    move-exception v32

    .line 284
    .local v32, e:Ljava/lang/NumberFormatException;
    const/16 v40, 0x0

    goto :goto_6

    .line 291
    .end local v32           #e:Ljava/lang/NumberFormatException;
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v29

    .line 294
    .local v29, callingId:J
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getAccountIdByName(Landroid/content/Context;Ljava/lang/String;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v22

    .line 295
    .local v22, accountId:J
    const-wide/16 v12, -0x1

    cmp-long v12, v22, v12

    if-nez v12, :cond_e

    .line 297
    const/4 v12, 0x0

    .line 307
    :goto_7
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 301
    :cond_e
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object v0, v12

    move-wide/from16 v1, v22

    move-object/from16 v3, v34

    move/from16 v4, v40

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasSyncService;->searchGal(Landroid/content/Context;JLjava/lang/String;I)Lcom/android/exchange/provider/GalResult;

    move-result-object v36

    .line 303
    .local v36, galResult:Lcom/android/exchange/provider/GalResult;
    if-eqz v36, :cond_11

    .line 304
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->buildGalResultCursor([Ljava/lang/String;Lcom/android/exchange/provider/GalResult;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    goto :goto_7

    .line 307
    .end local v22           #accountId:J
    .end local v36           #galResult:Lcom/android/exchange/provider/GalResult;
    :catchall_0
    move-exception v12

    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .line 314
    .end local v10           #accountName:Ljava/lang/String;
    .end local v29           #callingId:J
    .end local v34           #filter:Ljava/lang/String;
    .end local v40           #limit:I
    .end local v41           #limitString:Ljava/lang/String;
    :pswitch_2
    const-string v12, "account_name"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 315
    .restart local v10       #accountName:Ljava/lang/String;
    if-nez v10, :cond_f

    .line 316
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 319
    :cond_f
    new-instance v6, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;-><init>([Ljava/lang/String;)V

    .line 320
    .local v6, galProjection:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;
    new-instance v5, Landroid/database/MatrixCursor;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 322
    .restart local v5       #cursor:Landroid/database/MatrixCursor;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v43

    .line 323
    .local v43, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x2

    move-object/from16 v0, v43

    move v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 324
    .local v9, lookupKey:Ljava/lang/String;
    const/4 v12, 0x3

    move/from16 v0, v42

    move v1, v12

    if-ne v0, v1, :cond_10

    const/4 v12, 0x3

    move-object/from16 v0, v43

    move v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-wide v7, v12

    .line 327
    .local v7, contactId:J
    :goto_8
    new-instance v44, Lcom/android/emailcommon/mail/PackedString;

    move-object/from16 v0, v44

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 328
    .local v44, ps:Lcom/android/emailcommon/mail/PackedString;
    const-string v12, "displayName"

    move-object/from16 v0, v44

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 329
    .local v11, displayName:Ljava/lang/String;
    const-string v12, "emailAddress"

    move-object/from16 v0, v44

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v5 .. v12}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addEmailAddress(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/16 v19, 0x1

    const-string v12, "homePhone"

    move-object/from16 v0, v44

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object v12, v5

    move-object v13, v6

    move-wide v14, v7

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v18, v11

    invoke-static/range {v12 .. v20}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addPhoneRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    const/16 v19, 0x3

    const-string v12, "workPhone"

    move-object/from16 v0, v44

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object v12, v5

    move-object v13, v6

    move-wide v14, v7

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v18, v11

    invoke-static/range {v12 .. v20}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addPhoneRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 335
    const/16 v19, 0x2

    const-string v12, "mobilePhone"

    move-object/from16 v0, v44

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object v12, v5

    move-object v13, v6

    move-wide v14, v7

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v18, v11

    invoke-static/range {v12 .. v20}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addPhoneRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 337
    const-string v12, "firstName"

    move-object/from16 v0, v44

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v12, "lastName"

    move-object/from16 v0, v44

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object v12, v5

    move-object v13, v6

    move-wide v14, v7

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v20, v11

    invoke-static/range {v12 .. v20}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addNameRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v5

    .line 339
    goto/16 :goto_1

    .line 324
    .end local v7           #contactId:J
    .end local v11           #displayName:Ljava/lang/String;
    .end local v44           #ps:Lcom/android/emailcommon/mail/PackedString;
    .restart local p0
    :cond_10
    const-wide/16 v12, 0x1

    move-wide v7, v12

    goto/16 :goto_8

    .line 307
    .end local v5           #cursor:Landroid/database/MatrixCursor;
    .end local v6           #galProjection:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;
    .end local v9           #lookupKey:Ljava/lang/String;
    .end local v43           #pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22       #accountId:J
    .restart local v29       #callingId:J
    .restart local v34       #filter:Ljava/lang/String;
    .restart local v36       #galResult:Lcom/android/exchange/provider/GalResult;
    .restart local v40       #limit:I
    .restart local v41       #limitString:Ljava/lang/String;
    :cond_11
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 229
    .end local v10           #accountName:Ljava/lang/String;
    .end local v22           #accountId:J
    .end local v29           #callingId:J
    .end local v34           #filter:Ljava/lang/String;
    .end local v36           #galResult:Lcom/android/exchange/provider/GalResult;
    .end local v40           #limit:I
    .end local v41           #limitString:Ljava/lang/String;
    .restart local v5       #cursor:Landroid/database/MatrixCursor;
    .restart local v21       #account:Landroid/accounts/Account;
    .restart local v25       #accounts:[Landroid/accounts/Account;
    .restart local v26       #arr$:[Landroid/accounts/Account;
    .restart local v28       #bundle:Landroid/os/Bundle;
    .restart local v31       #column:Ljava/lang/String;
    .restart local v37       #i:I
    .restart local v38       #i$:I
    .restart local v39       #len$:I
    .restart local v45       #row:[Ljava/lang/Object;
    :catch_1
    move-exception v12

    goto/16 :goto_5

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 443
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
