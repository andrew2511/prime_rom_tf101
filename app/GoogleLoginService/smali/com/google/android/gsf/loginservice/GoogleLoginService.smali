.class public Lcom/google/android/gsf/loginservice/GoogleLoginService;
.super Landroid/app/Service;
.source "GoogleLoginService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/loginservice/GoogleLoginService$1;,
        Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;,
        Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;,
        Lcom/google/android/gsf/loginservice/GoogleLoginService$DatabaseHelper;
    }
.end annotation


# static fields
.field private static OAUTH_PREFIX:Ljava/lang/String;

.field private static sGoogleHttpClient:Lcom/google/android/common/http/GoogleHttpClient;


# instance fields
.field private mAuthenticator:Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;

.field mGlsBinder:Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;

.field mHasFeatureServicesRefreshIntervalS:J

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field mServicesRefreshIntervalS:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const-string v0, "oauth:"

    sput-object v0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->OAUTH_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 171
    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mServicesRefreshIntervalS:J

    .line 174
    const-wide/16 v0, 0xa

    iget-wide v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mServicesRefreshIntervalS:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mHasFeatureServicesRefreshIntervalS:J

    .line 945
    return-void
.end method

.method static synthetic access$000(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-static {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->blockingGetFlags(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-static {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->blockingGetOAuthAccessToken(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkServicePermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/accounts/AccountManager;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-static {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->blockingGetFlags(Landroid/accounts/AccountManager;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/gsf/loginservice/GoogleLoginService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkPasswordPermission()V

    return-void
.end method

.method static synthetic access$1300(Landroid/accounts/AccountManager;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 97
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->saveAccountInternal(Landroid/accounts/AccountManager;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 97
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->saveAuthTokenInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gsf/loginservice/GoogleLoginService;Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->accountHasFeatures(Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->doPermissionNotification(Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->doSignOnNotification(Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-static {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->isOAuthAccount(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(I)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-static {p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->isSAMLAccount(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-static {p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getIdTokenName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/accounts/AccountManager;Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-static {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getAccountInternal(Landroid/accounts/AccountManager;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkBinderPermissions(Ljava/lang/String;)V

    return-void
.end method

.method private accountHasFeatures(Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z
    .locals 19
    .parameter "accountManager"
    .parameter "account"
    .parameter "features"

    .prologue
    .line 411
    const/4 v11, 0x1

    .line 412
    .local v11, hasFeatures:Z
    invoke-static/range {p1 .. p2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->blockingGetFlags(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I

    move-result v9

    .line 413
    .local v9, flags:I
    move-object/from16 v6, p3

    .local v6, arr$:[Ljava/lang/String;
    array-length v14, v6

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    move v13, v12

    .end local v6           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .local v13, i$:I
    :goto_0
    if-ge v13, v14, :cond_0

    aget-object v8, v6, v13

    .line 414
    .local v8, feature:Ljava/lang/String;
    const-string v17, "youtubelinked"

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 415
    const/16 v17, 0x4

    move v0, v9

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->flagIsSet(II)Z

    move-result v17

    if-nez v17, :cond_a

    .line 416
    const/4 v11, 0x0

    .line 471
    .end local v8           #feature:Ljava/lang/String;
    .end local v13           #i$:I
    :cond_0
    :goto_1
    return v11

    .line 419
    .restart local v8       #feature:Ljava/lang/String;
    .restart local v13       #i$:I
    :cond_1
    const-string v17, "hosted_or_google"

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 420
    const/16 v17, 0x2

    move v0, v9

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->flagIsSet(II)Z

    move-result v17

    if-nez v17, :cond_a

    const/16 v17, 0x1

    move v0, v9

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->flagIsSet(II)Z

    move-result v17

    if-nez v17, :cond_a

    .line 422
    const/4 v11, 0x0

    .line 423
    goto :goto_1

    .line 425
    :cond_2
    const-string v17, "google"

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 426
    const/16 v17, 0x1

    move v0, v9

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->flagIsSet(II)Z

    move-result v17

    if-nez v17, :cond_a

    .line 427
    const/4 v11, 0x0

    .line 428
    goto :goto_1

    .line 430
    :cond_3
    const-string v17, "legacy_google"

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 431
    const-string v17, "GoogleLoginService"

    const-string v18, "accountHasFeatures: FEATURE_LEGACY_GOOGLE requested, which is no longer supported, returning false"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v11, 0x0

    .line 434
    goto :goto_1

    .line 435
    :cond_4
    const-string v17, "legacy_hosted_or_google"

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 436
    const-string v17, "GoogleLoginService"

    const-string v18, "accountHasFeatures: FEATURE_LEGACY_HOSTED_OR_GOOGLE requested, which is no longer supported, returning false"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v11, 0x0

    .line 439
    goto :goto_1

    .line 440
    :cond_5
    const-string v17, "saml"

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 441
    invoke-static {v9}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->isSAMLAccount(I)Z

    move-result v17

    if-nez v17, :cond_a

    .line 442
    const/4 v11, 0x0

    .line 443
    goto :goto_1

    .line 445
    :cond_6
    const-string v17, "service_"

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 446
    const-string v17, "service_"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 448
    .local v16, serviceName:Ljava/lang/String;
    const-string v17, "services"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 449
    .local v4, accountServices:Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 450
    const-string v17, ","

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 451
    .local v5, accountServicesArray:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 452
    .local v10, found:Z
    move-object v7, v5

    .local v7, arr$:[Ljava/lang/String;
    array-length v15, v7

    .local v15, len$:I
    const/4 v12, 0x0

    .end local v13           #i$:I
    .restart local v12       #i$:I
    :goto_2
    if-ge v12, v15, :cond_7

    aget-object v3, v7, v12

    .line 453
    .local v3, accountService:Ljava/lang/String;
    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 454
    const/4 v10, 0x1

    .line 458
    .end local v3           #accountService:Ljava/lang/String;
    :cond_7
    if-nez v10, :cond_a

    .line 459
    const/4 v11, 0x0

    .line 460
    goto/16 :goto_1

    .line 452
    .restart local v3       #accountService:Ljava/lang/String;
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 467
    .end local v3           #accountService:Ljava/lang/String;
    .end local v4           #accountServices:Ljava/lang/String;
    .end local v5           #accountServicesArray:[Ljava/lang/String;
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v10           #found:Z
    .end local v12           #i$:I
    .end local v15           #len$:I
    .end local v16           #serviceName:Ljava/lang/String;
    .restart local v13       #i$:I
    :cond_9
    const/4 v11, 0x0

    .line 468
    goto/16 :goto_1

    .line 413
    .end local v13           #i$:I
    :cond_a
    add-int/lit8 v12, v13, 0x1

    .restart local v12       #i$:I
    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    goto/16 :goto_0
.end method

.method private addInitialAccount(Ljava/lang/String;I)V
    .locals 5
    .parameter "account"
    .parameter "flags"

    .prologue
    .line 266
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 276
    .local v0, idx:I
    if-gez v0, :cond_2

    .line 277
    move-object v2, p1

    .line 278
    .local v2, username:Ljava/lang/String;
    const-string v1, ""

    .line 284
    .local v1, password:Ljava/lang/String;
    :goto_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3, v4, v2, v1, p2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->saveAccountInternal(Landroid/accounts/AccountManager;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 280
    .end local v1           #password:Ljava/lang/String;
    .end local v2           #username:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 281
    .restart local v2       #username:Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #password:Ljava/lang/String;
    goto :goto_1
.end method

.method private addInitialAccounts()V
    .locals 6

    .prologue
    .line 233
    const/4 v2, 0x0

    .line 234
    .local v2, hosted:Ljava/lang/String;
    const/4 v1, 0x0

    .line 235
    .local v1, google:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 236
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SELECT strvalue FROM meta WHERE name = ?"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 238
    .local v3, s:Landroid/database/sqlite/SQLiteStatement;
    const/4 v4, 0x1

    :try_start_0
    const-string v5, "initial_hosted"

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 240
    :goto_0
    const/4 v4, 0x1

    :try_start_2
    const-string v5, "initial_google"

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    .line 243
    :goto_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 247
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 263
    :goto_2
    return-void

    .line 243
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v4

    .line 249
    :cond_0
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 252
    if-eqz v2, :cond_1

    .line 253
    const/4 v4, 0x2

    :try_start_4
    invoke-direct {p0, v2, v4}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->addInitialAccount(Ljava/lang/String;I)V

    .line 255
    :cond_1
    if-eqz v1, :cond_2

    .line 256
    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->addInitialAccount(Ljava/lang/String;I)V

    .line 258
    :cond_2
    const-string v4, "DELETE FROM meta WHERE name IN (\'initial_hosted\', \'initial_google\')"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 261
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_1
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 239
    :catch_0
    move-exception v4

    goto :goto_0

    .line 241
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private static blockingGetFlags(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I
    .locals 3
    .parameter "accountManager"
    .parameter "account"

    .prologue
    .line 369
    const-string v2, "flags"

    invoke-virtual {p0, p1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, flagsString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 372
    .local v0, flags:I
    if-eqz v1, :cond_0

    .line 373
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 375
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static blockingGetFlags(Landroid/accounts/AccountManager;Ljava/lang/String;)I
    .locals 2
    .parameter "accountManager"
    .parameter "userName"

    .prologue
    .line 385
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 386
    :cond_0
    const/4 v1, 0x0

    .line 391
    :goto_0
    return v1

    .line 389
    :cond_1
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .local v0, account:Landroid/accounts/Account;
    invoke-static {p0, v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->blockingGetFlags(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I

    move-result v1

    goto :goto_0
.end method

.method private static blockingGetOAuthAccessToken(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1
    .parameter "accountManager"
    .parameter "account"

    .prologue
    .line 362
    const-string v0, "oauthAccessToken"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static cancelPermissionNotification(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "username"
    .parameter "id"

    .prologue
    .line 1475
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoogleLoginService.SIGNON:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800ba

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1477
    return-void
.end method

.method static cancelSignOnNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "username"

    .prologue
    .line 1470
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoogleLoginService.SIGNON:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800ba

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1472
    return-void
.end method

.method private checkBinderPermissions(Ljava/lang/String;)V
    .locals 3
    .parameter "permission"

    .prologue
    .line 1818
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caller pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lacks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1823
    .local v0, msg:Ljava/lang/String;
    const-string v1, "GoogleLoginService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1832
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkPasswordPermission()V
    .locals 3

    .prologue
    .line 1757
    const-string v1, "com.google.android.googleapps.permission.ACCESS_GOOGLE_PASSWORD"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caller pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lacks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.google.android.googleapps.permission.ACCESS_GOOGLE_PASSWORD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1762
    .local v0, msg:Ljava/lang/String;
    const-string v1, "GoogleLoginService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1771
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkServicePermission(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1779
    const-string v0, "SID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1782
    const-string v0, "OTHER_SERVICES"

    .line 1789
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.google.android.googleapps.permission.GOOGLE_AUTH."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 1794
    const-string v1, "ALL_SERVICES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH.ALL_SERVICES"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 1797
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caller pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lacks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.google.android.googleapps.permission.GOOGLE_AUTH."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1800
    const-string v1, "GoogleLoginService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1783
    :cond_1
    const-string v0, "LSID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1786
    const-string v0, "ALL_SERVICES"

    goto :goto_0

    .line 1810
    :cond_2
    return-void

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method private doPermissionNotification(Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 10
    .parameter "message"
    .parameter "intent"
    .parameter "username"
    .parameter "uid"

    .prologue
    const/4 v9, 0x0

    .line 1447
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1449
    const v5, 0x7f0800e7

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p3, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1452
    .local v4, titleAndSubtitle:Ljava/lang/String;
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1453
    .local v0, index:I
    invoke-virtual {v4, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1454
    .local v3, title:Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1456
    .local v2, subtitle:Ljava/lang/String;
    new-instance v1, Landroid/app/Notification;

    const v5, 0x108008a

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1460
    .local v1, n:Landroid/app/Notification;
    const/high16 v5, 0x1000

    invoke-static {p0, v9, p2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, p0, v3, v2, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1465
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GoogleLoginService.SIGNON:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0800ba

    invoke-virtual {p0, v5, v6, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1467
    return-void
.end method

.method private doSignOnNotification(Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .parameter "message"
    .parameter "intent"
    .parameter "username"

    .prologue
    const/4 v5, 0x0

    .line 1423
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1424
    new-instance v0, Landroid/app/Notification;

    const v1, 0x108008a

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1428
    .local v0, n:Landroid/app/Notification;
    const v1, 0x7f0800e8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x1000

    invoke-static {p0, v5, p2, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, p0, v1, p1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1434
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GoogleLoginService.SIGNON:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0800ba

    invoke-virtual {p0, v1, v2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1436
    return-void
.end method

.method static fixOldOAuthToken(Lcom/google/android/gsf/LoginData;)V
    .locals 2
    .parameter "loginData"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 493
    const-string v0, "1"

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    .line 495
    :cond_0
    return-void
.end method

.method private static flagIsSet(II)Z
    .locals 1
    .parameter "flags"
    .parameter "flag"

    .prologue
    .line 395
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAccountInternal(Landroid/accounts/AccountManager;Z)Ljava/lang/String;
    .locals 8
    .parameter "accountManager"
    .parameter "requireGoogle"

    .prologue
    .line 922
    const-string v7, "com.google"

    invoke-virtual {p0, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 925
    .local v1, accounts:[Landroid/accounts/Account;
    if-eqz p1, :cond_0

    const/4 v7, 0x1

    move v6, v7

    .line 932
    .local v6, requiredFlag:I
    :goto_0
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v0, v2, v4

    .line 933
    .local v0, account:Landroid/accounts/Account;
    invoke-static {p0, v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->blockingGetFlags(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I

    move-result v3

    .line 934
    .local v3, flags:I
    and-int v7, v3, v6

    if-eqz v7, :cond_1

    .line 935
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 938
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #flags:I
    :goto_2
    return-object v7

    .line 925
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #requiredFlag:I
    :cond_0
    const/4 v7, 0x2

    move v6, v7

    goto :goto_0

    .line 932
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v2       #arr$:[Landroid/accounts/Account;
    .restart local v3       #flags:I
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #requiredFlag:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 938
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #flags:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method static getAuthTokenLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2318
    .line 2320
    :try_start_0
    sget-object v0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->OAUTH_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2321
    sget-object v0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->OAUTH_PREFIX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2322
    :try_start_1
    const-string v1, "//"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2323
    if-ltz v1, :cond_4

    .line 2324
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 2327
    :goto_0
    :try_start_2
    const-string v2, "/"

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2330
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.google.android.googleapps.permission.GOOGLE_AUTH."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2331
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2332
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 2333
    iget v4, v2, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-eqz v4, :cond_1

    .line 2334
    iget-object v4, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget v5, v2, Landroid/content/pm/PermissionInfo;->labelRes:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2336
    if-eqz v3, :cond_1

    .line 2337
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2354
    :cond_0
    :goto_2
    return-object v0

    .line 2340
    :cond_1
    iget-object v3, v2, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 2341
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2343
    :cond_2
    iget-object v3, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2344
    iget-object v0, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 2347
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v1, p1

    .line 2350
    :cond_3
    :goto_3
    if-nez v0, :cond_0

    move-object v0, v1

    .line 2354
    goto :goto_2

    .line 2347
    :catch_1
    move-exception v1

    move-object v1, p1

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_3

    :cond_4
    move-object v1, p1

    goto :goto_0

    :cond_5
    move-object v0, v1

    move-object v1, p1

    goto :goto_1
.end method

.method public static getAuthtoken(Landroid/accounts/Account;Landroid/content/Context;Lcom/google/android/gsf/LoginData;Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2015
    iget-object p3, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2016
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "the mService is empty: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2018
    :cond_0
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 2021
    const/4 p3, 0x0

    iput-object p3, p2, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    .line 2022
    sget-object p3, Lcom/google/android/gsf/LoginData$Status;->LOGIN_FAIL:Lcom/google/android/gsf/LoginData$Status;

    iput-object p3, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 2029
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2030
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v2, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->ACCOUNT_TYPE:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->getWire()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HOSTED_OR_GOOGLE"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2031
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v2, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->FLAGS:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->getWire()Ljava/lang/String;

    move-result-object v2

    iget v3, p2, Lcom/google/android/gsf/LoginData;->mFlags:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2033
    const-string v1, "youtube"

    iget-object v2, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "YouTubeUser"

    iget-object v2, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    const-string v2, "@youtube.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2040
    iget-object v1, p2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2041
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->EMAIL:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2045
    :goto_0
    iget-object v1, p2, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2046
    iget-object v1, p2, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2047
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v2, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->TOKEN:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->getWire()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2060
    :goto_1
    iget-object v1, p2, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gsf/loginservice/GoogleLoginService;->OAUTH_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2062
    sget-object p0, Lcom/google/android/gsf/LoginData$Status;->OAUTH_MIGRATION_REQUIRED:Lcom/google/android/gsf/LoginData$Status;

    iput-object p0, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 2241
    :goto_2
    return-void

    .line 2043
    :cond_2
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v2, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->EMAIL:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->getWire()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2050
    :cond_3
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v2, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->ENCRYPTED_PASSWORD:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->getWire()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2054
    :cond_4
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v2, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->PASSWORD:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->getWire()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2066
    :cond_5
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2067
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v2, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->SHA1HASH:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2073
    :cond_6
    const-string p4, "SID"

    iget-object v1, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    const-string p4, "LSID"

    iget-object v1, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    .line 2074
    const-string p4, "YouTubeUser"

    iget-object v1, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 2076
    new-instance p4, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->ACCOUNT_SERVICE:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->getWire()Ljava/lang/String;

    move-result-object v1

    const-string v2, "youtube"

    invoke-direct {p4, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2083
    :cond_7
    :goto_3
    new-instance p4, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->ACCOUNT_SOURCE:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->getWire()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {p4, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2085
    new-instance p4, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->ANDROID_ID:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p4, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2091
    iget-object p4, p2, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_8

    iget-object p4, p2, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_8

    .line 2093
    new-instance p4, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->CAPTCHA_TOKEN:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->getWire()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    invoke-direct {p4, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2095
    new-instance p4, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->CAPTCHA_ANSWER:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->getWire()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    invoke-direct {p4, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2098
    :cond_8
    if-eqz p5, :cond_9

    .line 2099
    new-instance p4, Lorg/apache/http/message/BasicNameValuePair;

    const-string p5, "RefreshServices"

    const-string v1, "1"

    invoke-direct {p4, p5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2104
    :cond_9
    :try_start_0
    new-instance p4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {p4, p3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2109
    new-instance p3, Lorg/apache/http/client/methods/HttpPost;

    const-string p5, "https://android.clients.google.com/auth"

    invoke-direct {p3, p5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 2110
    invoke-interface {p4}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object p5

    invoke-virtual {p3, p5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    .line 2111
    invoke-virtual {p3, p4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 2114
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getHttpClient(Landroid/content/Context;)Lcom/google/android/common/http/GoogleHttpClient;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p3

    .line 2115
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p4

    invoke-static {p4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p4

    .line 2127
    invoke-static {p4}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->parseResponse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p5

    .line 2129
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_10

    .line 2130
    const-string p0, "Error"

    invoke-interface {p5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2132
    if-eqz p0, :cond_b

    sget-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->CAPTCHA_REQUIRED:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->getWire()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2135
    sget-object p0, Lcom/google/android/gsf/LoginData$Status;->CAPTCHA:Lcom/google/android/gsf/LoginData$Status;

    iput-object p0, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 2136
    const-string p0, "CaptchaToken"

    invoke-interface {p5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, p2, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    .line 2137
    const/4 p0, 0x0

    iput-object p0, p2, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    .line 2138
    const/4 p0, 0x0

    iput-object p0, p2, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    .line 2139
    invoke-static {p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getHttpClient(Landroid/content/Context;)Lcom/google/android/common/http/GoogleHttpClient;

    move-result-object p1

    const-string p0, "CaptchaUrl"

    invoke-interface {p5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0, p2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getCaptchaData(Lcom/google/android/common/http/GoogleHttpClient;Ljava/lang/String;Lcom/google/android/gsf/LoginData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2235
    const p0, 0x320d2

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    iget-object p4, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {p4}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p1, p3

    const/4 p3, 0x1

    iget-object p2, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    aput-object p2, p1, p3

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 2079
    :cond_a
    new-instance p4, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->ACCOUNT_SERVICE:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->getWire()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-direct {p4, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2105
    :catch_0
    move-exception p0

    .line 2106
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 2141
    :cond_b
    :try_start_2
    sget-object p1, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->CLIENT_LOGIN_DISABLED:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    invoke-virtual {p1}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->getWire()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2142
    sget-object p0, Lcom/google/android/gsf/LoginData$Status;->OAUTH_MIGRATION_REQUIRED:Lcom/google/android/gsf/LoginData$Status;

    iput-object p0, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2235
    :cond_c
    :goto_4
    const p0, 0x320d2

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    iget-object p4, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {p4}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p1, p3

    const/4 p3, 0x1

    iget-object p2, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    aput-object p2, p1, p3

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 2143
    :cond_d
    if-eqz p0, :cond_e

    :try_start_3
    const-string p1, "youtube"

    iget-object p5, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "NoLinkedYouTubeAccount"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 2146
    sget-object p1, Lcom/google/android/gsf/LoginData$Status;->SUCCESS:Lcom/google/android/gsf/LoginData$Status;

    iput-object p1, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 2147
    iput-object p0, p2, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 2232
    :catch_1
    move-exception p0

    .line 2233
    :try_start_4
    sget-object p0, Lcom/google/android/gsf/LoginData$Status;->NETWORK_ERROR:Lcom/google/android/gsf/LoginData$Status;

    iput-object p0, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2235
    const p0, 0x320d2

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    iget-object p4, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {p4}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p1, p3

    const/4 p3, 0x1

    iget-object p2, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    aput-object p2, p1, p3

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 2149
    :cond_e
    if-nez p0, :cond_f

    .line 2151
    :try_start_5
    const-string p0, "GoogleLoginService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Couldn\'t get error message from reply:"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown error "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    .line 2235
    :catchall_0
    move-exception p0

    const p1, 0x320d2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    iget-object p5, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {p5}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p3, p4

    const/4 p4, 0x1

    iget-object p2, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    aput-object p2, p3, p4

    invoke-static {p1, p3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    throw p0

    .line 2154
    :cond_f
    :try_start_6
    const-string p1, "DeviceManagementRequiredOrSyncDisabled"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 2155
    sget-object p0, Lcom/google/android/gsf/LoginData$Status;->DMAGENT:Lcom/google/android/gsf/LoginData$Status;

    iput-object p0, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    goto/16 :goto_4

    .line 2166
    :cond_10
    const-string p3, "Auth"

    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p2, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    .line 2167
    iget-object p3, p2, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    if-nez p3, :cond_11

    .line 2168
    const-string p3, "SID"

    iget-object p4, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_12

    const-string p3, "LSID"

    iget-object p4, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_12

    .line 2170
    const-string p0, "GoogleLoginService"

    const-string p1, "Status 200, but response didn\'t include auth token"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    sget-object p0, Lcom/google/android/gsf/LoginData$Status;->SERVER_ERROR:Lcom/google/android/gsf/LoginData$Status;

    iput-object p0, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 2235
    const p0, 0x320d2

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    iget-object p4, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {p4}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p1, p3

    const/4 p3, 0x1

    iget-object p2, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    aput-object p2, p1, p3

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 2175
    :cond_11
    :try_start_7
    const-string p3, "YouTubeUser"

    iget-object p4, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_18

    .line 2176
    iget-object p3, p2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    const-string p4, "youtube"

    iget-object v1, p2, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    invoke-static {p1, p3, p4, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->saveAuthTokenInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    :cond_12
    :goto_5
    sget-object p3, Lcom/google/android/gsf/LoginData$Status;->SUCCESS:Lcom/google/android/gsf/LoginData$Status;

    iput-object p3, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 2185
    const-string p3, "SID"

    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 2186
    if-eqz p3, :cond_13

    .line 2187
    iget-object p4, p2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    const-string v1, "SID"

    invoke-static {p1, p4, v1, p3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->saveAuthTokenInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    const-string p4, "SID"

    iget-object v1, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_13

    iput-object p3, p2, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    .line 2191
    :cond_13
    const-string p3, "LSID"

    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 2192
    if-eqz p3, :cond_14

    .line 2193
    iget-object p4, p2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    const-string v1, "LSID"

    invoke-static {p1, p4, v1, p3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->saveAuthTokenInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    const-string p4, "LSID"

    iget-object v1, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_14

    iput-object p3, p2, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    .line 2197
    :cond_14
    const-string p3, "sha1hash"

    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 2198
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_15

    .line 2199
    new-instance p4, Landroid/accounts/Account;

    iget-object v1, p2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-direct {p4, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sha1hash"

    invoke-virtual {v0, p4, v1, p3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    :cond_15
    const-string p3, "YouTubeUser"

    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 2212
    if-eqz p3, :cond_16

    .line 2213
    iget-object p4, p2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    const-string v1, "YouTubeUser"

    invoke-static {p1, p4, v1, p3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->saveAuthTokenInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    const-string p1, "YouTubeUser"

    iget-object p4, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 2215
    iput-object p3, p2, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    .line 2218
    :cond_16
    const-string p1, "services"

    invoke-interface {p5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2219
    if-eqz p1, :cond_17

    if-eqz p0, :cond_17

    .line 2220
    const-string p3, "services"

    invoke-virtual {v0, p0, p3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2221
    const-string p4, "services"

    invoke-virtual {v0, p0, p4, p1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    const-string p4, "servicesUpdateMs"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p4, v1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    invoke-static {p0, p3, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->refreshSyncAdapters(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    :cond_17
    const-string p0, "hosted"

    invoke-interface {p5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2228
    if-eqz p0, :cond_c

    goto/16 :goto_4

    .line 2179
    :cond_18
    iget-object p3, p2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    iget-object p4, p2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    invoke-static {p1, p3, p4, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->saveAuthTokenInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_5
.end method

.method private static getCaptchaData(Lcom/google/android/common/http/GoogleHttpClient;Ljava/lang/String;Lcom/google/android/gsf/LoginData;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2295
    iget-object v0, p2, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    if-eqz v0, :cond_0

    .line 2315
    :goto_0
    return-void

    .line 2297
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.google.com/accounts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2299
    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captcha url is ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 2303
    invoke-virtual {p0, v1}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 2304
    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitmap response is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    const-string v1, "X-Google-Captcha-Error"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2308
    sget-object v0, Lcom/google/android/gsf/LoginData$Status;->NETWORK_ERROR:Lcom/google/android/gsf/LoginData$Status;

    iput-object v0, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2312
    :catch_0
    move-exception v0

    .line 2313
    sget-object v0, Lcom/google/android/gsf/LoginData$Status;->NETWORK_ERROR:Lcom/google/android/gsf/LoginData$Status;

    iput-object v0, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    goto :goto_0

    .line 2311
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static getDefaultDomain(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1875
    const-string v0, "use_google_mail"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1876
    const-string v0, "googlemail.com"

    .line 1878
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gmail.com"

    goto :goto_0
.end method

.method private static getHttpClient(Landroid/content/Context;)Lcom/google/android/common/http/GoogleHttpClient;
    .locals 5
    .parameter

    .prologue
    .line 1738
    const-class v0, Lcom/google/android/gsf/loginservice/GoogleLoginService;

    monitor-enter v0

    .line 1739
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/loginservice/GoogleLoginService;->sGoogleHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    if-nez v1, :cond_0

    .line 1740
    new-instance v1, Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "GoogleLoginService/1.0"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1742
    invoke-virtual {v1}, Lcom/google/android/common/http/GoogleHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 1743
    const/16 v3, 0x7530

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1744
    const/16 v3, 0x7530

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1745
    const-wide/16 v3, 0x7530

    invoke-static {v2, v3, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 1746
    sput-object v1, Lcom/google/android/gsf/loginservice/GoogleLoginService;->sGoogleHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 1748
    :cond_0
    sget-object v1, Lcom/google/android/gsf/loginservice/GoogleLoginService;->sGoogleHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    monitor-exit v0

    return-object v1

    .line 1749
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getIdTokenName(I)Ljava/lang/String;
    .locals 1
    .parameter "flags"

    .prologue
    .line 480
    invoke-static {p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->isSAMLAccount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LSID"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "SID"

    goto :goto_0
.end method

.method private inSystemImage(Landroid/content/pm/PackageManager;I)Z
    .locals 9
    .parameter "pm"
    .parameter "callerUid"

    .prologue
    const/4 v8, 0x0

    .line 2378
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 2379
    .local v6, packages:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 2381
    .local v4, name:Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 2382
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    .line 2384
    const/4 v7, 0x1

    .line 2390
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_1
    return v7

    .line 2386
    .restart local v4       #name:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v7, v8

    .line 2387
    goto :goto_1

    .line 2379
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4           #name:Ljava/lang/String;
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    move v7, v8

    .line 2390
    goto :goto_1
.end method

.method private static isOAuthAccount(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Z
    .locals 1
    .parameter "accountManager"
    .parameter "account"

    .prologue
    .line 406
    invoke-static {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->blockingGetOAuthAccessToken(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSAMLAccount(I)Z
    .locals 1
    .parameter "flags"

    .prologue
    .line 402
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->flagIsSet(II)Z

    move-result v0

    return v0
.end method

.method static onIntentDone(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "context"
    .parameter "username"
    .parameter "extras"

    .prologue
    .line 2415
    invoke-static {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->cancelSignOnNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 2416
    invoke-static {p0, p1, p2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->sendPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2417
    return-void
.end method

.method private static parseResponse(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2284
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2285
    array-length v2, v1

    move v3, v7

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 2286
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 2287
    if-ltz v5, :cond_0

    .line 2288
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2285
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2291
    :cond_1
    return-object v0
.end method

.method private static refreshSyncAdapters(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "account"
    .parameter "oldString"
    .parameter "newString"

    .prologue
    .line 2252
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2253
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 2254
    .local v4, syncAdapters:[Landroid/content/SyncAdapterType;
    move-object v0, v4

    .local v0, arr$:[Landroid/content/SyncAdapterType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 2255
    .local v3, syncAdapter:Landroid/content/SyncAdapterType;
    iget-object v5, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2256
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {p0, v5}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 2257
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-static {p0, v5, v6}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2258
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v5, v6}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2254
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2263
    .end local v0           #arr$:[Landroid/content/SyncAdapterType;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #syncAdapter:Landroid/content/SyncAdapterType;
    .end local v4           #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_2
    return-void
.end method

.method private sameSignature(Landroid/content/pm/PackageManager;Landroid/content/Context;II)Z
    .locals 1
    .parameter "pm"
    .parameter "context"
    .parameter "myUid"
    .parameter "callerUid"

    .prologue
    .line 2395
    invoke-virtual {p1, p3, p4}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static saveAccountInternal(Landroid/accounts/AccountManager;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .parameter "accountManager"
    .parameter "contentResolver"
    .parameter "username"
    .parameter "password"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    .line 1924
    invoke-static {p1, p2, p3}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->encryptPassword(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, p3}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->hashPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move v5, p4

    move-object v6, v4

    invoke-static/range {v0 .. v7}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->saveAccountInternal(Landroid/accounts/AccountManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static saveAccountInternal(Landroid/accounts/AccountManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1933
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1934
    const-string v1, "flags"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    const-string p5, "sha1hash"

    invoke-virtual {v0, p5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    const-string p3, "services"

    invoke-virtual {v0, p3, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    if-eqz p4, :cond_1

    .line 1939
    const-string p3, "1"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    move-object p2, p4

    .line 1942
    :cond_0
    const-string p3, "oauthAccessToken"

    const-string p4, "1"

    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    :cond_1
    new-instance p3, Landroid/accounts/Account;

    const-string p4, "com.google"

    invoke-direct {p3, p1, p4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    invoke-virtual {p0, p3, p2, v0}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    .line 1948
    if-eqz p0, :cond_4

    .line 1952
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1953
    if-eqz p6, :cond_2

    .line 1954
    const-string p2, ","

    invoke-virtual {p6, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1955
    array-length p4, p2

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_2

    aget-object p6, p2, p5

    .line 1956
    invoke-virtual {p1, p6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1955
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 1960
    :cond_2
    const-string p2, "gmail-ls"

    const-string p4, "mail"

    invoke-virtual {p1, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    const/4 p4, 0x1

    :goto_1
    invoke-static {p3, p2, p4}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1965
    const-string p2, "com.android.calendar"

    if-nez p7, :cond_3

    const-string p4, "cl"

    invoke-virtual {p1, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_3
    const/4 p1, 0x1

    :goto_2
    invoke-static {p3, p2, p1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1969
    const-string p1, "com.android.contacts"

    iget-object p2, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string p4, "@youtube.com"

    invoke-virtual {p2, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x0

    :goto_3
    invoke-static {p3, p1, p2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1972
    :cond_4
    return p0

    .line 1960
    :cond_5
    const/4 p4, 0x0

    goto :goto_1

    .line 1965
    :cond_6
    const/4 p1, 0x0

    goto :goto_2

    .line 1969
    :cond_7
    const/4 p2, 0x1

    goto :goto_3
.end method

.method private static saveAuthTokenInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "username"
    .parameter "service"
    .parameter "authtoken"

    .prologue
    .line 1981
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 1982
    .local v1, accountManager:Landroid/accounts/AccountManager;
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v0, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    .local v0, account:Landroid/accounts/Account;
    invoke-virtual {v1, v0, p2, p3}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    return-void
.end method

.method public static saveNewAccountInternal(Landroid/accounts/AccountManager;Landroid/content/Context;Lcom/google/android/gsf/LoginData;Z)Z
    .locals 11
    .parameter "accountManager"
    .parameter "context"
    .parameter "data"
    .parameter "newlyCreatedAccount"

    .prologue
    .line 1628
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->SUCCESS:Lcom/google/android/gsf/LoginData$Status;

    if-eq v0, v1, :cond_2

    .line 1629
    :cond_0
    const-string p0, "GoogleLoginService"

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "call to saveNewAccount() with invalid login data : "

    .end local p3
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez p2, :cond_1

    const-string p2, "data was null"

    .end local p2
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    const/4 p0, 0x0

    .line 1665
    :goto_1
    return p0

    .line 1629
    .restart local p2
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "status was "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p2, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/gsf/LoginData$Status;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1636
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_2
    const/4 v0, 0x0

    .line 1638
    .local v0, logEvent:Lorg/json/JSONStringer;
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1642
    .end local v0           #logEvent:Lorg/json/JSONStringer;
    .local v8, logEvent:Lorg/json/JSONStringer;
    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    iget-object v0, p2, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1643
    .local v9, result:Lorg/json/JSONObject;
    const-string v0, "services"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "services"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 1644
    .local v6, services:Ljava/lang/String;
    :goto_2
    iget-object v1, p2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    iget-object v3, p2, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    iget-object v4, p2, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    iget v5, p2, Lcom/google/android/gsf/LoginData;->mFlags:I

    move-object v0, p0

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->saveAccountInternal(Landroid/accounts/AccountManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result p0

    .end local p0
    if-nez p0, :cond_4

    .line 1647
    const/4 p0, 0x0

    .line 1660
    const p1, 0x320d1

    iget-object p2, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .end local p1
    .end local p2
    invoke-virtual {p2}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result p2

    invoke-static {p1, p2}, Landroid/util/EventLog;->writeEvent(II)I

    goto :goto_1

    .line 1643
    .end local v6           #services:Ljava/lang/String;
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_3
    :try_start_2
    const-string v0, ""

    move-object v6, v0

    goto :goto_2

    .line 1649
    .end local p0
    .restart local v6       #services:Ljava/lang/String;
    :cond_4
    iget-object p0, p2, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    if-eqz p0, :cond_5

    .line 1650
    iget-object p0, p2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    const-string p3, "SID"

    .end local p3
    iget-object v0, p2, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    invoke-static {p1, p0, p3, v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->saveAuthTokenInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    :cond_5
    const-string p0, "useGoogleMail"

    const/4 p3, 0x0

    invoke-virtual {v9, p0, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1653
    invoke-static {p1}, Lcom/google/android/gsf/loginservice/GoogleMail;->switchToGoogleMail(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1660
    :cond_6
    const p0, 0x320d1

    iget-object p2, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result p2

    invoke-static {p0, p2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1664
    new-instance p0, Landroid/content/Intent;

    const-string p2, "android.server.checkin.CHECKIN"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1665
    const/4 p0, 0x1

    goto/16 :goto_1

    .line 1655
    .end local v6           #services:Ljava/lang/String;
    .end local v8           #logEvent:Lorg/json/JSONStringer;
    .end local v9           #result:Lorg/json/JSONObject;
    .restart local v0       #logEvent:Lorg/json/JSONStringer;
    .restart local p0
    .restart local p2
    .restart local p3
    :catch_0
    move-exception p0

    move-object p1, v0

    .line 1658
    .end local v0           #logEvent:Lorg/json/JSONStringer;
    .end local p3
    .local p0, e:Lorg/json/JSONException;
    .local p1, logEvent:Lorg/json/JSONStringer;
    :goto_3
    :try_start_3
    new-instance p3, Ljava/lang/RuntimeException;

    const-string v0, "Couldn\'t process data.mJsonString"

    invoke-direct {p3, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1660
    :catchall_0
    move-exception p0

    move-object v10, p0

    move-object p0, p1

    .end local p1           #logEvent:Lorg/json/JSONStringer;
    .local p0, logEvent:Lorg/json/JSONStringer;
    move-object p1, v10

    :goto_4
    const p0, 0x320d1

    iget-object p2, p2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .end local p0           #logEvent:Lorg/json/JSONStringer;
    .end local p2
    invoke-virtual {p2}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result p2

    invoke-static {p0, p2}, Landroid/util/EventLog;->writeEvent(II)I

    throw p1

    .restart local v0       #logEvent:Lorg/json/JSONStringer;
    .local p0, accountManager:Landroid/accounts/AccountManager;
    .local p1, context:Landroid/content/Context;
    .restart local p2
    .restart local p3
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #logEvent:Lorg/json/JSONStringer;
    .local p0, logEvent:Lorg/json/JSONStringer;
    goto :goto_4

    .end local p0           #logEvent:Lorg/json/JSONStringer;
    .end local p3
    .restart local v8       #logEvent:Lorg/json/JSONStringer;
    :catchall_2
    move-exception p0

    move-object p1, p0

    move-object p0, v8

    .end local v8           #logEvent:Lorg/json/JSONStringer;
    .restart local p0       #logEvent:Lorg/json/JSONStringer;
    goto :goto_4

    .line 1655
    .end local p0           #logEvent:Lorg/json/JSONStringer;
    .restart local v8       #logEvent:Lorg/json/JSONStringer;
    :catch_1
    move-exception p0

    move-object p1, v8

    .end local v8           #logEvent:Lorg/json/JSONStringer;
    .local p1, logEvent:Lorg/json/JSONStringer;
    goto :goto_3
.end method

.method static sendPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2420
    invoke-static {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->cancelSignOnNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 2422
    if-eqz p2, :cond_0

    .line 2423
    const-string v0, "pendingIntent"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    .line 2425
    if-eqz p0, :cond_0

    .line 2429
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2435
    :cond_0
    :goto_0
    return-void

    .line 2430
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static setPermission(Landroid/content/Context;Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perm."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, p5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2406
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p0, v0, p4}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->cancelPermissionNotification(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2407
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p0, v0, p6}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->sendPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2408
    return-void
.end method

.method private static stripAfterSemicolon(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 1729
    if-nez p0, :cond_1

    .line 1734
    :cond_0
    :goto_0
    return-object p0

    .line 1730
    :cond_1
    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1731
    .local v0, semicolon:I
    if-ltz v0, :cond_0

    .line 1732
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static tryNewAccountInternal(Landroid/content/Context;Lcom/google/android/gsf/LoginData;)V
    .locals 8
    .parameter "context"
    .parameter "data"

    .prologue
    .line 1498
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1499
    .local v1, contentResolver:Landroid/content/ContentResolver;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 1500
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const/4 v0, 0x0

    .line 1501
    .local v0, logEvent:Lorg/json/JSONStringer;
    const/4 v3, 0x0

    .line 1503
    .local v3, jsonString:Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    .line 1504
    .end local v0           #logEvent:Lorg/json/JSONStringer;
    .local v4, logEvent:Lorg/json/JSONStringer;
    :try_start_1
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v0

    const-string v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v2, "3"

    invoke-virtual {v0, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 1507
    .local v2, json:Lorg/json/JSONStringer;
    iget-object v0, p1, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1508
    const-string v0, "username"

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v5, p1, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v5, "password"

    invoke-virtual {v0, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v5, p1, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 1514
    :goto_0
    const-string v0, "secondary"

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 1515
    iget-object v0, p1, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1517
    const-string v0, "captchaToken"

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v5, p1, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v5, "captchaAnswer"

    invoke-virtual {v0, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v5, p1, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 1520
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1522
    .local v0, tm:Landroid/telephony/TelephonyManager;
    const-string v5, "operatorCountry"

    invoke-virtual {v2, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v5

    const-string v6, "simCountry"

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .end local v0           #tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 1526
    iget v0, p1, Lcom/google/android/gsf/LoginData;->mFlags:I

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->isSAMLAccount(I)Z

    move-result v0

    .line 1528
    .local v0, isSAMLAccount:Z
    if-eqz v0, :cond_4

    .line 1530
    iget-object v5, p1, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_3

    .line 1532
    :cond_1
    const-string p0, "GoogleLoginService"

    .end local p0
    const-string v0, "Missing SID for a SAML account"

    .end local v0           #isSAMLAccount:Z
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    sget-object p0, Lcom/google/android/gsf/LoginData$Status;->BAD_REQUEST:Lcom/google/android/gsf/LoginData$Status;

    iput-object p0, p1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1622
    const p0, 0x320d0

    iget-object p1, p1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result p1

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    move-object p0, v3

    .end local v3           #jsonString:Ljava/lang/String;
    .local p0, jsonString:Ljava/lang/String;
    move-object p1, v4

    .line 1624
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    .end local v2           #json:Lorg/json/JSONStringer;
    .end local v4           #logEvent:Lorg/json/JSONStringer;
    .local p1, logEvent:Lorg/json/JSONStringer;
    :goto_1
    return-void

    .line 1511
    .restart local v1       #contentResolver:Landroid/content/ContentResolver;
    .restart local v2       #json:Lorg/json/JSONStringer;
    .restart local v3       #jsonString:Ljava/lang/String;
    .restart local v4       #logEvent:Lorg/json/JSONStringer;
    .local p0, context:Landroid/content/Context;
    .local p1, data:Lcom/google/android/gsf/LoginData;
    :cond_2
    :try_start_2
    const-string v0, "token"

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v5, p1, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_0

    .line 1613
    .end local v2           #json:Lorg/json/JSONStringer;
    .end local p0           #context:Landroid/content/Context;
    :catch_0
    move-exception p0

    move-object v0, v3

    .end local v3           #jsonString:Ljava/lang/String;
    .local v0, jsonString:Ljava/lang/String;
    move-object v1, v4

    .line 1614
    .end local v4           #logEvent:Lorg/json/JSONStringer;
    .local v1, logEvent:Lorg/json/JSONStringer;
    .local p0, e:Lorg/json/JSONException;
    :goto_2
    :try_start_3
    const-string v2, "GoogleLoginService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error parsing json string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1615
    sget-object p0, Lcom/google/android/gsf/LoginData$Status;->NETWORK_ERROR:Lcom/google/android/gsf/LoginData$Status;

    .end local p0           #e:Lorg/json/JSONException;
    iput-object p0, p1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1622
    const p0, 0x320d0

    iget-object p1, p1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .end local p1           #data:Lcom/google/android/gsf/LoginData;
    invoke-virtual {p1}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result p1

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    move-object p0, v0

    .end local v0           #jsonString:Ljava/lang/String;
    .local p0, jsonString:Ljava/lang/String;
    move-object p1, v1

    .line 1623
    .end local v1           #logEvent:Lorg/json/JSONStringer;
    .local p1, logEvent:Lorg/json/JSONStringer;
    goto :goto_1

    .line 1539
    .local v0, isSAMLAccount:Z
    .local v1, contentResolver:Landroid/content/ContentResolver;
    .restart local v2       #json:Lorg/json/JSONStringer;
    .restart local v3       #jsonString:Ljava/lang/String;
    .restart local v4       #logEvent:Lorg/json/JSONStringer;
    .local p0, context:Landroid/content/Context;
    .local p1, data:Lcom/google/android/gsf/LoginData;
    :cond_3
    :try_start_4
    const-string v5, "HID"

    invoke-virtual {v2, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 1541
    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 1545
    iget-object v5, p1, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    if-nez v5, :cond_5

    const-string v5, "https://android.clients.google.com/setup/login"

    .line 1546
    .local v5, login_url:Ljava/lang/String;
    :goto_3
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1547
    .local v6, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    .end local v5           #login_url:Ljava/lang/String;
    invoke-virtual {v2}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2           #json:Lorg/json/JSONStringer;
    invoke-direct {v5, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1548
    invoke-static {p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getHttpClient(Landroid/content/Context;)Lcom/google/android/common/http/GoogleHttpClient;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    invoke-virtual {p0, v6}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 1550
    .local p0, response:Lorg/apache/http/HttpResponse;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v5, 0xc8

    if-eq v2, v5, :cond_6

    .line 1552
    sget-object p0, Lcom/google/android/gsf/LoginData$Status;->SERVER_ERROR:Lcom/google/android/gsf/LoginData$Status;

    .end local p0           #response:Lorg/apache/http/HttpResponse;
    iput-object p0, p1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1622
    const p0, 0x320d0

    iget-object p1, p1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .end local p1           #data:Lcom/google/android/gsf/LoginData;
    invoke-virtual {p1}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result p1

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    move-object p0, v3

    .end local v3           #jsonString:Ljava/lang/String;
    .local p0, jsonString:Ljava/lang/String;
    move-object p1, v4

    .end local v4           #logEvent:Lorg/json/JSONStringer;
    .local p1, logEvent:Lorg/json/JSONStringer;
    goto/16 :goto_1

    .line 1545
    .end local v6           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v2       #json:Lorg/json/JSONStringer;
    .restart local v3       #jsonString:Ljava/lang/String;
    .restart local v4       #logEvent:Lorg/json/JSONStringer;
    .local p0, context:Landroid/content/Context;
    .local p1, data:Lcom/google/android/gsf/LoginData;
    :cond_5
    :try_start_5
    const-string v5, "https://android.clients.google.com/setup/tokenLogin"

    goto :goto_3

    .line 1556
    .end local v2           #json:Lorg/json/JSONStringer;
    .restart local v6       #post:Lorg/apache/http/client/methods/HttpPost;
    .local p0, response:Lorg/apache/http/HttpResponse;
    :cond_6
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    .end local p0           #response:Lorg/apache/http/HttpResponse;
    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v2

    .line 1557
    .end local v3           #jsonString:Ljava/lang/String;
    .local v2, jsonString:Ljava/lang/String;
    :try_start_6
    iput-object v2, p1, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    .line 1559
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1560
    .local v5, result:Lorg/json/JSONObject;
    const-string p0, "status"

    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gsf/LoginData$Status;->valueOf(Ljava/lang/String;)Lcom/google/android/gsf/LoginData$Status;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 1561
    iget-object p0, p1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v3, Lcom/google/android/gsf/LoginData$Status;->CAPTCHA:Lcom/google/android/gsf/LoginData$Status;

    if-ne p0, v3, :cond_9

    .line 1562
    const-string p0, "captchaToken"

    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    .line 1563
    const-string p0, "captchaData"

    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .end local v0           #isSAMLAccount:Z
    move-result-object p0

    iput-object p0, p1, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    .line 1564
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    .line 1609
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    .end local v6           #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_7
    :goto_4
    iget-object p0, p1, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    if-eqz p0, :cond_8

    const-string p0, "username"

    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 1610
    const-string p0, "username"

    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1622
    :cond_8
    const p0, 0x320d0

    iget-object p1, p1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .end local p1           #data:Lcom/google/android/gsf/LoginData;
    invoke-virtual {p1}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result p1

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    move-object p0, v2

    .end local v2           #jsonString:Ljava/lang/String;
    .local p0, jsonString:Ljava/lang/String;
    move-object p1, v4

    .line 1623
    .end local v4           #logEvent:Lorg/json/JSONStringer;
    .local p1, logEvent:Lorg/json/JSONStringer;
    goto/16 :goto_1

    .line 1565
    .end local p0           #jsonString:Ljava/lang/String;
    .restart local v0       #isSAMLAccount:Z
    .restart local v1       #contentResolver:Landroid/content/ContentResolver;
    .restart local v2       #jsonString:Ljava/lang/String;
    .restart local v4       #logEvent:Lorg/json/JSONStringer;
    .restart local v6       #post:Lorg/apache/http/client/methods/HttpPost;
    .local p1, data:Lcom/google/android/gsf/LoginData;
    :cond_9
    :try_start_7
    iget-object p0, p1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v3, Lcom/google/android/gsf/LoginData$Status;->SUCCESS:Lcom/google/android/gsf/LoginData$Status;

    if-ne p0, v3, :cond_f

    .line 1566
    if-nez v0, :cond_a

    .line 1567
    const-string p0, "SID"

    const/4 v3, 0x0

    invoke-virtual {v5, p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    .line 1570
    :cond_a
    const-string p0, "flags"

    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/google/android/gsf/LoginData;->mFlags:I

    .line 1571
    iput-object v2, p1, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    .line 1574
    const-string p0, "username"

    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 1575
    const-string p0, "username"

    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 1579
    :cond_b
    if-eqz v0, :cond_c

    iget-object p0, p1, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    .line 1581
    .local p0, rawPassword:Ljava/lang/String;
    :goto_5
    iget-object v0, p1, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    .end local v0           #isSAMLAccount:Z
    if-nez v0, :cond_d

    .line 1582
    iget-object v0, p1, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->encryptPassword(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #rawPassword:Ljava/lang/String;
    iput-object p0, p1, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 1585
    iget-object p0, p1, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->hashPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    .line 1592
    :goto_6
    const-string p0, "services"

    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1593
    const-string p0, "services"

    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1595
    .local p0, accountServices:Ljava/lang/String;
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1596
    .local p0, accountServicesArray:[Ljava/lang/String;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 p0, 0x0

    .local p0, i$:I
    move v1, p0

    .end local v6           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local p0           #i$:I
    .local v1, i$:I
    :goto_7
    if-ge v1, v3, :cond_7

    aget-object p0, v0, v1

    .line 1597
    .local p0, accountService:Ljava/lang/String;
    const-string v6, "youtube"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0           #accountService:Ljava/lang/String;
    if-eqz p0, :cond_e

    .line 1598
    iget p0, p1, Lcom/google/android/gsf/LoginData;->mFlags:I

    or-int/lit8 p0, p0, 0x4

    iput p0, p1, Lcom/google/android/gsf/LoginData;->mFlags:I

    goto/16 :goto_4

    .line 1613
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v5           #result:Lorg/json/JSONObject;
    :catch_1
    move-exception p0

    move-object v0, v2

    .end local v2           #jsonString:Ljava/lang/String;
    .local v0, jsonString:Ljava/lang/String;
    move-object v1, v4

    .end local v4           #logEvent:Lorg/json/JSONStringer;
    .local v1, logEvent:Lorg/json/JSONStringer;
    goto/16 :goto_2

    .line 1579
    .local v0, isSAMLAccount:Z
    .local v1, contentResolver:Landroid/content/ContentResolver;
    .restart local v2       #jsonString:Ljava/lang/String;
    .restart local v4       #logEvent:Lorg/json/JSONStringer;
    .restart local v5       #result:Lorg/json/JSONObject;
    .restart local v6       #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_c
    iget-object p0, p1, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    goto :goto_5

    .line 1589
    .end local v0           #isSAMLAccount:Z
    .local p0, rawPassword:Ljava/lang/String;
    :cond_d
    const-string p0, "oauth"

    .end local p0           #rawPassword:Ljava/lang/String;
    iput-object p0, p1, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    .line 1616
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    .end local v5           #result:Lorg/json/JSONObject;
    .end local v6           #post:Lorg/apache/http/client/methods/HttpPost;
    :catch_2
    move-exception p0

    move-object v0, v2

    .end local v2           #jsonString:Ljava/lang/String;
    .local v0, jsonString:Ljava/lang/String;
    move-object v1, v4

    .line 1617
    .end local v4           #logEvent:Lorg/json/JSONStringer;
    .local v1, logEvent:Lorg/json/JSONStringer;
    .local p0, e:Ljava/io/UnsupportedEncodingException;
    :goto_8
    :try_start_8
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1621
    .end local p0           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception p0

    move-object v7, p0

    move-object p0, v0

    .end local v0           #jsonString:Ljava/lang/String;
    .local p0, jsonString:Ljava/lang/String;
    move-object v0, v1

    .end local v1           #logEvent:Lorg/json/JSONStringer;
    .local v0, logEvent:Lorg/json/JSONStringer;
    move-object v1, v7

    .line 1622
    :goto_9
    const p0, 0x320d0

    iget-object p1, p1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .end local p0           #jsonString:Ljava/lang/String;
    .end local p1           #data:Lcom/google/android/gsf/LoginData;
    invoke-virtual {p1}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result p1

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    throw v1

    .line 1596
    .local v0, arr$:[Ljava/lang/String;
    .local v1, i$:I
    .restart local v2       #jsonString:Ljava/lang/String;
    .restart local v3       #len$:I
    .restart local v4       #logEvent:Lorg/json/JSONStringer;
    .restart local v5       #result:Lorg/json/JSONObject;
    .restart local p1       #data:Lcom/google/android/gsf/LoginData;
    :cond_e
    add-int/lit8 p0, v1, 0x1

    .end local v1           #i$:I
    .local p0, i$:I
    move v1, p0

    .end local p0           #i$:I
    .restart local v1       #i$:I
    goto :goto_7

    .line 1603
    .end local v3           #len$:I
    .local v0, isSAMLAccount:Z
    .local v1, contentResolver:Landroid/content/ContentResolver;
    .restart local v6       #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_f
    :try_start_9
    iget-object p0, p1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v0, Lcom/google/android/gsf/LoginData$Status;->BAD_REQUEST:Lcom/google/android/gsf/LoginData$Status;

    .end local v0           #isSAMLAccount:Z
    if-ne p0, v0, :cond_7

    .line 1604
    const-string p0, "detail"

    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 1605
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server returned BAD_REQUEST: "

    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "detail"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1618
    .end local v5           #result:Lorg/json/JSONObject;
    .end local v6           #post:Lorg/apache/http/client/methods/HttpPost;
    :catch_3
    move-exception p0

    move-object v0, v2

    .end local v2           #jsonString:Ljava/lang/String;
    .local v0, jsonString:Ljava/lang/String;
    move-object v1, v4

    .line 1619
    .end local v4           #logEvent:Lorg/json/JSONStringer;
    .local v1, logEvent:Lorg/json/JSONStringer;
    .local p0, e:Ljava/io/IOException;
    :goto_a
    :try_start_a
    sget-object p0, Lcom/google/android/gsf/LoginData$Status;->NETWORK_ERROR:Lcom/google/android/gsf/LoginData$Status;

    .end local p0           #e:Ljava/io/IOException;
    iput-object p0, p1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1622
    const p0, 0x320d0

    iget-object p1, p1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .end local p1           #data:Lcom/google/android/gsf/LoginData;
    invoke-virtual {p1}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result p1

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    move-object p0, v0

    .end local v0           #jsonString:Ljava/lang/String;
    .local p0, jsonString:Ljava/lang/String;
    move-object p1, v1

    .line 1623
    .end local v1           #logEvent:Lorg/json/JSONStringer;
    .local p1, logEvent:Lorg/json/JSONStringer;
    goto/16 :goto_1

    .line 1621
    .local v0, logEvent:Lorg/json/JSONStringer;
    .local v1, contentResolver:Landroid/content/ContentResolver;
    .local v3, jsonString:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .local p1, data:Lcom/google/android/gsf/LoginData;
    :catchall_1
    move-exception p0

    move-object v1, p0

    move-object p0, v3

    .end local v3           #jsonString:Ljava/lang/String;
    .local p0, jsonString:Ljava/lang/String;
    goto :goto_9

    .end local v0           #logEvent:Lorg/json/JSONStringer;
    .end local p0           #jsonString:Ljava/lang/String;
    .restart local v3       #jsonString:Ljava/lang/String;
    .restart local v4       #logEvent:Lorg/json/JSONStringer;
    :catchall_2
    move-exception p0

    move-object v1, p0

    move-object v0, v4

    .end local v4           #logEvent:Lorg/json/JSONStringer;
    .restart local v0       #logEvent:Lorg/json/JSONStringer;
    move-object p0, v3

    .end local v3           #jsonString:Ljava/lang/String;
    .restart local p0       #jsonString:Ljava/lang/String;
    goto :goto_9

    .end local v0           #logEvent:Lorg/json/JSONStringer;
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    .end local p0           #jsonString:Ljava/lang/String;
    .restart local v2       #jsonString:Ljava/lang/String;
    .restart local v4       #logEvent:Lorg/json/JSONStringer;
    :catchall_3
    move-exception p0

    move-object v1, p0

    move-object v0, v4

    .end local v4           #logEvent:Lorg/json/JSONStringer;
    .restart local v0       #logEvent:Lorg/json/JSONStringer;
    move-object p0, v2

    .end local v2           #jsonString:Ljava/lang/String;
    .restart local p0       #jsonString:Ljava/lang/String;
    goto :goto_9

    .line 1618
    .restart local v1       #contentResolver:Landroid/content/ContentResolver;
    .restart local v3       #jsonString:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :catch_4
    move-exception p0

    move-object v1, v0

    .end local v0           #logEvent:Lorg/json/JSONStringer;
    .local v1, logEvent:Lorg/json/JSONStringer;
    move-object v0, v3

    .end local v3           #jsonString:Ljava/lang/String;
    .local v0, jsonString:Ljava/lang/String;
    goto :goto_a

    .end local v0           #jsonString:Ljava/lang/String;
    .end local p0           #context:Landroid/content/Context;
    .local v1, contentResolver:Landroid/content/ContentResolver;
    .restart local v3       #jsonString:Ljava/lang/String;
    .restart local v4       #logEvent:Lorg/json/JSONStringer;
    :catch_5
    move-exception p0

    move-object v0, v3

    .end local v3           #jsonString:Ljava/lang/String;
    .restart local v0       #jsonString:Ljava/lang/String;
    move-object v1, v4

    .end local v4           #logEvent:Lorg/json/JSONStringer;
    .local v1, logEvent:Lorg/json/JSONStringer;
    goto :goto_a

    .line 1616
    .local v0, logEvent:Lorg/json/JSONStringer;
    .local v1, contentResolver:Landroid/content/ContentResolver;
    .restart local v3       #jsonString:Ljava/lang/String;
    .restart local p0       #context:Landroid/content/Context;
    :catch_6
    move-exception p0

    move-object v1, v0

    .end local v0           #logEvent:Lorg/json/JSONStringer;
    .local v1, logEvent:Lorg/json/JSONStringer;
    move-object v0, v3

    .end local v3           #jsonString:Ljava/lang/String;
    .local v0, jsonString:Ljava/lang/String;
    goto :goto_8

    .end local v0           #jsonString:Ljava/lang/String;
    .end local p0           #context:Landroid/content/Context;
    .local v1, contentResolver:Landroid/content/ContentResolver;
    .restart local v3       #jsonString:Ljava/lang/String;
    .restart local v4       #logEvent:Lorg/json/JSONStringer;
    :catch_7
    move-exception p0

    move-object v0, v3

    .end local v3           #jsonString:Ljava/lang/String;
    .restart local v0       #jsonString:Ljava/lang/String;
    move-object v1, v4

    .end local v4           #logEvent:Lorg/json/JSONStringer;
    .local v1, logEvent:Lorg/json/JSONStringer;
    goto :goto_8

    .line 1613
    .local v0, logEvent:Lorg/json/JSONStringer;
    .local v1, contentResolver:Landroid/content/ContentResolver;
    .restart local v3       #jsonString:Ljava/lang/String;
    .restart local p0       #context:Landroid/content/Context;
    :catch_8
    move-exception p0

    move-object v1, v0

    .end local v0           #logEvent:Lorg/json/JSONStringer;
    .local v1, logEvent:Lorg/json/JSONStringer;
    move-object v0, v3

    .end local v3           #jsonString:Ljava/lang/String;
    .local v0, jsonString:Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public static updateOAuthTokenInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "username"
    .parameter "oAuthToken"

    .prologue
    .line 1670
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 1671
    .local v1, accountManager:Landroid/accounts/AccountManager;
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v0, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    .local v0, account:Landroid/accounts/Account;
    const-string v2, "oauthAccessToken"

    const-string v3, "1"

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    invoke-virtual {v1, v0, p2}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1675
    return-void
.end method

.method public static updatePasswordInternal(Landroid/content/Context;Lcom/google/android/gsf/LoginData;)V
    .locals 8
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 1678
    iget-object v1, p1, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1679
    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->BAD_REQUEST:Lcom/google/android/gsf/LoginData$Status;

    iput-object v1, p1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 1714
    :cond_0
    :goto_0
    return-void

    .line 1683
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    .line 1684
    .local v6, accountManager:Landroid/accounts/AccountManager;
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p1, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    .local v0, account:Landroid/accounts/Account;
    invoke-static {v6, v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->blockingGetFlags(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I

    move-result v7

    .line 1692
    .local v7, flags:I
    invoke-static {v7}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->isSAMLAccount(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1693
    iget-object v1, p1, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    .line 1694
    iput-object v4, p1, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 1696
    :cond_2
    iget-object v1, p1, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 1697
    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1698
    const-string v1, "sha1hash"

    const-string v2, ""

    invoke-virtual {v6, v0, v1, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1700
    :cond_3
    iget-object v1, p1, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 1701
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->encryptPassword(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 1704
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getAuthtoken(Landroid/accounts/Account;Landroid/content/Context;Lcom/google/android/gsf/LoginData;Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1705
    iget-object v1, p1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v2, Lcom/google/android/gsf/LoginData$Status;->SUCCESS:Lcom/google/android/gsf/LoginData$Status;

    if-ne v1, v2, :cond_0

    .line 1706
    iget-object v1, p1, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1707
    iget-object v1, p1, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1708
    const-string v1, "sha1hash"

    iget-object v2, p1, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->hashPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    :cond_5
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->cancelSignOnNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static verifyStoredPasswordInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "username"
    .parameter "password"

    .prologue
    const/4 v5, 0x0

    .line 1718
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    new-instance v3, Landroid/accounts/Account;

    const-string v4, "com.google"

    invoke-direct {v3, p1, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "sha1hash"

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1720
    .local v0, stored:Ljava/lang/String;
    if-nez v0, :cond_0

    move v2, v5

    .line 1725
    :goto_0
    return v2

    .line 1721
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->hashPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1722
    .local v1, typed:Ljava/lang/String;
    if-nez v1, :cond_1

    move v2, v5

    goto :goto_0

    .line 1723
    :cond_1
    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->stripAfterSemicolon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1724
    invoke-static {v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->stripAfterSemicolon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1725
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method hasPermission(Landroid/content/Context;Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2361
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2362
    invoke-direct {p0, v0, p5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->inSystemImage(Landroid/content/pm/PackageManager;I)Z

    move-result v1

    .line 2363
    if-eqz v1, :cond_0

    move v0, v2

    .line 2373
    :goto_0
    return v0

    .line 2367
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2369
    if-eq v1, p5, :cond_1

    invoke-direct {p0, v0, p1, v1, p5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->sameSignature(Landroid/content/pm/PackageManager;Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 2370
    goto :goto_0

    .line 2372
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perm."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2373
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 298
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 300
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gsf.LOGIN_ACCOUNTS_MISSING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, send:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->sendBroadcast(Landroid/content/Intent;)V

    .line 306
    .end local v0           #send:Landroid/content/Intent;
    :cond_0
    const-string v1, "android.accounts.AccountAuthenticator"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mAuthenticator:Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->getIBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 316
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mGlsBinder:Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 213
    new-instance v0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;-><init>(Lcom/google/android/gsf/loginservice/GoogleLoginService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mAuthenticator:Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;

    .line 214
    new-instance v0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;-><init>(Lcom/google/android/gsf/loginservice/GoogleLoginService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mGlsBinder:Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;

    .line 216
    new-instance v0, Lcom/google/android/gsf/loginservice/GoogleLoginService$DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 219
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->addInitialAccounts()V

    .line 221
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "services_refresh_s"

    const-wide/32 v2, 0x15180

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mServicesRefreshIntervalS:J

    .line 224
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "services_refresh_existing_s"

    const-wide/32 v2, 0xd2f00

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mHasFeatureServicesRefreshIntervalS:J

    .line 227
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 292
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 13
    .parameter "intent"
    .parameter "serviceFlags"
    .parameter "startId"

    .prologue
    .line 321
    if-nez p1, :cond_0

    .line 325
    const/4 v10, 0x3

    .line 357
    :goto_0
    return v10

    .line 333
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 335
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkPasswordPermission()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    const-string v10, "username"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 341
    .local v9, username:Ljava/lang/String;
    const-string v10, "password"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 342
    .local v8, password:Ljava/lang/String;
    const-string v10, "flags"

    const/4 v11, 0x1

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 345
    .local v5, flags:I
    if-eqz v9, :cond_2

    if-eqz v8, :cond_2

    .line 346
    const-string v10, "GoogleLoginService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Clearing all accounts and inserting ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 349
    .local v2, am:Landroid/accounts/AccountManager;
    const-string v10, "com.google"

    invoke-virtual {v2, v10}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 350
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v3, v1

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v0, v3, v6

    .line 351
    .local v0, account:Landroid/accounts/Account;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v0, v10, v11}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 350
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 336
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #am:Landroid/accounts/AccountManager;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v5           #flags:I
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #password:Ljava/lang/String;
    .end local v9           #username:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 337
    .local v4, e:Ljava/lang/SecurityException;
    const/4 v10, 0x3

    goto :goto_0

    .line 353
    .end local v4           #e:Ljava/lang/SecurityException;
    .restart local v1       #accounts:[Landroid/accounts/Account;
    .restart local v2       #am:Landroid/accounts/AccountManager;
    .restart local v3       #arr$:[Landroid/accounts/Account;
    .restart local v5       #flags:I
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #password:Ljava/lang/String;
    .restart local v9       #username:Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v10, v11, v9, v8, v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->saveAccountInternal(Landroid/accounts/AccountManager;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 357
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #am:Landroid/accounts/AccountManager;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v5           #flags:I
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #password:Ljava/lang/String;
    .end local v9           #username:Ljava/lang/String;
    :cond_2
    const/4 v10, 0x3

    goto :goto_0
.end method
