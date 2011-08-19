.class public Lcom/android/browser/UrlHandler;
.super Ljava/lang/Object;
.source "UrlHandler.java"


# instance fields
.field mActivity:Landroid/app/Activity;

.field mController:Lcom/android/browser/Controller;


# direct methods
.method public constructor <init>(Lcom/android/browser/Controller;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    .line 49
    iget-object v0, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    .line 50
    return-void
.end method

.method private isSpecializedHandlerAvailable(Landroid/content/Intent;)Z
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 170
    iget-object v5, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 171
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/16 v5, 0x40

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 173
    .local v1, handlers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v5, v6

    .line 189
    :goto_0
    return v5

    .line 176
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 177
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 178
    .local v0, filter:Landroid/content/IntentFilter;
    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v5

    if-eqz v5, :cond_2

    .line 187
    const/4 v5, 0x1

    goto :goto_0

    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    move v5, v6

    .line 189
    goto :goto_0
.end method


# virtual methods
.method handleMenuClick(Lcom/android/browser/Tab;Ljava/lang/String;)Z
    .locals 2
    .parameter "tab"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->isMenuDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/browser/Controller;->openTab(Lcom/android/browser/Tab;Ljava/lang/String;Z)Lcom/android/browser/Tab;

    .line 197
    iget-object v0, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 198
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "tab"
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-virtual {p2}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 104
    :goto_0
    return v1

    .line 59
    :cond_0
    const-string v1, "wtai://wp/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    const-string v1, "wtai://wp/mc;"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wtai://wp/mc;"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 66
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 71
    iget-object v1, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->closeEmptyChildTab()V

    move v1, v4

    .line 72
    goto :goto_0

    .line 76
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "wtai://wp/sd;"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 78
    goto :goto_0

    .line 83
    :cond_2
    const-string v1, "wtai://wp/ap;"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 85
    goto :goto_0

    .line 92
    :cond_3
    const-string v1, "about:"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "javascript:"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move v1, v2

    .line 93
    goto :goto_0

    .line 96
    :cond_5
    invoke-virtual {p0, p3}, Lcom/android/browser/UrlHandler;->startActivityForUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v4

    .line 97
    goto :goto_0

    .line 100
    :cond_6
    invoke-virtual {p0, p1, p3}, Lcom/android/browser/UrlHandler;->handleMenuClick(Lcom/android/browser/Tab;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v4

    .line 101
    goto :goto_0

    :cond_7
    move v1, v2

    .line 104
    goto :goto_0
.end method

.method startActivityForUrl(Ljava/lang/String;)Z
    .locals 9
    .parameter "url"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 111
    const/4 v4, 0x1

    :try_start_0
    invoke-static {p1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 119
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_1

    .line 120
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, packagename:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 122
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "market://search?q=pname:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 124
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v4, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 130
    iget-object v4, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v4}, Lcom/android/browser/Controller;->closeEmptyChildTab()V

    move v4, v8

    .line 162
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #packagename:Ljava/lang/String;
    :goto_0
    return v4

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, ex:Ljava/net/URISyntaxException;
    const-string v4, "Browser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 114
    goto :goto_0

    .end local v0           #ex:Ljava/net/URISyntaxException;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #packagename:Ljava/lang/String;
    :cond_0
    move v4, v7

    .line 133
    goto :goto_0

    .line 139
    .end local v3           #packagename:Ljava/lang/String;
    :cond_1
    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 144
    sget-object v4, Lcom/android/browser/UrlUtils;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 145
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Lcom/android/browser/UrlHandler;->isSpecializedHandlerAvailable(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v7

    .line 146
    goto :goto_0

    .line 149
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 154
    iget-object v4, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v4}, Lcom/android/browser/Controller;->closeEmptyChildTab()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v8

    .line 155
    goto :goto_0

    .line 157
    :catch_1
    move-exception v4

    :cond_3
    move v4, v7

    .line 162
    goto :goto_0
.end method
