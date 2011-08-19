.class public Lcom/google/android/gm/TwoPaneActionBar;
.super Landroid/widget/LinearLayout;
.source "TwoPaneActionBar.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnSuggestionListener;
.implements Lcom/google/android/gm/ViewMode$ModeChangeListener;
.implements Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;
.implements Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/TwoPaneActionBar$AccountSwitchSpinnerAdapter;,
        Lcom/google/android/gm/TwoPaneActionBar$Callback;
    }
.end annotation


# instance fields
.field private final mAccountInboxMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountNames:[Ljava/lang/String;

.field private mAccountParent:Landroid/view/ViewGroup;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActive:Z

.field private mActivity:Landroid/app/Activity;

.field private mBreadCrumbCountView:Landroid/widget/TextView;

.field private mBreadCrumbLabelView:Landroid/widget/TextView;

.field private mBreadCrumbView:Landroid/view/ViewGroup;

.field private mCallback:Lcom/google/android/gm/TwoPaneActionBar$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDisplayedLabel:Lcom/google/android/gm/provider/Label;

.field private final mDisplayedLabelObserver:Landroid/database/DataSetObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mMode:I

.field private mSearchView:Landroid/widget/SearchView;

.field private mViewMode:Lcom/google/android/gm/ViewMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/TwoPaneActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/TwoPaneActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mHandler:Landroid/os/Handler;

    .line 76
    iput-boolean v1, p0, Lcom/google/android/gm/TwoPaneActionBar;->mActive:Z

    .line 87
    iput v1, p0, Lcom/google/android/gm/TwoPaneActionBar;->mMode:I

    .line 322
    new-instance v0, Lcom/google/android/gm/TwoPaneActionBar$4;

    invoke-direct {v0, p0}, Lcom/google/android/gm/TwoPaneActionBar$4;-><init>(Lcom/google/android/gm/TwoPaneActionBar;)V

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mDisplayedLabelObserver:Landroid/database/DataSetObserver;

    .line 137
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActionBar;->mContext:Landroid/content/Context;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/TwoPaneActionBar;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mAccountNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/TwoPaneActionBar;)Lcom/google/android/gm/TwoPaneActionBar$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mCallback:Lcom/google/android/gm/TwoPaneActionBar$Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/TwoPaneActionBar;Lcom/google/android/gm/provider/Label;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/gm/TwoPaneActionBar;->setDisplayedLabel(Lcom/google/android/gm/provider/Label;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gm/TwoPaneActionBar;)Lcom/google/android/gm/provider/Label;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mDisplayedLabel:Lcom/google/android/gm/provider/Label;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gm/TwoPaneActionBar;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gm/TwoPaneActionBar;Landroid/content/Context;Lcom/google/android/gm/provider/Label;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/TwoPaneActionBar;->formatBreadcrumbWithUnreadCount(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/gm/TwoPaneActionBar;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gm/TwoPaneActionBar;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private canBreadCrumbBeShownInMode()Z
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private formatBreadcrumbWithUnreadCount(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)V
    .locals 4
    .parameter "context"
    .parameter "label"

    .prologue
    .line 337
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Label;->getDisplayNoConversationCount()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Label;->getDisplayTotalConversationCount()Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Label;->getNumUnreadConversations()I

    move-result v0

    .line 339
    .local v0, numUnread:I
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/google/android/gm/Utils;->getUnreadCountString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, unreadCountString:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mBreadCrumbLabelView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mBreadCrumbCountView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    .end local v0           #numUnread:I
    .end local v1           #unreadCountString:Ljava/lang/String;
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mBreadCrumbLabelView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mBreadCrumbCountView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setActionBarAccountSpinner(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;I)V
    .locals 5
    .parameter "adapter"
    .parameter "navigationCallback"
    .parameter "currentAccountIndex"

    .prologue
    const v4, 0x7f0e0073

    .line 226
    invoke-virtual {p0, v4}, Lcom/google/android/gm/TwoPaneActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 227
    .local v1, spinner:Landroid/widget/Spinner;
    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 228
    new-instance v2, Lcom/google/android/gm/TwoPaneActionBar$1;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gm/TwoPaneActionBar$1;-><init>(Lcom/google/android/gm/TwoPaneActionBar;Landroid/app/ActionBar$OnNavigationListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 238
    if-ltz p3, :cond_0

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, animate:Z
    invoke-virtual {v1, p3, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 245
    .end local v0           #animate:Z
    :cond_0
    const v2, 0x7f0e0072

    invoke-virtual {p0, v2}, Lcom/google/android/gm/TwoPaneActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 246
    invoke-virtual {p0, v4}, Lcom/google/android/gm/TwoPaneActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    return-void
.end method

.method private setActionBarIconBackInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 375
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 378
    return-void
.end method

.method private setDisplayedLabel(Lcom/google/android/gm/provider/Label;)V
    .locals 2
    .parameter "label"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mDisplayedLabel:Lcom/google/android/gm/provider/Label;

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mDisplayedLabel:Lcom/google/android/gm/provider/Label;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mDisplayedLabel:Lcom/google/android/gm/provider/Label;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActionBar;->mDisplayedLabelObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Label;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 359
    :cond_1
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActionBar;->mDisplayedLabel:Lcom/google/android/gm/provider/Label;

    .line 361
    if-eqz p1, :cond_2

    .line 362
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActionBar;->setActionBarIconBackInternal()V

    .line 363
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mDisplayedLabelObserver:Landroid/database/DataSetObserver;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gm/provider/Label;->registerDataSetObserver(Landroid/database/DataSetObserver;Z)V

    .line 364
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/google/android/gm/provider/Label;->enableSelfUpdate(Landroid/content/Context;)V

    .line 365
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActionBar;->setHintTextVisibility()V

    goto :goto_0

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mBreadCrumbView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setHintTextVisibility()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 475
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActionBar;->canBreadCrumbBeShownInMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mBreadCrumbLabelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mBreadCrumbView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 484
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mBreadCrumbView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mBreadCrumbView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupInboxLabel(Ljava/lang/String;)V
    .locals 4
    .parameter "accountName"

    .prologue
    .line 560
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/Label;

    .line 561
    .local v1, prevInboxLabel:Lcom/google/android/gm/provider/Label;
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/google/android/gm/Utils;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, curInboxName:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 566
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, p1, v0, v3, p0}, Lcom/google/android/gm/provider/LabelManager;->getLabelAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gm/provider/LabelManager$LabelResultCallback;)V

    .line 572
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/Label;->enableSelfUpdate(Landroid/content/Context;)V

    .line 570
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/Label;->requery(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public getOptionsMenuId()I
    .locals 2

    .prologue
    .line 447
    const/4 v0, 0x0

    .line 449
    .local v0, menuId:I
    iget v1, p0, Lcom/google/android/gm/TwoPaneActionBar;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 471
    :goto_0
    return v0

    .line 451
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActionBar;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v1}, Lcom/google/android/gm/ViewMode;->getMode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 459
    const v0, 0x7f11000b

    .line 461
    goto :goto_0

    .line 453
    :pswitch_1
    const v0, 0x7f11000a

    .line 454
    goto :goto_0

    .line 464
    :pswitch_2
    const v0, 0x7f11000c

    .line 465
    goto :goto_0

    .line 468
    :pswitch_3
    const v0, 0x7f11000e

    goto :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 451
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method initialize(Landroid/app/Activity;Lcom/google/android/gm/TwoPaneActionBar$Callback;Lcom/google/android/gm/ViewMode;Landroid/app/ActionBar;)V
    .locals 5
    .parameter "activity"
    .parameter "callback"
    .parameter "viewMode"
    .parameter "actionBar"

    .prologue
    const/4 v4, 0x1

    .line 148
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActionBar;->mActivity:Landroid/app/Activity;

    .line 149
    iput-object p2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mCallback:Lcom/google/android/gm/TwoPaneActionBar$Callback;

    .line 150
    const v2, 0x7f0e0076

    invoke-virtual {p0, v2}, Lcom/google/android/gm/TwoPaneActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mBreadCrumbView:Landroid/view/ViewGroup;

    .line 151
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mBreadCrumbView:Landroid/view/ViewGroup;

    const v3, 0x7f0e0077

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mBreadCrumbLabelView:Landroid/widget/TextView;

    .line 152
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mBreadCrumbView:Landroid/view/ViewGroup;

    const v3, 0x7f0e0078

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mBreadCrumbCountView:Landroid/widget/TextView;

    .line 153
    const v2, 0x7f0e0075

    invoke-virtual {p0, v2}, Lcom/google/android/gm/TwoPaneActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mAccountParent:Landroid/view/ViewGroup;

    .line 154
    const v2, 0x7f0e0074

    invoke-virtual {p0, v2}, Lcom/google/android/gm/TwoPaneActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    .line 155
    iput-object p4, p0, Lcom/google/android/gm/TwoPaneActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 157
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 158
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 159
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 160
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 161
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    .line 162
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 163
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    .line 165
    const-string v2, "search"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 167
    .local v1, searchManager:Landroid/app/SearchManager;
    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    .line 169
    .local v0, info:Landroid/app/SearchableInfo;
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 171
    .end local v0           #info:Landroid/app/SearchableInfo;
    :cond_0
    iput-object p3, p0, Lcom/google/android/gm/TwoPaneActionBar;->mViewMode:Lcom/google/android/gm/ViewMode;

    .line 172
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v2, p0}, Lcom/google/android/gm/ViewMode;->addListener(Lcom/google/android/gm/ViewMode$ModeChangeListener;)V

    .line 173
    return-void
