.class public Lcom/android/browser/UrlInputView;
.super Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;
.source "UrlInputView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/browser/SuggestionsAdapter$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/UrlInputView$UrlInputListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/browser/SuggestionsAdapter;

.field private mContainer:Landroid/view/View;

.field private mDropdownListener:Lcom/android/browser/UI$DropdownChangeListener;

.field private mIncognitoMode:Z

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLandscape:Z

.field private mListener:Lcom/android/browser/UrlInputView$UrlInputListener;

.field private mNeedsUpdate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/android/browser/UrlInputView;->init(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/android/browser/UrlInputView;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-direct {p0, p1}, Lcom/android/browser/UrlInputView;->init(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/UrlInputView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/browser/UrlInputView;->dispatchChange()V

    return-void
.end method

.method private dispatchChange()V
    .locals 3

    .prologue
    .line 288
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 289
    .local v0, popupRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/browser/UrlInputView;->getPopupDrawableRect(Landroid/graphics/Rect;)V

    .line 291
    iget-object v1, p0, Lcom/android/browser/UrlInputView;->mDropdownListener:Lcom/android/browser/UI$DropdownChangeListener;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/browser/UrlInputView;->mDropdownListener:Lcom/android/browser/UI$DropdownChangeListener;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/browser/UI$DropdownChangeListener;->onNewDropdownDimensions(I)V

    .line 294
    :cond_0
    return-void
.end method

.method private finishInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "url"
    .parameter "extra"
    .parameter "source"

    .prologue
    .line 206
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/browser/UrlInputView;->mNeedsUpdate:Z

    .line 207
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->dismissDropDown()V

    .line 208
    iget-object v2, p0, Lcom/android/browser/UrlInputView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/android/browser/UrlInputView;->mListener:Lcom/android/browser/UrlInputView$UrlInputListener;

    invoke-interface {v2}, Lcom/android/browser/UrlInputView$UrlInputListener;->onDismiss()V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-boolean v2, p0, Lcom/android/browser/UrlInputView;->mIncognitoMode:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/browser/UrlInputView;->isSearch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v1

    .line 217
    .local v1, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-eqz v1, :cond_0

    .line 218
    iget-object v2, p0, Lcom/android/browser/UrlInputView;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Lcom/android/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/browser/search/SearchEngines;->getSearchEngineInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/browser/search/SearchEngineInfo;

    move-result-object v0

    .line 220
    .local v0, engineInfo:Lcom/android/browser/search/SearchEngineInfo;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p1}, Lcom/android/browser/search/SearchEngineInfo;->getSearchUriForQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 224
    .end local v0           #engineInfo:Lcom/android/browser/search/SearchEngineInfo;
    .end local v1           #searchEngine:Lcom/android/browser/search/SearchEngine;
    :cond_2
    iget-object v2, p0, Lcom/android/browser/UrlInputView;->mListener:Lcom/android/browser/UrlInputView$UrlInputListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/browser/UrlInputView$UrlInputListener;->onAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v1, 0x1

    .line 83
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/browser/UrlInputView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 84
    invoke-virtual {p0, p0}, Lcom/android/browser/UrlInputView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 85
    new-instance v0, Lcom/android/browser/SuggestionsAdapter;

    invoke-direct {v0, p1, p0}, Lcom/android/browser/SuggestionsAdapter;-><init>(Landroid/content/Context;Lcom/android/browser/SuggestionsAdapter$CompletionListener;)V

    iput-object v0, p0, Lcom/android/browser/UrlInputView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    .line 86
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    invoke-virtual {p0, v0}, Lcom/android/browser/UrlInputView;->setAdapter(Lcom/android/browser/SuggestionsAdapter;)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/browser/UrlInputView;->setSelectAllOnFocus(Z)V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/UrlInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/android/browser/UrlInputView;->setThreshold(I)V

    .line 90
    invoke-virtual {p0, p0}, Lcom/android/browser/UrlInputView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/UrlInputView;->mNeedsUpdate:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/UrlInputView;->mDropdownListener:Lcom/android/browser/UI$DropdownChangeListener;

    .line 94
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    new-instance v1, Lcom/android/browser/UrlInputView$1;

    invoke-direct {v1, p0}, Lcom/android/browser/UrlInputView$1;-><init>(Lcom/android/browser/UrlInputView;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/SuggestionsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 108
    return-void
.end method

.method private setupDropDown()V
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/browser/UrlInputView;->mContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/browser/UrlInputView;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    move v0, v1

    .line 168
    .local v0, width:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getDropDownWidth()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/browser/UrlInputView;->setDropDownWidth(I)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getDropDownHorizontalOffset()I

    move-result v2

    neg-int v2, v2

    if-eq v1, v2, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getLeft()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/browser/UrlInputView;->setDropDownHorizontalOffset(I)V

    .line 174
    :cond_1
    return-void

    .line 167
    .end local v0           #width:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getWidth()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method clearNeedsUpdate()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/UrlInputView;->mNeedsUpdate:Z

    .line 122
    return-void
.end method

.method public dismissDropDown()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->dismissDropDown()V

    .line 163
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    invoke-virtual {v0}, Lcom/android/browser/SuggestionsAdapter;->clearCache()V

    .line 164
    return-void
.end method

.method forceFilter()V
    .locals 0

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->performForcedFiltering()V

    .line 193
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->showDropDown()V

    .line 194
    return-void
.end method

.method forceIme()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 199
    return-void
.end method

.method hideIME()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 203
    return-void
.end method

.method isSearch(Ljava/lang/String;)Z
    .locals 3
    .parameter "inUrl"

    .prologue
    const/4 v2, 0x0

    .line 229
    invoke-static {p1}, Lcom/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 236
    :goto_0
    return v1

    .line 232
    :cond_0
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/browser/UrlUtils;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v2

    .line 234
    goto :goto_0

    .line 236
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method needsUpdate()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/browser/UrlInputView;->mNeedsUpdate:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-super {p0, p1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 145
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/browser/UrlInputView;->mLandscape:Z

    .line 147
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    iget-boolean v1, p0, Lcom/android/browser/UrlInputView;->mLandscape:Z

    invoke-virtual {v0, v1}, Lcom/android/browser/SuggestionsAdapter;->setLandscapeMode(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/browser/UrlInputView;->setupDropDown()V

    .line 150
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getUserText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/UrlInputView;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 152
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 145
    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->useInstant()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "browser-type"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/browser/UrlInputView;->finishInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getUserText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "browser-type"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/browser/UrlInputView;->finishInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/browser/UrlInputView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/browser/SuggestionsAdapter;->getItem(I)Lcom/android/browser/SuggestionsAdapter$SuggestItem;

    move-result-object v0

    .line 256
    .local v0, item:Lcom/android/browser/SuggestionsAdapter$SuggestItem;
    invoke-static {v0}, Lcom/android/browser/SuggestionsAdapter;->getSuggestionUrl(Lcom/android/browser/SuggestionsAdapter$SuggestItem;)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->type:I

    iget-object v3, v0, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->extra:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/browser/UrlInputView;->onSelect(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "evt"

    .prologue
    const/4 v1, 0x0

    .line 276
    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-direct {p0, v1, v1, v1}, Lcom/android/browser/UrlInputView;->finishInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x1

    .line 280
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 1
    .parameter "search"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mListener:Lcom/android/browser/UrlInputView$UrlInputListener;

    invoke-interface {v0, p1}, Lcom/android/browser/UrlInputView$UrlInputListener;->onCopySuggestion(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public onSelect(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "type"
    .parameter "extra"

    .prologue
    .line 248
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    const-string v0, "voice-search"

    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lcom/android/browser/UrlInputView;->finishInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void

    .line 248
    :cond_0
    const-string v0, "browser-suggest"

    goto :goto_0
.end method

.method registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/browser/UrlInputView;->mDropdownListener:Lcom/android/browser/UI$DropdownChangeListener;

    .line 298
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method setContainer(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/browser/UrlInputView;->mContainer:Landroid/view/View;

    .line 132
    return-void
.end method

.method setController(Lcom/android/browser/UiController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 125
    new-instance v0, Lcom/android/browser/UrlSelectionActionMode;

    invoke-direct {v0, p1}, Lcom/android/browser/UrlSelectionActionMode;-><init>(Lcom/android/browser/UiController;)V

    .line 127
    .local v0, urlSelectionMode:Lcom/android/browser/UrlSelectionActionMode;
    invoke-virtual {p0, v0}, Lcom/android/browser/UrlInputView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 128
    return-void
.end method

.method public setIncognitoMode(Z)V
    .locals 2
    .parameter "incognito"

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/android/browser/UrlInputView;->mIncognitoMode:Z

    .line 271
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    iget-boolean v1, p0, Lcom/android/browser/UrlInputView;->mIncognitoMode:Z

    invoke-virtual {v0, v1}, Lcom/android/browser/SuggestionsAdapter;->setIncognitoMode(Z)V

    .line 272
    return-void
.end method

.method public setUrlInputListener(Lcom/android/browser/UrlInputView$UrlInputListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/browser/UrlInputView;->mListener:Lcom/android/browser/UrlInputView$UrlInputListener;

    .line 136
    return-void
.end method

.method setVoiceResults(Ljava/util/List;)V
    .locals 1
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
    .line 139
    .local p1, voiceResults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/SuggestionsAdapter;->setVoiceResults(Ljava/util/List;)V

    .line 140
    return-void
.end method

.method public showDropDown()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/browser/UrlInputView;->setupDropDown()V

    .line 157
    invoke-super {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->showDropDown()V

    .line 158
    return-void
.end method
