.class public Lcom/google/android/gm/ConversationListActivity;
.super Lcom/google/android/gm/BaseConversationListActivity;
.source "ConversationListActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;
.implements Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gm/BaseConversationListActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
        ">;",
        "Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;",
        "Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;"
    }
.end annotation


# instance fields
.field private mApplyLabelsButton:Landroid/widget/Button;

.field private mArchiveButton:Landroid/widget/Button;

.field private mDeleteButton:Landroid/widget/Button;

.field private mFooterInitialized:Z

.field private mFooterOrganizeView:Landroid/widget/LinearLayout;

.field private final mHandler:Landroid/os/Handler;

.field private mLabel:Lcom/google/android/gm/provider/Label;

.field private final mLabelDataSetObserver:Landroid/database/DataSetObserver;

.field private mLabelObserversRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lcom/google/android/gm/BaseConversationListActivity;-><init>()V

    .line 63
    new-instance v0, Lcom/google/android/gm/ConversationListActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ConversationListActivity$1;-><init>(Lcom/google/android/gm/ConversationListActivity;)V

    iput-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/google/android/gm/ConversationListActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ConversationListActivity$2;-><init>(Lcom/google/android/gm/ConversationListActivity;)V

    iput-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mLabelDataSetObserver:Landroid/database/DataSetObserver;

    .line 81
    iput-boolean v1, p0, Lcom/google/android/gm/ConversationListActivity;->mLabelObserversRegistered:Z

    .line 85
    iput-boolean v1, p0, Lcom/google/android/gm/ConversationListActivity;->mFooterInitialized:Z

    .line 101
    return-void
.end method

.method constructor <init>(Lcom/google/android/gm/provider/Gmail;Lcom/google/android/gm/Persistence;)V
    .locals 2
    .parameter "gmail"
    .parameter "prefs"

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lcom/google/android/gm/BaseConversationListActivity;-><init>()V

    .line 63
    new-instance v0, Lcom/google/android/gm/ConversationListActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ConversationListActivity$1;-><init>(Lcom/google/android/gm/ConversationListActivity;)V

    iput-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/google/android/gm/ConversationListActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ConversationListActivity$2;-><init>(Lcom/google/android/gm/ConversationListActivity;)V

    iput-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mLabelDataSetObserver:Landroid/database/DataSetObserver;

    .line 81
    iput-boolean v1, p0, Lcom/google/android/gm/ConversationListActivity;->mLabelObserversRegistered:Z

    .line 85
    iput-boolean v1, p0, Lcom/google/android/gm/ConversationListActivity;->mFooterInitialized:Z

    .line 105
    iput-object p1, p0, Lcom/google/android/gm/ConversationListActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 106
    iput-object p2, p0, Lcom/google/android/gm/ConversationListActivity;->mPrefs:Lcom/google/android/gm/Persistence;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/ConversationListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListActivity;->initBestGuessTitleBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gm/ConversationListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createConversationIntent(Lcom/google/android/gm/ConversationInfo;)Landroid/content/Intent;
    .locals 4
    .parameter

    .prologue
    .line 402
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/HtmlConversationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    const-string v1, "thread-id"

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 405
    const-string v1, "maxMessageId"

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationInfo;->getMaxMessageId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 407
    const-string v1, "list-context"

    iget-object v2, p0, Lcom/google/android/gm/ConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 409
    const-string v1, "is-read"

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gm/provider/LabelManager;->serialize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    return-object v0
.end method

.method private createConversationIntent(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)Landroid/content/Intent;
    .locals 11
    .parameter "cursor"
    .parameter "cursorIsTransient"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 377
    new-instance v0, Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getMaxServerMessageId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getLabels()Ljava/util/Map;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ConversationInfo;-><init>(JJLjava/util/Map;)V

    .line 379
    .local v0, conversationInfo:Lcom/google/android/gm/ConversationInfo;
    invoke-direct {p0, v0}, Lcom/google/android/gm/ConversationListActivity;->createConversationIntent(Lcom/google/android/gm/ConversationInfo;)Landroid/content/Intent;

    move-result-object v8

    .line 381
    .local v8, result:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->position()I

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    if-nez p2, :cond_0

    .line 387
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v6

    .line 388
    .local v6, count:I
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->position()I

    move-result v7

    .line 389
    .local v7, position:I
    const-string v1, "older-exists"

    add-int/lit8 v2, v7, 0x1

    if-ge v2, v6, :cond_1

    move v2, v10

    :goto_0
    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 390
    const-string v1, "newer-exists"

    if-lez v7, :cond_2

    move v2, v10

    :goto_1
    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 393
    .end local v6           #count:I
    .end local v7           #position:I
    :cond_0
    return-object v8

    .restart local v6       #count:I
    .restart local v7       #position:I
    :cond_1
    move v2, v9

    .line 389
    goto :goto_0

    :cond_2
    move v2, v9

    .line 390
    goto :goto_1
