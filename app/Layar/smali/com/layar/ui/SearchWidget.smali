.class public Lcom/layar/ui/SearchWidget;
.super Landroid/widget/RelativeLayout;
.source "SearchWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/SearchWidget$SearchListener;
    }
.end annotation


# static fields
.field private static final CANCEL_ICON_ID:I = 0x7f020105

.field private static final QUERY_HINT_ID:I = 0x7f0900c6

.field private static final QUERY_ICON_ID:I = 0x7f02010a


# instance fields
.field private isActive:Z

.field private isSearchActive:Z

.field private mHintResId:I

.field private mInitQuery:Ljava/lang/String;

.field private mListener:Lcom/layar/ui/SearchWidget$SearchListener;

.field private mSearchHistory:Lcom/layar/adapters/SearchHistoryAdapter;

.field private viewSearchButton:Landroid/widget/ImageButton;

.field private viewSearchQuery:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const v0, 0x7f0900c6

    iput v0, p0, Lcom/layar/ui/SearchWidget;->mHintResId:I

    .line 39
    iput-boolean v1, p0, Lcom/layar/ui/SearchWidget;->isActive:Z

    .line 40
    iput-boolean v1, p0, Lcom/layar/ui/SearchWidget;->isSearchActive:Z

    .line 44
    return-void
.end method

.method private _cancel()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->mListener:Lcom/layar/ui/SearchWidget$SearchListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->mListener:Lcom/layar/ui/SearchWidget$SearchListener;

    invoke-interface {v0, p0}, Lcom/layar/ui/SearchWidget$SearchListener;->onCancel(Landroid/view/View;)V

    .line 209
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/layar/ui/SearchWidget;->_setState(Z)V

    .line 210
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_1
    return-void
.end method

