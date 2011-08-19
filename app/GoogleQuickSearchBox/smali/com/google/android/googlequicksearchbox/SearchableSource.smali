.class public Lcom/google/android/googlequicksearchbox/SearchableSource;
.super Ljava/lang/Object;
.source "SearchableSource.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/Source;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/SearchableSource$ShortcutSourceResultBuilder;
    }
.end annotation


# instance fields
.field private final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mContext:Landroid/content/Context;

.field private final mEnabledByDefault:Z

.field private mIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;

.field private final mIconLoaderExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

.field private final mName:Ljava/lang/String;

.field private final mSearchable:Landroid/app/SearchableInfo;

.field private final mShouldGroupResults:Z

.field private final mShowSingleLine:Z

.field private mSourceIcon:Landroid/graphics/drawable/Drawable$ConstantState;

.field private mSuggestUriBase:Landroid/net/Uri;

.field private final mUiThread:Landroid/os/Handler;

.field private final mVersionCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Landroid/app/SearchableInfo;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;)V
    .locals 5
    .parameter "context"
    .parameter "config"
    .parameter "searchable"
    .parameter "uiThread"
    .parameter "iconLoader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSourceIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 74
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 76
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mUiThread:Landroid/os/Handler;

    .line 77
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mIconLoaderExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 78
    invoke-virtual {p3}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 80
    .local v0, componentName:Landroid/content/ComponentName;
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    .line 81
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 83
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 84
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 85
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mVersionCode:I

    .line 86
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v3, p0}, Lcom/google/android/googlequicksearchbox/Config;->isSourceEnabledByDefault(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mEnabledByDefault:Z

    .line 87
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v3, p0}, Lcom/google/android/googlequicksearchbox/Config;->isSourceShowSingleLine(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mShowSingleLine:Z

    .line 88
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v3, p0}, Lcom/google/android/googlequicksearchbox/Config;->isSourceGroupResults(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mShouldGroupResults:Z

    .line 89
    return-void
.end method

.method private canRead(Landroid/net/Uri;)Z
    .locals 14
    .parameter "uri"

    .prologue
    .line 123
    iget-object v11, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v8

    .line 125
    .local v8, provider:Landroid/content/pm/ProviderInfo;
    if-nez v8, :cond_0

    .line 126
    const-string v11, "QSB.SearchableSource"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " has bad suggestion authority "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v11, 0x0

    .line 159
    :goto_0
    return v11

    .line 129
    :cond_0
    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 130
    .local v9, readPermission:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 132
    const/4 v11, 0x1

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 135
    .local v7, pid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    .line 136
    .local v10, uid:I
    iget-object v11, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v9, v7, v10}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v11

    if-nez v11, :cond_2

    .line 139
    const/4 v11, 0x1

    goto :goto_0

    .line 141
    :cond_2
    iget-object v4, v8, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 142
    .local v4, pathPermissions:[Landroid/content/pm/PathPermission;
    if-eqz v4, :cond_3

    array-length v11, v4

    if-nez v11, :cond_4

    .line 145
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 147
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, path:Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Landroid/content/pm/PathPermission;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_6

    aget-object v6, v0, v1

    .line 149
    .local v6, perm:Landroid/content/pm/PathPermission;
    invoke-virtual {v6}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, pathReadPermission:Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {v6, v3}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5, v7, v10}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v11

    if-nez v11, :cond_5

    .line 155
    const/4 v11, 0x1

    goto :goto_0

    .line 148
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 159
    .end local v5           #pathReadPermission:Ljava/lang/String;
    .end local v6           #perm:Landroid/content/pm/PathPermission;
    :cond_6
    const/4 v11, 0x0

    goto :goto_0
.end method

.method private getIconLoader()Lcom/google/android/googlequicksearchbox/IconLoader;
    .locals 7

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;

    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getIconPackage()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, iconPackage:Ljava/lang/String;
    new-instance v6, Lcom/google/android/googlequicksearchbox/CachingIconLoader;

    new-instance v0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mUiThread:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mIconLoaderExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/PackageIconLoader;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;)V

    invoke-direct {v6, v0}, Lcom/google/android/googlequicksearchbox/CachingIconLoader;-><init>(Lcom/google/android/googlequicksearchbox/IconLoader;)V

    iput-object v6, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;

    .line 194
    .end local v3           #iconPackage:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;

    return-object v0
.end method

.method private getIconPackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestPackage()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, iconPackage:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 226
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSourceIconResource()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    return v0
.end method

