.class public Lcom/android/browser/IntentHandler;
.super Ljava/lang/Object;
.source "IntentHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/IntentHandler$UrlData;
    }
.end annotation


# static fields
.field static final EMPTY_URL_DATA:Lcom/android/browser/IntentHandler$UrlData;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mController:Lcom/android/browser/Controller;

.field private mSettings:Lcom/android/browser/BrowserSettings;

.field private mTabControl:Lcom/android/browser/TabControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/android/browser/IntentHandler$UrlData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/browser/IntentHandler;->EMPTY_URL_DATA:Lcom/android/browser/IntentHandler$UrlData;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/Controller;)V
    .locals 1
    .parameter "browser"
    .parameter "controller"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    .line 62
    iget-object v0, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    .line 63
    invoke-virtual {p2}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/IntentHandler;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 64
    return-void
.end method

.method private static addRlzParameter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "uri"
    .parameter "rlz"

    .prologue
    .line 394
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 397
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "rlz"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static handleWebSearchIntent(Landroid/app/Activity;Lcom/android/browser/Controller;Landroid/content/Intent;)Z
    .locals 5
    .parameter "activity"
    .parameter "controller"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 276
    if-nez p2, :cond_0

    move v3, v4

    .line 292
    :goto_0
    return v3

    .line 278
    :cond_0
    const/4 v2, 0x0

    .line 279
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 282
    goto :goto_0

    .line 284
    :cond_1
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 285
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 286
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 292
    .end local v1           #data:Landroid/net/Uri;
    :cond_2
    :goto_1
    const-string v3, "app_data"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "intent_extra_data_key"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v2, v3, v4}, Lcom/android/browser/IntentHandler;->handleWebSearchRequest(Landroid/app/Activity;Lcom/android/browser/Controller;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 287
    :cond_3
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    :cond_4
    const-string v3, "query"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static handleWebSearchRequest(Landroid/app/Activity;Lcom/android/browser/Controller;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 7
    .parameter "activity"
    .parameter "controller"
    .parameter "inUrl"
    .parameter "appData"
    .parameter "extraData"

    .prologue
    const/4 v6, 0x0

    .line 305
    if-nez p2, :cond_0

    move v4, v6

    .line 338
    :goto_0
    return v4

    .line 309
    :cond_0
    invoke-static {p2}, Lcom/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, url:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_0

    .line 314
    :cond_1
    sget-object v4, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/browser/UrlUtils;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v4, v6

    .line 316
    goto :goto_0

    .line 319
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 320
    .local v0, cr:Landroid/content/ContentResolver;
    move-object v1, v3

    .line 321
    .local v1, newUrl:Ljava/lang/String;
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 325
    :cond_4
    new-instance v4, Lcom/android/browser/IntentHandler$1;

    invoke-direct {v4, v0, v1}, Lcom/android/browser/IntentHandler$1;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    new-array v5, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/browser/IntentHandler$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 334
    :cond_5
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v2

    .line 335
    .local v2, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-nez v2, :cond_6

    move v4, v6

    goto :goto_0

    .line 336
    :cond_6
    invoke-interface {v2, p0, v3, p3, p4}, Lcom/android/browser/search/SearchEngine;->startSearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 338
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static needsRlz(Landroid/net/Uri;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 385
    const-string v0, "rlz"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "q"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/browser/UrlUtils;->isGoogleUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const/4 v0, 0x1

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/IntentHandler$UrlData;
    .locals 19
    .parameter "intent"

    .prologue
    .line 212
    const-string v16, ""

    .line 213
    .local v16, url:Ljava/lang/String;
    const/4 v7, 0x0

    .line 214
    .local v7, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v17

    const/high16 v18, 0x10

    and-int v17, v17, v18

    if-nez v17, :cond_1

    .line 216
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, action:Ljava/lang/String;
    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    .line 219
    if-eqz v16, :cond_1

    const-string v17, "http"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 220
    const-string v17, "com.android.browser.headers"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 222
    .local v10, pairs:Landroid/os/Bundle;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/os/Bundle;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    .line 223
    invoke-virtual {v10}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 224
    .local v8, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 225
    .restart local v7       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 226
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 227
    .local v9, key:Ljava/lang/String;
    invoke-virtual {v10, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v7

    move-object v1, v9

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 232
    .end local v8           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9           #key:Ljava/lang/String;
    :cond_0
    const-string v17, "com.android.browser.application_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, appId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/BrowserSettings;->getRlzValue()Ljava/lang/String;

    move-result-object v11

    .line 235
    .local v11, rlz:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 236
    .local v15, uri:Landroid/net/Uri;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-static {v15}, Lcom/android/browser/IntentHandler;->needsRlz(Landroid/net/Uri;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 237
    invoke-static {v15, v11}, Lcom/android/browser/IntentHandler;->addRlzParameter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 238
    .local v12, rlzUri:Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    .line 266
    .end local v4           #action:Ljava/lang/String;
    .end local v6           #appId:Ljava/lang/String;
    .end local v10           #pairs:Landroid/os/Bundle;
    .end local v11           #rlz:Ljava/lang/String;
    .end local v12           #rlzUri:Landroid/net/Uri;
    .end local v15           #uri:Landroid/net/Uri;
    :cond_1
    :goto_1
    new-instance v17, Lcom/android/browser/IntentHandler$UrlData;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object v2, v7

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Intent;)V

    return-object v17

    .line 242
    .restart local v4       #action:Ljava/lang/String;
    :cond_2
    const-string v17, "android.intent.action.SEARCH"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "android.intent.action.MEDIA_SEARCH"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 245
    :cond_3
    const-string v17, "query"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 246
    if-eqz v16, :cond_1

    .line 249
    invoke-static/range {v16 .. v16}, Lcom/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 250
    invoke-static/range {v16 .. v16}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 251
    const-string v13, "&source=android-browser-suggest&"

    .line 252
    .local v13, searchSource:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 253
    const/4 v14, 0x0

    .line 254
    .local v14, source:Ljava/lang/String;
    const-string v17, "app_data"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 255
    .local v5, appData:Landroid/os/Bundle;
    if-eqz v5, :cond_4

    .line 256
    const-string v17, "source"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 258
    :cond_4
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 259
    const-string v14, "unknown"

    .line 261
    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "&source=android-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "&"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object v1, v13

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1
.end method

.method onNewIntent(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 67
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v9}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v4

    .line 70
    .local v4, current:Lcom/android/browser/Tab;
    if-nez v4, :cond_2

    .line 72
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v9, v11}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v4

    .line 73
    if-nez v4, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v9, v4}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 79
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    .line 81
    .local v5, flags:I
    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const/high16 v9, 0x10

    and-int/2addr v9, v5

    if-nez v9, :cond_0

    .line 86
    const-string v9, "show_bookmarks"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 87
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v9, v11}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Z)V

    goto :goto_0

    .line 90
    :cond_3
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v9}, Lcom/android/browser/Controller;->removeComboView()V

    .line 93
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    const-string v10, "search"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/SearchManager;

    invoke-virtual {v9}, Landroid/app/SearchManager;->stopSearch()V

    .line 95
    const-string v9, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 97
    .local v1, activateVoiceSearch:Z
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "android.intent.action.SEARCH"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    if-eqz v1, :cond_0

    .line 102
    :cond_4
    invoke-virtual {v4}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 103
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, title:Ljava/lang/String;
    if-eqz v7, :cond_5

    const-string v9, "query"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 110
    :cond_5
    const-string v9, "android.intent.action.SEARCH"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v4}, Lcom/android/browser/Tab;->voiceSearchSourceIsGoogle()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 112
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v6, logIntent:Landroid/content/Intent;
    const-string v9, "extra_event"

    const/4 v10, 0x3

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    const-string v9, "value"

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 127
    .end local v6           #logIntent:Landroid/content/Intent;
    .end local v7           #title:Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-static {v9, v10, p1}, Lcom/android/browser/IntentHandler;->handleWebSearchIntent(Landroid/app/Activity;Lcom/android/browser/Controller;Landroid/content/Intent;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/browser/IntentHandler;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/IntentHandler$UrlData;

    move-result-object v8

    .line 132
    .local v8, urlData:Lcom/android/browser/IntentHandler$UrlData;
    invoke-virtual {v8}, Lcom/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 133
    new-instance v8, Lcom/android/browser/IntentHandler$UrlData;

    .end local v8           #urlData:Lcom/android/browser/IntentHandler$UrlData;
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v9}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;)V

    .line 136
    .restart local v8       #urlData:Lcom/android/browser/IntentHandler$UrlData;
    :cond_7
    const-string v9, "create_new_tab"

    invoke-virtual {p1, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 137
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v10}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v10

    invoke-virtual {v9, v10, v8, v11, v12}, Lcom/android/browser/Controller;->openTabAndShow(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;

    goto/16 :goto_0

    .line 140
    :cond_8
    const-string v9, "com.android.browser.application_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, appId:Ljava/lang/String;
    iget-object v9, v8, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, v8, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    const-string v10, "javascript:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 145
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v9, v12, v8, v13, v2}, Lcom/android/browser/Controller;->openTabAndShow(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;

    goto/16 :goto_0

    .line 148
    :cond_9
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    if-eqz v1, :cond_e

    if-eqz v2, :cond_e

    :cond_a
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    const/high16 v9, 0x40

    and-int/2addr v9, v5

    if-eqz v9, :cond_e

    .line 154
    if-eqz v1, :cond_c

    .line 155
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v9, v2}, Lcom/android/browser/TabControl;->getTabFromId(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v3

    .line 156
    .local v3, appTab:Lcom/android/browser/Tab;
    if-eqz v3, :cond_b

    .line 157
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v9, v3, v2, v8}, Lcom/android/browser/Controller;->reuseTab(Lcom/android/browser/Tab;Ljava/lang/String;Lcom/android/browser/IntentHandler$UrlData;)V

    goto/16 :goto_0

    .line 160
    :cond_b
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v9, v12, v8, v11, v2}, Lcom/android/browser/Controller;->openTabAndShow(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;

    goto/16 :goto_0

    .line 165
    .end local v3           #appTab:Lcom/android/browser/Tab;
    :cond_c
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v10, v8, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/browser/TabControl;->findUnusedTabWithUrl(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v3

    .line 166
    .restart local v3       #appTab:Lcom/android/browser/Tab;
    if-eqz v3, :cond_d

    .line 167
    if-eq v4, v3, :cond_0

    .line 168
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v10, v3}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/browser/Controller;->switchToTab(I)Z

    goto/16 :goto_0

    .line 177
    :cond_d
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v9, v12, v8, v11, v2}, Lcom/android/browser/Controller;->openTabAndShow(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;

    goto/16 :goto_0

    .line 181
    .end local v3           #appTab:Lcom/android/browser/Tab;
    :cond_e
    invoke-virtual {v8}, Lcom/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_15

    iget-object v9, v8, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    const-string v10, "about:debug"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 183
    const-string v9, "about:debug.dom"

    iget-object v10, v8, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 184
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto/16 :goto_0

    .line 185
    :cond_f
    const-string v9, "about:debug.dom.file"

    iget-object v10, v8, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 186
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto/16 :goto_0

    .line 187
    :cond_10
    const-string v9, "about:debug.render"

    iget-object v10, v8, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 188
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto/16 :goto_0

    .line 189
    :cond_11
    const-string v9, "about:debug.render.file"

    iget-object v10, v8, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 190
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto/16 :goto_0

    .line 191
    :cond_12
    const-string v9, "about:debug.display"

    iget-object v10, v8, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 192
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebView;->dumpDisplayTree()V

    goto/16 :goto_0

    .line 193
    :cond_13
    const-string v9, "about:debug.nav"

    iget-object v10, v8, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 194
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebView;->debugDump()V

    goto/16 :goto_0

    .line 196
    :cond_14
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mSettings:Lcom/android/browser/BrowserSettings;

    iget-object v10, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9, v10}, Lcom/android/browser/BrowserSettings;->toggleDebugSettings(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 201
    :cond_15
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v9, v4}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 205
    invoke-virtual {v4, v12}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 206
    iget-object v9, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v9, v4, v8}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    goto/16 :goto_0
.end method
