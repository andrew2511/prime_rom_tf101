.class public Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;
.super Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;
.source "SearchActivityViewMultiPane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$InteractionListener;
    }
.end annotation


# instance fields
.field private mPsychicController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

.field private mQsbWebView:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

.field private mSuggestiveQueryEditor:Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;

.field private mSummonsExpanded:Z

.field private mSummonsExpander:Landroid/widget/ImageView;

.field private mUserCommitedQuery:Z

.field private mWebViewStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mSummonsExpanded:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mSummonsExpanded:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mSummonsExpanded:Z

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->toggleSummons()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mUserCommitedQuery:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mUserCommitedQuery:Z

    return p1
.end method

.method private createPsychicController(Lcom/google/android/googlequicksearchbox/QsbApplication;)Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;
    .locals 11
    .parameter "app"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mQsbWebView:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mWebViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mQsbWebView:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    .line 159
    :cond_0
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mQsbWebView:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getPsychicSuggestAdapter()Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getPsychicPathPattern()Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->getActivity()Lcom/google/android/googlequicksearchbox/SearchActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getAppSearchData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v9

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSourceSelectionStrategy()Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;-><init>(Lcom/google/android/googlequicksearchbox/ui/QsbWebView;Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/Config;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Ljava/util/regex/Pattern;Landroid/os/Bundle;Lcom/google/android/googlequicksearchbox/google/LocationHelper;Lcom/google/android/googlequicksearchbox/google/psychic/PsychicLoadController;)V

    return-object v0
.end method

.method private initializePsychic()V
    .locals 5

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    .line 106
    .local v0, app:Lcom/google/android/googlequicksearchbox/QsbApplication;
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getPsychicSuggestAdapter()Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    move-result-object v1

    .line 107
    .local v1, psychic:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->createPsychicController(Lcom/google/android/googlequicksearchbox/QsbApplication;)Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mPsychicController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    .line 108
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mPsychicController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    new-instance v3, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$InteractionListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$InteractionListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$1;)V

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->setInteractionListener(Lcom/google/android/googlequicksearchbox/ui/QsbWebViewInteractionListener;)V

    .line 109
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mPsychicController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->setPsychicController(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)V

    .line 111
    new-instance v2, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;Lcom/google/android/googlequicksearchbox/QsbApplication;)V

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->setTextUpdater(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicQueryUpdater;)V

    .line 123
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mSuggestiveQueryEditor:Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;

    new-instance v3, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$3;

    invoke-direct {v3, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$3;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;)V

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;->addQueryTextWatcher(Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;)V

    .line 131
    return-void
.end method

.method private toggleSummons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mSummonsExpander:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 142
    .local v0, p:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mSummonsExpanded:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mSummonsExpanded:Z

    .line 143
    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mSummonsExpanded:Z

    if-eqz v1, :cond_1

    .line 144
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 145
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mSummonsExpander:Landroid/widget/ImageView;

    const v2, 0x7f02001c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    :goto_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mSummonsExpander:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    return-void

    :cond_0
    move v1, v2

    .line 142
    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 149
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mSummonsExpander:Landroid/widget/ImageView;

    const v2, 0x7f02001b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public goBack()Z
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->goBack()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mPsychicController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getPsychicSuggestAdapter()Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->setPsychicController(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)V

    .line 101
    :cond_0
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->onDestroy()V

    .line 102
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->onFinishInflate()V

    .line 83
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mSuggestiveQueryEditor:Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;

    .line 84
    const v0, 0x7f0f001e

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mSummonsExpander:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mSummonsExpander:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mSummonsExpander:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$1;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_0
    const v0, 0x7f0f001c

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mWebViewStub:Landroid/view/ViewStub;

    .line 93
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->onResume()V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->shouldUsePsychic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mQsbWebView:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->initializePsychic()V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mQsbWebView:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mQsbWebView:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->hide()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mUserCommitedQuery:Z

    .line 136
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->onStart()V

    .line 137
    return-void
.end method

.method public setQueryFromUser(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->setQueryFromUser(Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mUserCommitedQuery:Z

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->setSuggestedTextInQueryEditor(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public setSuggestedTextInQueryEditor(Ljava/lang/String;)V
    .locals 1
    .parameter "suggestion"

    .prologue
    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mSuggestiveQueryEditor:Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->mSuggestiveQueryEditor:Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;->setSuggestedText(Ljava/lang/String;)V

    .line 183
    :cond_1
    return-void
.end method