.end method

.method public isSearchQueryEntryMode()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 432
    iget v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mMode:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gm/TwoPaneActionBar;->setMode(I)V

    .line 491
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mCallback:Lcom/google/android/gm/TwoPaneActionBar$Callback;

    invoke-interface {v0}, Lcom/google/android/gm/TwoPaneActionBar$Callback;->exitSearchMode()V

    .line 492
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 635
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 636
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 639
    .local v0, resources:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActionBar;->mAccountParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const v2, 0x7f0c0036

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 641
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActionBar;->mBreadCrumbLabelView:Landroid/widget/TextView;

    const v2, 0x7f0c003a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 642
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 646
    if-nez p2, :cond_0

    iget v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 647
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mCallback:Lcom/google/android/gm/TwoPaneActionBar$Callback;

    invoke-interface {v0}, Lcom/google/android/gm/TwoPaneActionBar$Callback;->exitSearchMode()V

    .line 648
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 650
    :cond_0
    return-void
.end method

.method public onLabelResult(Lcom/google/android/gm/provider/Label;)V
    .locals 2
    .parameter "label"

    .prologue
    .line 532
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mActive:Z

    if-nez v0, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/google/android/gm/provider/Label;->enableSelfUpdate(Landroid/content/Context;)V

    .line 539
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onMailEngineResult(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 549
    invoke-virtual {p1}, Lcom/google/android/gm/provider/MailEngine;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, accountName:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/gm/TwoPaneActionBar;->setupInboxLabel(Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 188
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mActive:Z

    .line 191
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/Label;

    .line 192
    .local v1, label:Lcom/google/android/gm/provider/Label;
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/Label;->disableSelfUpdate(Landroid/content/Context;)V

    goto :goto_0

    .line 194
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 499
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gm/TwoPaneActionBar;->setMode(I)V

    .line 500
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 176
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/gm/TwoPaneActionBar;->mActive:Z

    .line 178
    iget-object v4, p0, Lcom/google/android/gm/TwoPaneActionBar;->mAccountNames:[Ljava/lang/String;

    if-nez v4, :cond_1

    .line 185
    :cond_0
    return-void

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActionBar;->mAccountNames:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 183
    .local v0, accountName:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/gm/TwoPaneActionBar;->setupInboxLabel(Ljava/lang/String;)V

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onSuggestionClick(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 519
    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getSuggestionsAdapter()Landroid/widget/CursorAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 520
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 521
    const-string v3, "suggest_intent_query"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 522
    .local v1, col:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, query:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v2, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 525
    .end local v1           #col:I
    .end local v2           #query:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/google/android/gm/TwoPaneActionBar;->setMode(I)V

    .line 526
    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    .line 527
    return v4
.end method

.method public onSuggestionSelect(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public onViewModeChanged(Lcom/google/android/gm/ViewMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 545
    return-void
.end method

.method public setActionBarIconBack()V
    .locals 6

    .prologue
    .line 302
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActionBar;->mCallback:Lcom/google/android/gm/TwoPaneActionBar$Callback;

    invoke-interface {v1}, Lcom/google/android/gm/TwoPaneActionBar$Callback;->getCurrentListContext()Lcom/google/android/gm/ConversationListContext;

    move-result-object v0

    .line 303
    .local v0, context:Lcom/google/android/gm/ConversationListContext;
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gm/TwoPaneActionBar;->setDisplayedLabel(Lcom/google/android/gm/provider/Label;)V

    .line 305
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActionBar;->setActionBarIconBackInternal()V

    .line 320
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActionBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mCallback:Lcom/google/android/gm/TwoPaneActionBar$Callback;

    invoke-interface {v2}, Lcom/google/android/gm/TwoPaneActionBar$Callback;->getCurrentAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/gm/TwoPaneActionBar$3;

    invoke-direct {v5, p0}, Lcom/google/android/gm/TwoPaneActionBar$3;-><init>(Lcom/google/android/gm/TwoPaneActionBar;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gm/provider/LabelManager;->getLabelAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gm/provider/LabelManager$LabelResultCallback;)V

    goto :goto_0
.end method

.method public setActionBarIconNormal()V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/TwoPaneActionBar;->setDisplayedLabel(Lcom/google/android/gm/provider/Label;)V

    .line 205
    return-void
.end method

.method public setActionBarTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 211
    const v1, 0x7f0e0072

    invoke-virtual {p0, v1}, Lcom/google/android/gm/TwoPaneActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 212
    .local v0, titleView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    const v1, 0x7f0e0073

    invoke-virtual {p0, v1}, Lcom/google/android/gm/TwoPaneActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    return-void
.end method

.method public setMode(I)V
    .locals 7
    .parameter "mode"

    .prologue
    const/4 v6, 0x0

    const v3, 0x7f0e0075

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 385
    iget v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mMode:I

    if-eq p1, v2, :cond_0

    .line 386
    iput p1, p0, Lcom/google/android/gm/TwoPaneActionBar;->mMode:I

    .line 388
    packed-switch p1, :pswitch_data_0

    .line 427
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 429
    :cond_0
    return-void

    .line 390
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/google/android/gm/TwoPaneActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v5}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 392
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v6, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 393
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActionBar;->setHintTextVisibility()V

    goto :goto_0

    .line 397
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/google/android/gm/TwoPaneActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 399
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setGravity(I)V

    .line 402
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v6, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 403
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->requestFocus()Z

    .line 407
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 410
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 414
    .local v1, textView:Landroid/view/View;
    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 416
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mBreadCrumbView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 420
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #textView:Landroid/view/View;
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/google/android/gm/TwoPaneActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 421
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 422
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mSearchView:Landroid/widget/SearchView;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setGravity(I)V

    .line 423
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActionBar;->mBreadCrumbView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateActionBar([Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "accounts"
    .parameter "currentAccount"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActionBar;->mAccountNames:[Ljava/lang/String;

    .line 257
    iget-object v9, p0, Lcom/google/android/gm/TwoPaneActionBar;->mAccountNames:[Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/google/android/gm/TwoPaneActionBar;->mAccountNames:[Ljava/lang/String;

    array-length v9, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 258
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gm/TwoPaneActionBar;->setActionBarTitle(Ljava/lang/String;)V

    .line 296
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 263
    .local v7, newAccounts:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 264
    .local v1, currentAccountIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v9, p1

    if-ge v2, v9, :cond_4

    .line 265
    aget-object v6, p1, v2

    .line 266
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 267
    move v1, v2

    .line 270
    :cond_2
    iget-object v9, p0, Lcom/google/android/gm/TwoPaneActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 271
    iget-object v9, p0, Lcom/google/android/gm/TwoPaneActionBar;->mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/google/android/gm/Utils;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, inboxLabel:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/gm/TwoPaneActionBar;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v6, v4, v10, p0}, Lcom/google/android/gm/provider/LabelManager;->getLabelAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gm/provider/LabelManager$LabelResultCallback;)V

    .line 273
    iget-object v9, p0, Lcom/google/android/gm/TwoPaneActionBar;->mContext:Landroid/content/Context;

    invoke-static {v9, v6, p0}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngineAsync(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;)V

    .line 276
    .end local v4           #inboxLabel:Ljava/lang/String;
    :cond_3
    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 280
    .end local v6           #name:Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/google/android/gm/TwoPaneActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 281
    .local v8, trackedName:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 282
    iget-object v9, p0, Lcom/google/android/gm/TwoPaneActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gm/provider/Label;

    .line 283
    .local v5, label:Lcom/google/android/gm/provider/Label;
    iget-object v9, p0, Lcom/google/android/gm/TwoPaneActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Lcom/google/android/gm/provider/Label;->disableSelfUpdate(Landroid/content/Context;)V

    goto :goto_2

    .line 287
    .end local v5           #label:Lcom/google/android/gm/provider/Label;
    .end local v8           #trackedName:Ljava/lang/String;
    :cond_6
    new-instance v0, Lcom/google/android/gm/TwoPaneActionBar$AccountSwitchSpinnerAdapter;

    iget-object v9, p0, Lcom/google/android/gm/TwoPaneActionBar;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/google/android/gm/TwoPaneActionBar;->mAccountNames:[Ljava/lang/String;

    invoke-direct {v0, p0, v9, v10}, Lcom/google/android/gm/TwoPaneActionBar$AccountSwitchSpinnerAdapter;-><init>(Lcom/google/android/gm/TwoPaneActionBar;Landroid/content/Context;[Ljava/lang/String;)V

    .line 289
    .local v0, adapter:Lcom/google/android/gm/TwoPaneActionBar$AccountSwitchSpinnerAdapter;
    new-instance v9, Lcom/google/android/gm/TwoPaneActionBar$2;

    invoke-direct {v9, p0}, Lcom/google/android/gm/TwoPaneActionBar$2;-><init>(Lcom/google/android/gm/TwoPaneActionBar;)V

    invoke-direct {p0, v0, v9, v1}, Lcom/google/android/gm/TwoPaneActionBar;->setActionBarAccountSpinner(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;I)V

    goto :goto_0
.end method