.method private declared-synchronized getSuggestUriBase(Landroid/app/SearchableInfo;)Landroid/net/Uri;
    .locals 5
    .parameter "searchable"

    .prologue
    const/4 v4, 0x0

    .line 347
    monitor-enter p0

    if-nez p1, :cond_0

    move-object v3, v4

    .line 371
    :goto_0
    monitor-exit p0

    return-object v3

    .line 350
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSuggestUriBase:Landroid/net/Uri;

    if-nez v3, :cond_3

    .line 352
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, authority:Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v3, v4

    .line 354
    goto :goto_0

    .line 357
    :cond_1
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 362
    .local v2, uriBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, contentPath:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 364
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 368
    :cond_2
    const-string v3, "search_suggest_query"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 369
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSuggestUriBase:Landroid/net/Uri;

    .line 371
    .end local v0           #authority:Ljava/lang/String;
    .end local v1           #contentPath:Ljava/lang/String;
    .end local v2           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_3
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSuggestUriBase:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getSuggestions(Landroid/content/Context;Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 9
    .parameter "context"
    .parameter "searchable"
    .parameter "query"
    .parameter "queryLimit"

    .prologue
    const/4 v2, 0x0

    .line 380
    invoke-direct {p0, p2}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getSuggestUriBase(Landroid/app/SearchableInfo;)Landroid/net/Uri;

    move-result-object v6

    .line 381
    .local v6, base:Landroid/net/Uri;
    if-nez v6, :cond_0

    move-object v0, v2

    .line 405
    :goto_0
    return-object v0

    .line 382
    :cond_0
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 385
    .local v8, uriBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 388
    .local v4, selArgs:[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 389
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p3, v4, v0

    .line 394
    .restart local v4       #selArgs:[Ljava/lang/String;
    :goto_1
    const-string v0, "limit"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 396
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 403
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, c:Landroid/database/Cursor;
    move-object v0, v7

    .line 405
    goto :goto_0

    .line 391
    .end local v1           #uri:Landroid/net/Uri;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {v8, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "id"

    .prologue
    .line 456
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 457
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private static getValidationCursor(Landroid/content/Context;Landroid/app/SearchableInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "context"
    .parameter "searchable"
    .parameter "shortcutId"
    .parameter "extraData"

    .prologue
    const/4 v2, 0x0

    .line 410
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v6

    .line 411
    .local v6, authority:Ljava/lang/String;
    if-nez v6, :cond_0

    move-object v0, v2

    .line 435
    :goto_0
    return-object v0

    .line 415
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 420
    .local v8, uriBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v7

    .line 421
    .local v7, contentPath:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 422
    invoke-virtual {v8, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 426
    :cond_1
    const-string v0, "search_suggest_shortcut"

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 427
    invoke-virtual {v8, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 429
    const-string v0, "suggest_intent_extra_data"

    invoke-virtual {v8, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 435
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method private loadSourceIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getSourceIconResource()I

    move-result v0

    .line 262
    .local v0, iconRes:I
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 264
    :goto_0
    return-object v2

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 264
    .local v1, pm:Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method private static safeClose(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 283
    if-eqz p0, :cond_0

    .line 285
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 288
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "QSB.SearchableSource"

    const-string v2, "cursor close() failed, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getDefaultIntentAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 445
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 447
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.intent.action.SEARCH"

    goto :goto_0
.end method

.method public getDefaultIntentData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/util/NowOrLater;
    .locals 1
    .parameter "drawableId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/googlequicksearchbox/util/NowOrLater",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getIconLoader()Lcom/google/android/googlequicksearchbox/IconLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/IconLoader;->getIcon(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/util/NowOrLater;

    move-result-object v0

    return-object v0
.end method

.method public getIconUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "drawableId"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getIconLoader()Lcom/google/android/googlequicksearchbox/IconLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/IconLoader;->getIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryThreshold()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v0

    return v0
.end method

.method public getSettingsDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSettingsDescriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSourceIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSourceIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez v1, :cond_2

    .line 248
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->loadSourceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 249
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 250
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 253
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSourceIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v1, v0

    .line 257
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v1

    .restart local v0       #icon:Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v1, v3

    .line 253
    goto :goto_0

    .line 257
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSourceIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSourceIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v3

    goto :goto_1
.end method

.method public getSourceIconUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getSourceIconResource()I

    move-result v0

    .line 271
    .local v0, resourceId:I
    if-nez v0, :cond_0

    .line 272
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Landroid/content/Context;

    const v2, 0x7f020045

    invoke-static {v1, v2}, Lcom/google/android/googlequicksearchbox/util/Util;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 274
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v2, v0}, Lcom/google/android/googlequicksearchbox/util/Util;->getResourceUri(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getSuggestAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuggestUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getSuggestUriBase(Landroid/app/SearchableInfo;)Landroid/net/Uri;

    move-result-object v0

    .line 337
    .local v0, uri:Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 338
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSuggestions(Ljava/lang/String;I)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 7
    .parameter "query"
    .parameter "queryLimit"

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 297
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v2, Lcom/google/android/googlequicksearchbox/LatencyTracker;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/googlequicksearchbox/LatencyTracker;-><init>(Lcom/google/android/googlequicksearchbox/Clock;)V

    .line 299
    .local v2, latency:Lcom/google/android/googlequicksearchbox/LatencyTracker;
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-direct {p0, v4, v5, p1, p2}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getSuggestions(Landroid/content/Context;Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 301
    new-instance v4, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;

    invoke-direct {v4, p0, p1, v0}, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;-><init>(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Landroid/database/Cursor;)V

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/Config;->getMaxResultsPerSource()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;->build(I)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v3

    .line 303
    .local v3, result:Lcom/google/android/googlequicksearchbox/SuggestionList;
    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/LatencyTracker;->getLatency()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/google/android/googlequicksearchbox/SuggestionList;->setLatency(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->safeClose(Landroid/database/Cursor;)V

    move-object v4, v3

    .end local v2           #latency:Lcom/google/android/googlequicksearchbox/LatencyTracker;
    .end local v3           #result:Lcom/google/android/googlequicksearchbox/SuggestionList;
    :goto_0
    return-object v4

    .line 305
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 306
    .local v1, ex:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v4, "QSB.SearchableSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    new-instance v4, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->safeClose(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->safeClose(Landroid/database/Cursor;)V

    throw v4
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mVersionCode:I

    return v0
.end method

.method public isEnabledByDefault()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mEnabledByDefault:Z

    return v0
.end method

.method public isReadable()Z
    .locals 6

    .prologue
    .line 96
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, authority:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 100
    const/4 v4, 0x1

    .line 114
    :goto_0
    return v4

    .line 103
    :cond_0
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 107
    .local v3, uriBuilder:Landroid/net/Uri$Builder;
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, contentPath:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 112
    :cond_1
    const-string v4, "search_suggest_query"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 113
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 114
    .local v2, uri:Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/google/android/googlequicksearchbox/SearchableSource;->canRead(Landroid/net/Uri;)Z

    move-result v4

    goto :goto_0
.end method

.method public isShowSingleLine()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mShowSingleLine:Z

    return v0
.end method

.method public isVersionCodeCompatible(I)Z
    .locals 1
    .parameter "version"

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getVersionCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryAfterZeroResults()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->queryAfterZeroResults()Z

    move-result v0

    return v0
.end method

.method public refreshShortcut(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 6
    .parameter "shortcutId"
    .parameter "extraData"

    .prologue
    const/4 v5, 0x0

    .line 315
    const/4 v0, 0x0

    .line 317
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mSearchable:Landroid/app/SearchableInfo;

    invoke-static {v2, v3, p1, p2}, Lcom/google/android/googlequicksearchbox/SearchableSource;->getValidationCursor(Landroid/content/Context;Landroid/app/SearchableInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 320
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 321
    new-instance v2, Lcom/google/android/googlequicksearchbox/SearchableSource$ShortcutSourceResultBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Lcom/google/android/googlequicksearchbox/SearchableSource$ShortcutSourceResultBuilder;-><init>(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Landroid/database/Cursor;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/SearchableSource$ShortcutSourceResultBuilder;->build(I)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/googlequicksearchbox/SuggestionList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 330
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->safeClose(Landroid/database/Cursor;)V

    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->safeClose(Landroid/database/Cursor;)V

    move-object v2, v5

    goto :goto_0

    .line 325
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 326
    .local v1, ex:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v2, "QSB.SearchableSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->safeClose(Landroid/database/Cursor;)V

    move-object v2, v5

    goto :goto_0

    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchableSource;->safeClose(Landroid/database/Cursor;)V

    throw v2
.end method

.method public shouldGroupResults()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSource;->mShouldGroupResults:Z

    return v0
.end method
