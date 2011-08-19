.class public abstract Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;
.super Landroid/widget/RelativeLayout;
.source "SearchActivityView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$CloseClickListener;,
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchClickListener;,
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryListener;,
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;,
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$ButtonsKeyListener;,
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryTextEditorActionListener;,
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchGoButtonClickListener;,
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;,
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;,
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchTextWatcher;
    }
.end annotation


# instance fields
.field protected mButtonsKeyListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

.field private mDisplayedCompletions:Lcom/google/android/googlequicksearchbox/SuggestionList;

.field protected mExitClickListener:Landroid/view/View$OnClickListener;

.field private mHideShowInputMethodFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mJustCreated:Z

.field private mMenuButton:Landroid/widget/ImageView;

.field private mQueryListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryListener;

.field protected mQueryTextHint:Landroid/widget/ImageView;

.field protected mQueryTextIcon:Landroid/widget/ImageView;

.field protected mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

.field protected mQueryWasEmpty:Z

.field private mSearchClickListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchClickListener;

.field protected mSearchCloseButton:Landroid/widget/ImageButton;

.field protected mSearchGoButton:Landroid/widget/ImageButton;

.field protected mSearchPlate:Landroid/view/View;

.field protected mSearchPlateVsGoButtons:Landroid/view/View;

.field private mShowingTextFieldSpinner:Z

.field protected mSuggestionsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

.field protected mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

.field protected mSuggestionsKeyListener:Landroid/view/View$OnKeyListener;

.field protected mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

.field protected mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

.field private mUpdateSuggestions:Z

