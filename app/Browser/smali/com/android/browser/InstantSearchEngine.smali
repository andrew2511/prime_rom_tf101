.class public Lcom/android/browser/InstantSearchEngine;
.super Ljava/lang/Object;
.source "InstantSearchEngine.java"

# interfaces
.implements Lcom/android/browser/UI$DropdownChangeListener;
.implements Lcom/android/browser/search/SearchEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;,
        Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;
    }
.end annotation


# static fields
.field private static final COLUMNS_WITHOUT_DESCRIPTION:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/browser/Controller;

.field private mHeight:I

.field private mInstantBaseUrl:Ljava/lang/String;

.field private final mListener:Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;

.field private mSearchBox:Landroid/webkit/SearchBox;

.field private final mWrapped:Lcom/android/browser/search/SearchEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 333
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/InstantSearchEngine;->COLUMNS_WITHOUT_DESCRIPTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/search/SearchEngine;)V
    .locals 2
    .parameter "context"
    .parameter "wrapped"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;-><init>(Lcom/android/browser/InstantSearchEngine;Lcom/android/browser/InstantSearchEngine$1;)V

    iput-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mListener:Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;

    .line 54
    iput-object p1, p0, Lcom/android/browser/InstantSearchEngine;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/browser/InstantSearchEngine;->mWrapped:Lcom/android/browser/search/SearchEngine;

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/InstantSearchEngine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->getInstantBaseUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/InstantSearchEngine;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->getCurrentWebview()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/browser/InstantSearchEngine;->COLUMNS_WITHOUT_DESCRIPTION:[Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentWebview()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInstantBaseUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 315
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mInstantBaseUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, url:Ljava/lang/String;
    const-string v1, "{CID}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 318
    const-string v1, "{CID}"

    iget-object v2, p0, Lcom/android/browser/InstantSearchEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/browser/BrowserProvider;->getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 321
    :cond_0
    iput-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mInstantBaseUrl:Ljava/lang/String;

    .line 324
    .end local v0           #url:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mInstantBaseUrl:Ljava/lang/String;

    return-object v1
.end method

.method private isInstantPage()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 191
    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->getCurrentWebview()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, currentUrl:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 194
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 195
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, host:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 200
    const-string v4, "www.google."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "/search"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/webhp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    .line 206
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return v4

    .restart local v1       #host:Ljava/lang/String;
    .restart local v2       #path:Ljava/lang/String;
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_1
    move v4, v5

    .line 200
    goto :goto_0

    :cond_2
    move v4, v5

    .line 203
    goto :goto_0

    .end local v1           #host:Ljava/lang/String;
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_3
    move v4, v5

    .line 206
    goto :goto_0
.end method

.method private loadInstantPage()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/browser/InstantSearchEngine$1;

    invoke-direct {v1, p0}, Lcom/android/browser/InstantSearchEngine$1;-><init>(Lcom/android/browser/InstantSearchEngine;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method private rescaleHeight(I)I
    .locals 2
    .parameter "height"

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->getCurrentWebview()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    .line 296
    .local v0, scale:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 297
    int-to-float v1, p1

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 300
    :goto_0
    return v1

    :cond_0
    move v1, p1

    goto :goto_0
.end method

.method private switchSearchboxIfNeeded()V
    .locals 3

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->getCurrentWebview()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v0

    .line 178
    .local v0, searchBox:Landroid/webkit/SearchBox;
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    if-eq v0, v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    iget-object v2, p0, Lcom/android/browser/InstantSearchEngine;->mListener:Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;

    invoke-interface {v1, v2}, Landroid/webkit/SearchBox;->removeSearchBoxListener(Landroid/webkit/SearchBox$SearchBoxListener;)V

    .line 181
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mListener:Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;

    invoke-virtual {v1}, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;->clear()V

    .line 183
    :cond_0
    iput-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    .line 184
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    iget-object v2, p0, Lcom/android/browser/InstantSearchEngine;->mListener:Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;

    invoke-interface {v1, v2}, Landroid/webkit/SearchBox;->addSearchBoxListener(Landroid/webkit/SearchBox$SearchBoxListener;)V

    .line 188
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mController:Lcom/android/browser/Controller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mListener:Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;

    invoke-interface {v0, v1}, Landroid/webkit/SearchBox;->removeSearchBoxListener(Landroid/webkit/SearchBox$SearchBoxListener;)V

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mListener:Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;

    invoke-virtual {v0}, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;->clear()V

    .line 276
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mWrapped:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v0}, Lcom/android/browser/search/SearchEngine;->close()V

    .line 277
    return-void
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09016a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "google"

    return-object v0
.end method

.method public getSuggestions(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "context"
    .parameter "query"

    .prologue
    const/4 v2, 0x0

    .line 225
    if-nez p2, :cond_0

    .line 226
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->isInstantPage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->loadInstantPage()V

    .line 233
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->switchSearchboxIfNeeded()V

    .line 235
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p0}, Lcom/android/browser/Controller;->registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V

    .line 237
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    if-nez v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mWrapped:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/search/SearchEngine;->getSuggestions(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    iget v1, p0, Lcom/android/browser/InstantSearchEngine;->mHeight:I

    invoke-interface {v0, v2, v2, v2, v1}, Landroid/webkit/SearchBox;->setDimensions(IIII)V

    .line 242
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    invoke-interface {v0}, Landroid/webkit/SearchBox;->onresize()V

    .line 244
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/webkit/SearchBox;->setVerbatim(Z)V

    .line 250
    :goto_1
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    invoke-interface {v0, p2}, Landroid/webkit/SearchBox;->setQuery(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    invoke-interface {v0}, Landroid/webkit/SearchBox;->onchange()V

    .line 255
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    new-instance v0, Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    invoke-interface {v0, v2}, Landroid/webkit/SearchBox;->setVerbatim(Z)V

    goto :goto_1

    .line 258
    :cond_4
    new-instance v0, Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;

    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mListener:Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;

    invoke-virtual {v1, p2}, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;->tryWaitForSuggestions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onNewDropdownDimensions(I)V
    .locals 3
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 305
    invoke-direct {p0, p1}, Lcom/android/browser/InstantSearchEngine;->rescaleHeight(I)I

    move-result v0

    .line 307
    .local v0, rescaledHeight:I
    iget v1, p0, Lcom/android/browser/InstantSearchEngine;->mHeight:I

    if-eq v0, v1, :cond_0

    .line 308
    iput v0, p0, Lcom/android/browser/InstantSearchEngine;->mHeight:I

    .line 309
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    invoke-interface {v1, v2, v2, v2, v0}, Landroid/webkit/SearchBox;->setDimensions(IIII)V

    .line 310
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    invoke-interface {v1}, Landroid/webkit/SearchBox;->onresize()V

    .line 312
    :cond_0
    return-void
.end method

.method public setController(Lcom/android/browser/Controller;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/browser/InstantSearchEngine;->mController:Lcom/android/browser/Controller;

    .line 60
    return-void
.end method

.method public startSearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "query"
    .parameter "appData"
    .parameter "extraData"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->switchSearchboxIfNeeded()V

    .line 80
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->isInstantPage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mWrapped:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/browser/search/SearchEngine;->startSearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    invoke-interface {v0, p2}, Landroid/webkit/SearchBox;->setQuery(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/webkit/SearchBox;->setVerbatim(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    invoke-interface {v0}, Landroid/webkit/SearchBox;->onsubmit()V

    goto :goto_0
.end method

.method public supportsSuggestions()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public supportsVoiceSearch()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantSearchEngine {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wantsEmptyQuery()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x1

    return v0
.end method
