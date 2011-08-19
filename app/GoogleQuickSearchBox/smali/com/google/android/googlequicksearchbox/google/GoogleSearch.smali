.class public Lcom/google/android/googlequicksearchbox/google/GoogleSearch;
.super Landroid/app/Activity;
.source "GoogleSearch.java"


# static fields
.field private static DBG:Z


# instance fields
.field private mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldSendLocation(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->getLastFix()Landroid/location/Location;

    move-result-object v0

    goto :goto_0
.end method

.method private getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v0

    return-object v0
.end method

.method private getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 83
    invoke-static {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method private getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    return-object v0
.end method

.method private handleViewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 166
    .local v0, uri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 167
    const-string v2, "QSB.GoogleSearch"

    const-string v3, "Got ACTION_VIEW with no data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 171
    .local v1, viewIntent:Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 173
    const-string v3, "intent_extra_data_key"

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->launchIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleWebSearchIntent(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 99
    const-string v10, "query"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 100
    .local v8, query:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 101
    const-string v10, "QSB.GoogleSearch"

    const-string v11, "Got search intent with no query."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v10, "app_data"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 111
    .local v0, appSearchData:Landroid/os/Bundle;
    const-string v10, "com.android.browser.application_id"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, applicationId:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 116
    :cond_1
    const-string v10, "from_self"

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 117
    .local v3, fromSelf:Z
    const-string v10, "new_search"

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 118
    .local v7, newTab:Z
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->getLocation()Landroid/location/Location;

    move-result-object v6

    .line 122
    .local v6, location:Landroid/location/Location;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    invoke-virtual {v11, v0, v3}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getSearchBaseUrl(Landroid/os/Bundle;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v6, :cond_6

    const-string v11, ""

    :goto_1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&q="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v8, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&v="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getVersionCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 127
    .local v9, searchUri:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getUriRewriter()Lcom/google/android/googlequicksearchbox/google/UriRewriter;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/android/googlequicksearchbox/google/UriRewriter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 129
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 130
    .local v5, launchUriIntent:Landroid/content/Intent;
    const-string v10, "com.android.browser.application_id"

    invoke-virtual {v5, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    if-eqz v7, :cond_2

    .line 132
    const-string v10, "create_new_tab"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    :cond_2
    sget-boolean v10, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->DBG:Z

    if-eqz v10, :cond_3

    const-string v10, "QSB.GoogleSearch"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Formatting location "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_3
    if-eqz v6, :cond_5

    .line 136
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v4, headers:Landroid/os/Bundle;
    const-string v10, "X-Geo"

    invoke-static {v6}, Lcom/google/android/googlequicksearchbox/google/XGeoEncoder;->encodeLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v10, "Geo-Position"

    invoke-static {v6}, Lcom/google/android/googlequicksearchbox/google/GeoPositionEncoder;->encodeLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-boolean v10, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->DBG:Z

    if-eqz v10, :cond_4

    const-string v10, "QSB.GoogleSearch"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Headers: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_4
    const-string v10, "com.android.browser.headers"

    invoke-virtual {v5, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 146
    .end local v4           #headers:Landroid/os/Bundle;
    :cond_5
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    invoke-direct {p0, v5}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->launchIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 148
    .end local v5           #launchUriIntent:Landroid/content/Intent;
    .end local v9           #searchUri:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 149
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    const-string v10, "QSB.GoogleSearch"

    const-string v11, "Error"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 122
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :cond_6
    :try_start_1
    const-string v11, "&action=devloc"
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 182
    :try_start_0
    const-string v1, "QSB.GoogleSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 185
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v1, "QSB.GoogleSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found to handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 190
    const-string v2, "intent_extra_data_key"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, extraData:Ljava/lang/String;
    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, query:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebSuggestSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->logClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 63
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "QSB.GoogleSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 67
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->handleWebSearchIntent(Landroid/content/Intent;)V

    .line 76
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->logIntent(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->finish()V

    .line 80
    return-void

    .line 70
    :cond_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->handleViewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :cond_2
    const-string v2, "QSB.GoogleSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