.field protected mVoiceSearchButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryWasEmpty:Z

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryWasEmpty:Z

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryWasEmpty:Z

    .line 125
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->showPopupMenu()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->showTextFieldSpinner(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mDisplayedCompletions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mUpdateSuggestions:Z

    return v0
.end method

.method private createSuggestionsController()Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;
    .locals 1

    .prologue
    .line 385
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$7;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$7;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->createSuggestionsController(Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;)Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    move-result-object v0

    return-object v0
.end method

.method private setupEntryAnimations()V
    .locals 1

    .prologue
    .line 251
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->isHoneycombOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setupHoneycombEntryAnimations()V

    .line 254
    :cond_0
    return-void
.end method

.method private setupHoneycombEntryAnimations()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x96

    .line 259
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Landroid/view/View;

    if-nez v5, :cond_0

    .line 282
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getSuggestionsWidth()I

    move-result v2

    .line 263
    .local v2, endingWidth:I
    int-to-float v5, v2

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 265
    .local v4, startingWidth:I
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 266
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 267
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 270
    .local v1, animator:Landroid/animation/Animator;
    invoke-virtual {v1, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 271
    move-object v0, v1

    check-cast v0, Landroid/animation/ValueAnimator;

    move-object v5, v0

    new-instance v6, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$5;

    invoke-direct {v6, p0, v4, v2}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$5;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;II)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 280
    invoke-virtual {v1, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 281
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 269
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private shouldForwardToQueryTextView(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 753
    sparse-switch p1, :sswitch_data_0

    .line 763
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 761
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 753
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method private showPopupMenu()V
    .locals 4

    .prologue
    .line 211
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mMenuButton:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 212
    .local v1, popup:Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 213
    .local v0, menu:Landroid/view/Menu;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getActivity()Lcom/google/android/googlequicksearchbox/SearchActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/google/android/googlequicksearchbox/SearchActivity;->createMenuItems(Landroid/view/Menu;Z)V

    .line 214
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 215
    return-void
.end method

.method private showTextFieldSpinner(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mShowingTextFieldSpinner:Z

    if-eq p1, v0, :cond_0

    .line 400
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mShowingTextFieldSpinner:Z

    .line 401
    if-eqz p1, :cond_1

    .line 402
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->doShowTextFieldSpinner()V

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->doHideTextFieldSpinner()V

    goto :goto_0
.end method

.method private updateMenuButton()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mMenuButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mMenuButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setNextFocusLeftId(I)V

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 512
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mMenuButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setNextFocusLeftId(I)V

    goto :goto_0

    .line 514
    :cond_2
    const-string v0, "QSB.SearchActivityView"

    const-string v1, "Neither the SearchGoButton nor the VoiceSearchButton are visible; defaulting"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mMenuButton:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setNextFocusUpId(I)V

    goto :goto_0
.end method

.method private webSuggestionsToCompletions(Lcom/google/android/googlequicksearchbox/Suggestions;)[Landroid/view/inputmethod/CompletionInfo;
    .locals 10
    .parameter "s"

    .prologue
    .line 610
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getWebResult()Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v5

    .line 611
    .local v5, suggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;
    if-nez v5, :cond_0

    const/4 v7, 0x0

    .line 629
    .end local p0
    :goto_0
    return-object v7

    .line 613
    .restart local p0
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v5}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 617
    .local v0, completions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/CompletionInfo;>;"
    new-instance v1, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;

    invoke-interface {v5}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getSourceName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    .local v1, completionsList:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    const/4 v3, 0x0

    .line 620
    .local v3, position:I
    invoke-interface {v5}, Lcom/google/android/googlequicksearchbox/SuggestionList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 621
    .local v4, suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Suggestion;->isWebSearchSuggestion()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 622
    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/CharSequence;

    move-result-object v6

    .line 623
    .local v6, text1:Ljava/lang/CharSequence;
    new-instance v7, Landroid/view/inputmethod/CompletionInfo;

    int-to-long v8, v3

    invoke-direct {v7, v8, v9, v3, v6}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    invoke-interface {v1, v4}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    .line 625
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 628
    .end local v4           #suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    .end local v6           #text1:Ljava/lang/CharSequence;
    :cond_2
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mDisplayedCompletions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 629
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/view/inputmethod/CompletionInfo;

    move-object v7, p0

    goto :goto_0
.end method


# virtual methods
.method protected clearAdapters()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 309
    return-void
.end method

.method public considerHidingInputMethod()V
    .locals 0

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->hideInputMethod()V

    .line 562
    return-void
.end method

.method protected createSuggestionsAdapter()Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;
    .locals 3

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    .line 377
    .local v0, app:Lcom/google/android/googlequicksearchbox/QsbApplication;
    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getListEntryViewFactory()Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;-><init>(Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;)V

    return-object v1
.end method

.method protected createSuggestionsController(Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;)Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;
    .locals 2
    .parameter "observer"

    .prologue
    .line 394
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;-><init>(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;)V

    return-object v0
.end method

.method protected createSuggestionsPromoter()Lcom/google/android/googlequicksearchbox/CachingPromoter;
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createWebPromoter()Lcom/google/android/googlequicksearchbox/CachingPromoter;

    move-result-object v0

    return-object v0
.end method

.method protected createSummonsPromoter()Lcom/google/android/googlequicksearchbox/CachingPromoter;
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSummonsPromoter()Lcom/google/android/googlequicksearchbox/CachingPromoter;

    move-result-object v0

    return-object v0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 574
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getActivity()Lcom/google/android/googlequicksearchbox/SearchActivity;

    move-result-object v0

    .line 575
    .local v0, activity:Lcom/google/android/googlequicksearchbox/SearchActivity;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->isQueryEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 577
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 578
    .local v1, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_1

    .line 579
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 581
    invoke-virtual {v1, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    move v2, v4

    .line 591
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    return v2

    .line 583
    .restart local v1       #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 585
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->hideInputMethod()V

    .line 586
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->onBackPressed()V

    move v2, v4

    .line 587
    goto :goto_0

    .line 591
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected abstract doHideTextFieldSpinner()V
.end method

.method protected abstract doShowTextFieldSpinner()V
.end method

.method protected forwardKeyToQueryTextView(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 743
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->shouldForwardToQueryTextView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v0, p2}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 749
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forwardKeyToQueryTextView(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 739
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->forwardKeyToQueryTextView(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected getActivity()Lcom/google/android/googlequicksearchbox/SearchActivity;
    .locals 2

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 493
    .local v0, context:Landroid/content/Context;
    instance-of v1, v0, Lcom/google/android/googlequicksearchbox/SearchActivity;

    if-eqz v1, :cond_0

    .line 494
    check-cast v0, Lcom/google/android/googlequicksearchbox/SearchActivity;

    .end local v0           #context:Landroid/content/Context;
    move-object v1, v0

    .line 496
    :goto_0
    return-object v1

    .restart local v0       #context:Landroid/content/Context;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getConfig()Lcom/google/android/googlequicksearchbox/Config;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayedSuggestions()Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;->getPromotedSuggestions()Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    return-object v0
.end method

.method protected getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 2

    .prologue
    .line 460
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, q:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSuggestions()Lcom/google/android/googlequicksearchbox/Suggestions;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;->getSuggestions()Lcom/google/android/googlequicksearchbox/Suggestions;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getSuggestionsWidth()I
.end method

.method protected getVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;

    move-result-object v0

    return-object v0
.end method

.method protected getVoiceSearchIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->isHoneycombOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getVoiceSearchIconFromVoiceSearch()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 340
    :cond_0
    if-nez v0, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 343
    :cond_1
    return-object v0
.end method

.method protected getVoiceSearchIconFromVoiceSearch()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 348
    .local v4, voiceSearch:Landroid/content/ComponentName;
    if-eqz v4, :cond_0

    .line 351
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 353
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    iget-object v1, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 355
    .local v1, metaData:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 356
    const-string v5, "com.android.launcher.toolbar_icon"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 357
    .local v0, iconResId:I
    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v3

    .line 360
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 368
    .end local v0           #iconResId:I
    .end local v1           #metaData:Landroid/os/Bundle;
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v5

    .line 363
    :catch_0
    move-exception v5

    .line 368
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public goBack()Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public hideInputMethod()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->checkForInconsistentTouchMode()V

    .line 557
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->hideInputMethod()V

    .line 558
    return-void
.end method

.method protected initSearchPlate()Landroid/view/View;
    .locals 1

    .prologue
    .line 207
    const v0, 0x7f0f000f

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected abstract installAdapters()V
.end method

.method public isQueryEmpty()Z
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->initSearchPlate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Landroid/view/View;

    const v1, 0x7f0f0024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    .line 133
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Landroid/view/View;

    const v1, 0x7f0f0020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextIcon:Landroid/widget/ImageView;

    .line 134
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Landroid/view/View;

    const v1, 0x7f0f0023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextHint:Landroid/widget/ImageView;

    .line 139
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsKeyListener:Landroid/view/View$OnKeyListener;

    .line 141
    const v0, 0x7f0f000d

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    .line 142
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->createSuggestionsAdapter()Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    .line 147
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsKeyListener:Landroid/view/View$OnKeyListener;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 149
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->createSuggestionsAdapter()Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    .line 150
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsKeyListener:Landroid/view/View$OnKeyListener;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 152
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->createSuggestionsController()Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    .line 153
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setSuggestionsController(Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getMaxSuggestionsDisplayDelayMillis()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;->setMaxDisplayDelayMillis(J)V

    .line 157
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->createSuggestionsPromoter()Lcom/google/android/googlequicksearchbox/CachingPromoter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;->setSuggestionsView(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->createSummonsPromoter()Lcom/google/android/googlequicksearchbox/CachingPromoter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;->setSummonsView(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Landroid/view/View;

    const v1, 0x7f0f0025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    .line 161
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Landroid/view/View;

    const v1, 0x7f0f0027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    .line 162
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Landroid/view/View;

    const v1, 0x7f0f0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    .line 163
    const v0, 0x7f0f0026

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlateVsGoButtons:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getVoiceSearchIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;

    invoke-direct {v0, p0, v3}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mHideShowInputMethodFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 168
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchTextWatcher;

    invoke-direct {v1, p0, v3}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchTextWatcher;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->addQueryTextWatcher(Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryTextEditorActionListener;

    invoke-direct {v1, p0, v3}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryTextEditorActionListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mHideShowInputMethodFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchGoButtonClickListener;

    invoke-direct {v1, p0, v3}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchGoButtonClickListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

    invoke-direct {v0, p0, v3}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$ButtonsKeyListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mButtonsKeyListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

    .line 175
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mButtonsKeyListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mHideShowInputMethodFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mButtonsKeyListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mHideShowInputMethodFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mButtonsKeyListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 181
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$CloseClickListener;

    invoke-direct {v1, p0, v3}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$CloseClickListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mHideShowInputMethodFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 185
    :cond_0
    const v0, 0x7f0f0008

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mMenuButton:Landroid/widget/ImageView;

    .line 186
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mMenuButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mMenuButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mMenuButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$2;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$2;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 200
    :cond_1
    invoke-virtual {p0, v4}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->updateUi(Z)V

    .line 202
    iput-boolean v4, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mUpdateSuggestions:Z

    .line 203
    iput-boolean v4, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mJustCreated:Z

    .line 204
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->overrideEntryAndExitAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getActivity()Lcom/google/android/googlequicksearchbox/SearchActivity;

    move-result-object v0

    const/high16 v1, 0x7f05

    const v2, 0x7f050001

    invoke-virtual {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->overridePendingTransition(II)V

    .line 248
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->overrideEntryAndExitAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mJustCreated:Z

    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setupEntryAnimations()V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mJustCreated:Z

    .line 242
    :cond_0
    return-void
.end method

.method protected onSearchClicked(I)Z
    .locals 2
    .parameter "method"

    .prologue
    .line 640
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchClickListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchClickListener;

    if-eqz v1, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, query:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchClickListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchClickListener;

    invoke-interface {v1, v0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchClickListener;->onSearchClicked(Ljava/lang/String;I)Z

    move-result v1

    .line 644
    .end local v0           #query:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->installAdapters()V

    .line 219
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$3;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$3;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 225
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$4;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$4;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 231
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->clearAdapters()V

    .line 286
    return-void
.end method

.method protected onSuggestionsChanged()V
    .locals 0

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->updateInputMethodSuggestions()V

    .line 634
    return-void
.end method

.method protected onSummonsChanged()V
    .locals 0

    .prologue
    .line 637
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 294
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->requestFocus()Z

    .line 295
    if-eqz p1, :cond_0

    .line 296
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$6;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$6;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    :cond_0
    return-void
.end method

.method protected overrideEntryAndExitAnimations()Z
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->isHoneycombOrLater()Z

    move-result v0

    return v0
.end method

.method public setExitClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mExitClickListener:Landroid/view/View$OnClickListener;

    .line 449
    return-void
.end method

.method public setQuery(Ljava/lang/String;Z)V
    .locals 1
    .parameter "query"
    .parameter "selectAll"

    .prologue
    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mUpdateSuggestions:Z

    .line 473
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v0, p2}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setTextSelection(Z)V

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mUpdateSuggestions:Z

    .line 476
    return-void
.end method

.method public setQueryFromUser(Ljava/lang/String;)V
    .locals 4
    .parameter "query"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 482
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, oldQuery:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mUpdateSuggestions:Z

    .line 484
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v1, p1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setTextSelection(Z)V

    .line 486
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->requestFocus()Z

    .line 487
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->showInputMethodForQuery()V

    .line 488
    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mUpdateSuggestions:Z

    .line 489
    return-void

    :cond_0
    move v1, v2

    .line 483
    goto :goto_0
.end method

.method public setQueryListener(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryListener;

    .line 419
    return-void
.end method

.method public setSearchClickListener(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchClickListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchClickListener;

    .line 423
    return-void
.end method

.method public setSuggestionClickListener(Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->setSuggestionClickListener(Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;)V

    .line 433
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->setSuggestionClickListener(Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;)V

    .line 434
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$8;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setCommitCompletionListener(Lcom/google/android/googlequicksearchbox/ui/QueryTextView$CommitCompletionListener;)V

    .line 445
    return-void
.end method

.method public setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 1
    .parameter "suggestions"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;->setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 453
    return-void
.end method

.method public setVoiceSearchButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    :cond_0
    return-void
.end method

.method public showInputMethodForQuery()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->showInputMethod()V

    .line 566
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->updateInputMethodSuggestions()V

    .line 567
    return-void
.end method

.method protected updateInputMethodSuggestions()V
    .locals 5

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 601
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;->getSuggestions()Lcom/google/android/googlequicksearchbox/Suggestions;

    move-result-object v2

    .line 603
    .local v2, suggestions:Lcom/google/android/googlequicksearchbox/Suggestions;
    if-eqz v2, :cond_0

    .line 604
    invoke-direct {p0, v2}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->webSuggestionsToCompletions(Lcom/google/android/googlequicksearchbox/Suggestions;)[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v0

    .line 606
    .local v0, completions:[Landroid/view/inputmethod/CompletionInfo;
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v1, v3, v0}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_0
.end method

.method protected updateQueryTextView(Z)V
    .locals 2
    .parameter "queryEmpty"

    .prologue
    .line 529
    if-eqz p1, :cond_0

    .line 530
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextHint:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextHint:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateSearchGoButton(Z)V
    .locals 2
    .parameter "queryEmpty"

    .prologue
    .line 537
    if-eqz p1, :cond_0

    .line 538
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateUi(Z)V
    .locals 0
    .parameter "queryEmpty"

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->updateQueryTextView(Z)V

    .line 523
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->updateSearchGoButton(Z)V

    .line 524
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->updateVoiceSearchButton(Z)V

    .line 525
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->updateMenuButton()V

    .line 526
    return-void
.end method

.method protected updateVoiceSearchButton(Z)V
    .locals 2
    .parameter "queryEmpty"

    .prologue
    .line 545
    if-eqz p1, :cond_0

    .line 546
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