.method private _initViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 128
    new-instance v0, Lcom/layar/adapters/SearchHistoryAdapter;

    invoke-virtual {p0}, Lcom/layar/ui/SearchWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/layar/adapters/SearchHistoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/ui/SearchWidget;->mSearchHistory:Lcom/layar/adapters/SearchHistoryAdapter;

    .line 130
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/layar/ui/SearchWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchButton:Landroid/widget/ImageButton;

    .line 131
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    .line 133
    const-string v1, "Your SearchWidget must have a Button whose id attribute is \'R.id.searchGo\'"

    .line 132
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 136
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/layar/ui/SearchWidget$1;

    invoke-direct {v1, p0}, Lcom/layar/ui/SearchWidget$1;-><init>(Lcom/layar/ui/SearchWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/layar/ui/SearchWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    .line 146
    iget v0, p0, Lcom/layar/ui/SearchWidget;->mHintResId:I

    if-eq v0, v2, :cond_1

    .line 147
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    iget v1, p0, Lcom/layar/ui/SearchWidget;->mHintResId:I

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    .line 148
    iput v2, p0, Lcom/layar/ui/SearchWidget;->mHintResId:I

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/layar/ui/SearchWidget$2;

    invoke-direct {v1, p0}, Lcom/layar/ui/SearchWidget$2;-><init>(Lcom/layar/ui/SearchWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 157
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/layar/ui/SearchWidget$3;

    invoke-direct {v1, p0}, Lcom/layar/ui/SearchWidget$3;-><init>(Lcom/layar/ui/SearchWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/layar/ui/SearchWidget;->mSearchHistory:Lcom/layar/adapters/SearchHistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 170
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 171
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setCursorVisible(Z)V

    .line 173
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/layar/ui/SearchWidget$4;

    invoke-direct {v1, p0}, Lcom/layar/ui/SearchWidget$4;-><init>(Lcom/layar/ui/SearchWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 180
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/layar/ui/SearchWidget$5;

    invoke-direct {v1, p0}, Lcom/layar/ui/SearchWidget$5;-><init>(Lcom/layar/ui/SearchWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->mInitQuery:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/layar/ui/SearchWidget;->mInitQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_2
    invoke-direct {p0, v3}, Lcom/layar/ui/SearchWidget;->_setState(Z)V

    .line 193
    return-void
.end method

.method private _search()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/layar/ui/SearchWidget;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, query:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v4}, Landroid/widget/AutoCompleteTextView;->setCursorVisible(Z)V

    .line 219
    iget-object v2, p0, Lcom/layar/ui/SearchWidget;->mSearchHistory:Lcom/layar/adapters/SearchHistoryAdapter;

    invoke-virtual {v2, v1}, Lcom/layar/adapters/SearchHistoryAdapter;->addQuery(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/layar/ui/SearchWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 222
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 223
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/layar/ui/SearchWidget;->_setState(Z)V

    .line 224
    iget-object v2, p0, Lcom/layar/ui/SearchWidget;->mListener:Lcom/layar/ui/SearchWidget$SearchListener;

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/layar/ui/SearchWidget;->mListener:Lcom/layar/ui/SearchWidget$SearchListener;

    invoke-interface {v2, p0, v1}, Lcom/layar/ui/SearchWidget$SearchListener;->onSearch(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _setState(Z)V
    .locals 2
    .parameter "searching"

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/layar/ui/SearchWidget;->isActive:Z

    if-nez v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    iput-boolean p1, p0, Lcom/layar/ui/SearchWidget;->isSearchActive:Z

    .line 232
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const v1, 0x7f020105

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 233
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_0

    .line 232
    :cond_1
    const v1, 0x7f02010a

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/layar/ui/SearchWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/layar/ui/SearchWidget;->_cancel()V

    return-void
.end method

.method static synthetic access$1(Lcom/layar/ui/SearchWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/layar/ui/SearchWidget;->_search()V

    return-void
.end method

.method static synthetic access$2(Lcom/layar/ui/SearchWidget;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3(Lcom/layar/ui/SearchWidget;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/layar/ui/SearchWidget;->_setState(Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/layar/ui/SearchWidget;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method


# virtual methods
.method public activate(Z)V
    .locals 1
    .parameter "activate"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/layar/ui/SearchWidget;->_setState(Z)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/layar/ui/SearchWidget;->showKeyboard(Z)V

    .line 49
    return-void
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/layar/ui/SearchWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/layar/ui/SearchWidget;->isActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearchingActive()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/layar/ui/SearchWidget;->isSearchActive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/layar/ui/SearchWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/ui/SearchWidget;->isActive:Z

    .line 115
    invoke-direct {p0}, Lcom/layar/ui/SearchWidget;->_initViews()V

    .line 116
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    iput-boolean v1, p0, Lcom/layar/ui/SearchWidget;->isActive:Z

    .line 121
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->mSearchHistory:Lcom/layar/adapters/SearchHistoryAdapter;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->mSearchHistory:Lcom/layar/adapters/SearchHistoryAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/SearchHistoryAdapter;->saveToFile()V

    .line 123
    :cond_0
    invoke-virtual {p0, v1}, Lcom/layar/ui/SearchWidget;->activate(Z)V

    .line 124
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 125
    return-void
.end method

.method public quaryRequestFocus()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/layar/ui/SearchWidget;->_cancel()V

    .line 198
    return-void
.end method

.method public search()V
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/layar/ui/SearchWidget;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/layar/ui/SearchWidget;->_search()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 96
    :cond_1
    return-void
.end method

.method public setHint(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    iput p1, p0, Lcom/layar/ui/SearchWidget;->mHintResId:I

    goto :goto_0
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_0

    .line 74
    iput-object p1, p0, Lcom/layar/ui/SearchWidget;->mInitQuery:Ljava/lang/String;

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSearchListener(Lcom/layar/ui/SearchWidget$SearchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/layar/ui/SearchWidget;->mListener:Lcom/layar/ui/SearchWidget$SearchListener;

    .line 87
    return-void
.end method

.method public showKeyboard(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/layar/ui/SearchWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 54
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    if-nez v1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/layar/ui/SearchWidget;->quaryRequestFocus()Z

    .line 58
    iget-object v1, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/layar/ui/SearchWidget;->viewSearchQuery:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