.end method

.method private hideFooter()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 507
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mFooterOrganizeView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 508
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mFooterOrganizeView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mFooterOrganizeView:Landroid/widget/LinearLayout;

    const v1, 0x7f050004

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 512
    :cond_0
    return-void
.end method

.method private initAccountSwitcherButton(Ljava/lang/String;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 436
    const v1, 0x7f0e004b

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ConversationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 437
    .local v0, accountButton:Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 440
    return-void
.end method

.method private initBestGuessTitleBar()V
    .locals 3

    .prologue
    .line 415
    const-string v1, ""

    .line 417
    .local v1, title:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/google/android/gm/ConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/google/android/gm/ConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->getSearchQuery()Ljava/lang/String;

    move-result-object v1

    .line 422
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/ConversationListActivity;->mLabel:Lcom/google/android/gm/provider/Label;

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/google/android/gm/Utils;->isStringEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gm/ConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gm/Utils;->isStringEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 424
    iget-object v2, p0, Lcom/google/android/gm/ConversationListActivity;->mLabel:Lcom/google/android/gm/provider/Label;

    invoke-static {p0, v2}, Lcom/google/android/gm/Utils;->formatLabelWithUnreadCount(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)Ljava/lang/String;

    move-result-object v1

    .line 427
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/ConversationListActivity;->mAccount:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/google/android/gm/Utils;->setTitleWithAccount(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 428
    iget-object v2, p0, Lcom/google/android/gm/ConversationListActivity;->mAccount:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/gm/ConversationListActivity;->initAccountSwitcherButton(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 431
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    invoke-static {p0}, Lcom/google/android/gm/Utils;->handleAccountNotSynchronized(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private initializeArchiveButton(Lcom/google/android/gm/provider/Label;)V
    .locals 6
    .parameter "label"

    .prologue
    const/4 v5, 0x0

    .line 489
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mArchiveButton:Landroid/widget/Button;

    .line 490
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mArchiveButton:Landroid/widget/Button;

    invoke-static {p0, p1}, Lcom/google/android/gm/MenuHandler;->getYButtonText(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mArchiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mArchiveButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 493
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mArchiveButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail;->isLabelUserSettable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mFooterOrganizeView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListActivity;->mArchiveButton:Landroid/widget/Button;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 497
    return-void

    .line 493
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private initializeFooterIfNeeded()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 460
    iget-boolean v0, p0, Lcom/google/android/gm/ConversationListActivity;->mFooterInitialized:Z

    if-nez v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mLabel:Lcom/google/android/gm/provider/Label;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mLabel:Lcom/google/android/gm/provider/Label;

    invoke-direct {p0, v0}, Lcom/google/android/gm/ConversationListActivity;->initializeArchiveButton(Lcom/google/android/gm/provider/Label;)V

    .line 466
    :cond_0
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mDeleteButton:Landroid/widget/Button;

    .line 467
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mDeleteButton:Landroid/widget/Button;

    const v1, 0x7f0d0030

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 469
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mDeleteButton:Landroid/widget/Button;

    const-string v1, "^k"

    iget-object v2, p0, Lcom/google/android/gm/ConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mDeleteButton:Landroid/widget/Button;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 474
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mFooterOrganizeView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListActivity;->mDeleteButton:Landroid/widget/Button;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mApplyLabelsButton:Landroid/widget/Button;

    .line 478
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mApplyLabelsButton:Landroid/widget/Button;

    const v1, 0x7f0d0082

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 479
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mApplyLabelsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mApplyLabelsButton:Landroid/widget/Button;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 481
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mFooterOrganizeView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListActivity;->mApplyLabelsButton:Landroid/widget/Button;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ConversationListActivity;->mFooterInitialized:Z

    .line 486
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 469
    goto :goto_0
.end method

.method private registerLabelObserver()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 165
    iget-boolean v0, p0, Lcom/google/android/gm/ConversationListActivity;->mLabelObserversRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mLabel:Lcom/google/android/gm/provider/Label;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mLabel:Lcom/google/android/gm/provider/Label;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/provider/Label;->enableSelfUpdate(Landroid/content/Context;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mLabel:Lcom/google/android/gm/provider/Label;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListActivity;->mLabelDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/Label;->registerDataSetObserver(Landroid/database/DataSetObserver;Z)V

    .line 168
    iput-boolean v2, p0, Lcom/google/android/gm/ConversationListActivity;->mLabelObserversRegistered:Z

    .line 170
    :cond_0
    return-void
.end method

.method private showConversationInternal(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)V
    .locals 2
    .parameter "cursor"
    .parameter "cursorIsTransient"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/ConversationListActivity;->createConversationIntent(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/ConversationListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 356
    return-void
.end method

.method private showFooter()V
    .locals 2

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListActivity;->initializeFooterIfNeeded()V

    .line 501
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mFooterOrganizeView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mFooterOrganizeView:Landroid/widget/LinearLayout;

    const v1, 0x7f050003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 504
    return-void
.end method

.method private unregisterLabelObserver()V
    .locals 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/android/gm/ConversationListActivity;->mLabelObserversRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mLabel:Lcom/google/android/gm/provider/Label;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mLabel:Lcom/google/android/gm/provider/Label;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListActivity;->mLabelDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Label;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mLabel:Lcom/google/android/gm/provider/Label;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/provider/Label;->disableSelfUpdate(Landroid/content/Context;)V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ConversationListActivity;->mLabelObserversRegistered:Z

    .line 183
    :cond_0
    return-void
.end method


# virtual methods
.method public createConversationIntent(I)Landroid/content/Intent;
    .locals 2
    .parameter "position"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .line 366
    .local v0, cursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 367
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ConversationListActivity;->createConversationIntent(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public doneChangingLabels(Lcom/google/android/gm/LabelOperations;)V
    .locals 1
    .parameter "labelOperations"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gm/Utils;->isConversationBeingRemoved(Lcom/google/android/gm/LabelOperations;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->clear()V

    .line 552
    :cond_0
    return-void
.end method

.method public getHelpContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    const-string v0, "gm_cl"

    return-object v0
.end method

.method protected initialize(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p0}, Lcom/google/android/gm/provider/LabelManager;->getLabelAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gm/provider/LabelManager$LabelResultCallback;)V

    .line 115
    const-string v0, "CLA.setContentView"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 116
    const v0, 0x7f04000d

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationListActivity;->setContentView(I)V

    .line 117
    const-string v0, "CLA.setContentView"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationListFragment;->showList(Lcom/google/android/gm/ConversationListContext;)V

    .line 120
    const v0, 0x7f0e0037

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mFooterOrganizeView:Landroid/widget/LinearLayout;

    .line 122
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationListActivity;->setDefaultKeyMode(I)V

    .line 123
    return-void
.end method

.method protected onAccountsUpdated()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const-wide/16 v5, 0x0

    .line 283
    const-string v2, "Gmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult(), id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    packed-switch p1, :pswitch_data_0

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 287
    :pswitch_0
    if-eqz p3, :cond_0

    .line 288
    const-string v2, "conversation-removed"

    invoke-virtual {p3, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 289
    .local v0, removedConversationId:J
    cmp-long v2, v0, v5

    if-eqz v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/google/android/gm/ConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gm/ConversationSelectionSet;->remove(Ljava/lang/Long;)V

    .line 296
    iget-object v2, p0, Lcom/google/android/gm/ConversationListActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const-string v3, "undo-extras-from-conv"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gm/UndoOperation;->restoreFromExtras(Landroid/os/Bundle;)Lcom/google/android/gm/UndoOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gm/MenuHandler;->setUndoOperation(Lcom/google/android/gm/UndoOperation;)V

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 308
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gm/ConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/MenuHandler;->performYButtonAction(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    goto :goto_0

    .line 317
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v0}, Lcom/google/android/gm/MenuHandler;->changeLabels()V

    goto :goto_0

    .line 323
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gm/ConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/MenuHandler;->delete(Ljava/util/Collection;)V

    goto :goto_0

    .line 332
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mAccountHelper:Lcom/google/android/gm/AccountHelper;

    invoke-virtual {v0}, Lcom/google/android/gm/AccountHelper;->switchAccounts()V

    goto :goto_0

    .line 306
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x7f0e004b -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 444
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 445
    new-instance v0, Lcom/google/android/gm/ApplyRemoveLabelDialog;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gm/ApplyRemoveLabelDialog;-><init>(Landroid/app/Activity;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CommandListener;)V

    .line 447
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gm/BaseConversationListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V
    .locals 1
    .parameter "label"
    .parameter "conversationId"
    .parameter "add"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gm/ConversationSelectionSet;->onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V

    .line 539
    return-void
.end method

.method public onLabelResult(Lcom/google/android/gm/provider/Label;)V
    .locals 4
    .parameter "label"

    .prologue
    .line 187
    if-nez p1, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d013a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, toastText:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListActivity;->finish()V

    .line 211
    .end local v1           #toastText:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iput-object p1, p0, Lcom/google/android/gm/ConversationListActivity;->mLabel:Lcom/google/android/gm/provider/Label;

    .line 198
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListActivity;->registerLabelObserver()V

    .line 201
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/gm/ConversationInfo;->forIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .line 202
    .local v0, conversationInfo:Lcom/google/android/gm/ConversationInfo;
    if-eqz v0, :cond_2

    .line 203
    invoke-direct {p0, v0}, Lcom/google/android/gm/ConversationListActivity;->createConversationIntent(Lcom/google/android/gm/ConversationInfo;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gm/ConversationListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/gm/ConversationListActivity;->mFooterInitialized:Z

    if-eqz v2, :cond_0

    .line 209
    invoke-direct {p0, p1}, Lcom/google/android/gm/ConversationListActivity;->initializeArchiveButton(Lcom/google/android/gm/provider/Label;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v1, -0x20000001

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    .line 220
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 261
    .local v1, itemId:I
    const v0, 0x7f0e00af

    if-ne v1, v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->clear()V

    move v0, v2

    .line 274
    :goto_0
    return v0

    .line 264
    :cond_0
    const v0, 0x7f0e00ad

    if-ne v1, v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mAccountHelper:Lcom/google/android/gm/AccountHelper;

    invoke-virtual {v0}, Lcom/google/android/gm/AccountHelper;->switchAccounts()V

    move v0, v2

    .line 266
    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v2, p0, Lcom/google/android/gm/ConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/ConversationListActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationListFragment;->getSelectedLabels()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->onMenuItemSelected(ILjava/util/Collection;Ljava/util/Map;ZLcom/google/android/gm/CommandListener;)Z

    move-result v6

    .line 271
    .local v6, handled:Z
    if-nez v6, :cond_2

    .line 272
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseConversationListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v6

    .line 274
    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Lcom/google/android/gm/BaseConversationListActivity;->onPause()V

    .line 151
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"
    .parameter "bundle"

    .prologue
    .line 452
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    check-cast p2, Lcom/google/android/gm/ApplyRemoveLabelDialog;

    .end local p2
    iget-object v1, p0, Lcom/google/android/gm/ConversationListActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListFragment;->getSelectedLabels()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ConversationListActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListFragment;->getSelectedConversations()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/google/android/gm/MenuHandler;->prepareLabelDialog(Lcom/google/android/gm/ApplyRemoveLabelDialog;Ljava/util/Map;Ljava/util/Collection;)V

    .line 457
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    .line 231
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 234
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    .line 235
    .local v7, inflater:Landroid/view/MenuInflater;
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, displayedLabel:Ljava/lang/String;
    const v0, 0x7f110003

    invoke-virtual {v7, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 239
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListFragment;->getSelectedLabels()Ljava/util/Map;

    move-result-object v2

    .line 240
    .local v2, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v3

    .line 241
    .local v3, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->onPrepareMenu(Landroid/view/Menu;Ljava/util/Map;Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 254
    .end local v2           #labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    .end local v3           #conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .end local v4           #displayedLabel:Ljava/lang/String;
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseConversationListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 246
    :cond_0
    const v0, 0x7f110002

    invoke-virtual {v7, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 249
    const v0, 0x7f0e00ae

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 250
    .local v6, inboxMenuItem:Landroid/view/MenuItem;
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isInboxView()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 251
    const v0, 0x7f0e00ad

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    move v0, v5

    .line 250
    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/google/android/gm/BaseConversationListActivity;->onResume()V

    .line 140
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListActivity;->initBestGuessTitleBar()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 144
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    invoke-static {p0}, Lcom/google/android/gm/Utils;->handleAccountNotSynchronized(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onSetBecomeUnempty(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListActivity;->showFooter()V

    .line 519
    return-void
.end method

.method public onSetChanged(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 530
    return-void
.end method

.method public onSetEmpty(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListActivity;->hideFooter()V

    .line 525
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Lcom/google/android/gm/BaseConversationListActivity;->onStart()V

    .line 132
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListActivity;->registerLabelObserver()V

    .line 133
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListActivity;->unregisterLabelObserver()V

    .line 156
    invoke-super {p0}, Lcom/google/android/gm/BaseConversationListActivity;->onStop()V

    .line 157
    return-void
.end method

.method protected rebuildConversationList()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method protected restoreState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 127
    return-void
.end method

.method protected showConversationAtCursor()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/gm/ConversationListActivity;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ConversationListActivity;->showConversationInternal(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)V

    .line 346
    return-void
.end method
