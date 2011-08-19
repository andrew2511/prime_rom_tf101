.class public Lcom/google/android/googlequicksearchbox/WebHistoryProvider;
.super Landroid/content/ContentProvider;
.source "WebHistoryProvider.java"


# instance fields
.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addShortcut(Landroid/content/ContentValues;)V
    .locals 7
    .parameter "shortcut"

    .prologue
    .line 102
    const-string v4, "shortcut_source"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, sourceName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    const-string v4, "QSB.WebHistoryProvider"

    const-string v5, "Missing shortcut_source"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 109
    .local v2, sourceComponent:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/googlequicksearchbox/WebHistoryProvider;->checkCallingPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 110
    const-string v4, "QSB.WebHistoryProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got shortcut for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from a different process"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_2
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/WebHistoryProvider;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/googlequicksearchbox/Config;->shouldAllowWebHistoryFromPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 115
    const-string v4, "QSB.WebHistoryProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not allowed to add web search history"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_3
    const-string v4, "suggest_intent_action"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, sourceAction:Ljava/lang/String;
    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    const-string v4, "suggest_intent_query"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, query:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 127
    const-string v4, "QSB.WebHistoryProvider"

    const-string v5, "Ignoring web search with no query."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_4
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/WebHistoryProvider;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldUseLocalWebHistory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    const-string v4, "QSB.WebHistoryProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding web search history entry from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/WebHistoryProvider;->getWebHistoryRepository()Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/WebHistoryProvider;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/googlequicksearchbox/Clock;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v4, v0, v5, v6}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;->insertLocalHistory(Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method private buildUriMatcher()Landroid/content/UriMatcher;
    .locals 4

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/WebHistoryProvider;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, authority:Ljava/lang/String;
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    .line 56
    .local v1, matcher:Landroid/content/UriMatcher;
    const-string v2, "shortcuts"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    return-object v1
.end method

.method private checkCallingPackage(Ljava/lang/String;)Z
    .locals 9
    .parameter "packageName"

    .prologue
    const/4 v8, 0x0

    .line 140
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 141
    .local v1, callingUid:I
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/WebHistoryProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 142
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, uidPkgs:[Ljava/lang/String;
    if-nez v6, :cond_0

    move v7, v8

    .line 147
    :goto_0
    return v7

    .line 144
    :cond_0
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 145
    .local v5, uidPkg:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    .line 144
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v5           #uidPkg:Ljava/lang/String;
    :cond_2
    move v7, v8

    .line 147
    goto :goto_0
.end method

.method private getAuthority()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/WebHistoryProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".shortcuts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getClock()Lcom/google/android/googlequicksearchbox/Clock;
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/WebHistoryProvider;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v0

    return-object v0
.end method

.method private getConfig()Lcom/google/android/googlequicksearchbox/Config;
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/WebHistoryProvider;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    return-object v0
.end method

.method private getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/WebHistoryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method private getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/WebHistoryProvider;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    return-object v0
.end method

.method private getWebHistoryRepository()Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/WebHistoryProvider;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebHistoryRepository()Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/WebHistoryProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/WebHistoryProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/google/android/googlequicksearchbox/WebHistoryProvider;->addShortcut(Landroid/content/ContentValues;)V

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/WebHistoryProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/WebHistoryProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
