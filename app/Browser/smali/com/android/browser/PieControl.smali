.class public Lcom/android/browser/PieControl;
.super Ljava/lang/Object;
.source "PieControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/browser/view/PieMenu$PieController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/PieControl$MenuAdapter;,
        Lcom/android/browser/PieControl$TabAdapter;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBack:Lcom/android/browser/view/PieItem;

.field private mBookmarks:Lcom/android/browser/view/PieItem;

.field private mClose:Lcom/android/browser/view/PieItem;

.field private mForward:Lcom/android/browser/view/PieItem;

.field private mItemSize:I

.field private mMenuAdapter:Lcom/android/browser/PieControl$MenuAdapter;

.field private mNewTab:Lcom/android/browser/view/PieItem;

.field private mOptions:Lcom/android/browser/view/PieItem;

.field private mPie:Lcom/android/browser/view/PieMenu;

.field private mRefresh:Lcom/android/browser/view/PieItem;

.field private mShowTabs:Lcom/android/browser/view/PieItem;

.field private mTabAdapter:Lcom/android/browser/PieControl$TabAdapter;

.field private mTabsCount:Landroid/widget/TextView;

.field private mUi:Lcom/android/browser/XLargeUi;

.field private mUiController:Lcom/android/browser/UiController;

.field private mUrl:Lcom/android/browser/view/PieItem;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/XLargeUi;)V
    .locals 2
    .parameter "activity"
    .parameter "controller"
    .parameter "ui"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/browser/PieControl;->mActivity:Landroid/app/Activity;

    .line 71
    iput-object p2, p0, Lcom/android/browser/PieControl;->mUiController:Lcom/android/browser/UiController;

    .line 72
    iput-object p3, p0, Lcom/android/browser/PieControl;->mUi:Lcom/android/browser/XLargeUi;

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/browser/PieControl;->mItemSize:I

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/PieControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/browser/PieControl;->buildTabs()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/PieControl;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/browser/PieControl;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private buildTabs()V
    .locals 4

    .prologue
    .line 141
    iget-object v2, p0, Lcom/android/browser/PieControl;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getTabs()Ljava/util/List;

    move-result-object v1

    .line 142
    .local v1, tabs:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/Tab;>;"
    iget-object v2, p0, Lcom/android/browser/PieControl;->mUi:Lcom/android/browser/XLargeUi;

    iget-object v3, p0, Lcom/android/browser/PieControl;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v3}, Lcom/android/browser/XLargeUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/XLargeUi;->captureTab(Lcom/android/browser/Tab;)V

    .line 143
    iget-object v2, p0, Lcom/android/browser/PieControl;->mTabAdapter:Lcom/android/browser/PieControl$TabAdapter;

    invoke-virtual {v2, v1}, Lcom/android/browser/PieControl$TabAdapter;->setTabs(Ljava/util/List;)V

    .line 144
    iget-object v2, p0, Lcom/android/browser/PieControl;->mShowTabs:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getPieView()Lcom/android/browser/view/PieMenu$PieView;

    move-result-object v0

    check-cast v0, Lcom/android/browser/view/PieStackView;

    .line 145
    .local v0, sym:Lcom/android/browser/view/PieStackView;
    iget-object v2, p0, Lcom/android/browser/PieControl;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/browser/view/PieStackView;->setCurrent(I)V

    .line 147
    return-void
.end method

.method private makeItem(II)Lcom/android/browser/view/PieItem;
    .locals 4
    .parameter "image"
    .parameter "l"

    .prologue
    .line 170
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/browser/PieControl;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 171
    .local v1, view:Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget v2, p0, Lcom/android/browser/PieControl;->mItemSize:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 173
    iget v2, p0, Lcom/android/browser/PieControl;->mItemSize:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 174
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 175
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/android/browser/PieControl;->mItemSize:I

    iget v3, p0, Lcom/android/browser/PieControl;->mItemSize:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 176
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    new-instance v2, Lcom/android/browser/view/PieItem;

    invoke-direct {v2, v1, p2}, Lcom/android/browser/view/PieItem;-><init>(Landroid/view/View;I)V

    return-object v2
.end method

.method private makeTabsView()Landroid/view/View;
    .locals 6

    .prologue
    .line 158
    iget-object v3, p0, Lcom/android/browser/PieControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040022

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 159
    .local v2, v:Landroid/view/View;
    const v3, 0x7f100012

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/browser/PieControl;->mTabsCount:Landroid/widget/TextView;

    .line 160
    iget-object v3, p0, Lcom/android/browser/PieControl;->mTabsCount:Landroid/widget/TextView;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const v3, 0x7f100059

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 162
    .local v0, image:Landroid/widget/ImageView;
    const v3, 0x7f020063

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 164
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lcom/android/browser/PieControl;->mItemSize:I

    iget v4, p0, Lcom/android/browser/PieControl;->mItemSize:I

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 165
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    return-object v2
.end method

.method private varargs setClickListener([Lcom/android/browser/view/PieItem;)V
    .locals 5
    .parameter "items"

    .prologue
    .line 181
    move-object v0, p1

    .local v0, arr$:[Lcom/android/browser/view/PieItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 182
    .local v2, item:Lcom/android/browser/view/PieItem;
    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v2           #item:Lcom/android/browser/view/PieItem;
    :cond_0
    return-void
.end method


# virtual methods
.method protected attachToContainer(Landroid/widget/FrameLayout;)V
    .locals 9
    .parameter "container"

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 77
    iget-object v4, p0, Lcom/android/browser/PieControl;->mPie:Lcom/android/browser/view/PieMenu;

    if-nez v4, :cond_0

    .line 78
    new-instance v4, Lcom/android/browser/view/PieMenu;

    iget-object v5, p0, Lcom/android/browser/PieControl;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/android/browser/view/PieMenu;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/PieControl;->mPie:Lcom/android/browser/view/PieMenu;

    .line 79
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 81
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/browser/PieControl;->mPie:Lcom/android/browser/view/PieMenu;

    invoke-virtual {v4, v0}, Lcom/android/browser/view/PieMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    const v4, 0x7f020025

    invoke-direct {p0, v4, v8}, Lcom/android/browser/PieControl;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/PieControl;->mBack:Lcom/android/browser/view/PieItem;

    .line 83
    const v4, 0x7f020062

    invoke-direct {p0, v4, v8}, Lcom/android/browser/PieControl;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/PieControl;->mUrl:Lcom/android/browser/view/PieItem;

    .line 84
    const v4, 0x7f02002a

    invoke-direct {p0, v4, v8}, Lcom/android/browser/PieControl;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/PieControl;->mBookmarks:Lcom/android/browser/view/PieItem;

    .line 85
    const v4, 0x7f020056

    invoke-direct {p0, v4, v7}, Lcom/android/browser/PieControl;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/PieControl;->mRefresh:Lcom/android/browser/view/PieItem;

    .line 86
    const v4, 0x7f02003a

    invoke-direct {p0, v4, v7}, Lcom/android/browser/PieControl;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/PieControl;->mForward:Lcom/android/browser/view/PieItem;

    .line 87
    const v4, 0x7f020049

    invoke-direct {p0, v4, v7}, Lcom/android/browser/PieControl;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/PieControl;->mNewTab:Lcom/android/browser/view/PieItem;

    .line 88
    const v4, 0x7f020032

    invoke-direct {p0, v4, v7}, Lcom/android/browser/PieControl;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/PieControl;->mClose:Lcom/android/browser/view/PieItem;

    .line 89
    invoke-direct {p0}, Lcom/android/browser/PieControl;->makeTabsView()Landroid/view/View;

    move-result-object v3

    .line 90
    .local v3, tabs:Landroid/view/View;
    new-instance v4, Lcom/android/browser/view/PieItem;

    invoke-direct {v4, v3, v7}, Lcom/android/browser/view/PieItem;-><init>(Landroid/view/View;I)V

    iput-object v4, p0, Lcom/android/browser/PieControl;->mShowTabs:Lcom/android/browser/view/PieItem;

    .line 91
    const v4, 0x10802f9

    invoke-direct {p0, v4, v7}, Lcom/android/browser/PieControl;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/PieControl;->mOptions:Lcom/android/browser/view/PieItem;

    .line 94
    new-instance v4, Lcom/android/browser/PieControl$MenuAdapter;

    iget-object v5, p0, Lcom/android/browser/PieControl;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/browser/PieControl;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v4, v5, v6}, Lcom/android/browser/PieControl$MenuAdapter;-><init>(Landroid/content/Context;Lcom/android/browser/UiController;)V

    iput-object v4, p0, Lcom/android/browser/PieControl;->mMenuAdapter:Lcom/android/browser/PieControl$MenuAdapter;

    .line 95
    new-instance v4, Lcom/android/browser/PieControl$TabAdapter;

    iget-object v5, p0, Lcom/android/browser/PieControl;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/browser/PieControl;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v4, v5, v6}, Lcom/android/browser/PieControl$TabAdapter;-><init>(Landroid/content/Context;Lcom/android/browser/UiController;)V

    iput-object v4, p0, Lcom/android/browser/PieControl;->mTabAdapter:Lcom/android/browser/PieControl$TabAdapter;

    .line 96
    new-instance v2, Lcom/android/browser/view/PieStackView;

    iget-object v4, p0, Lcom/android/browser/PieControl;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Lcom/android/browser/view/PieStackView;-><init>(Landroid/content/Context;)V

    .line 97
    .local v2, stack:Lcom/android/browser/view/PieStackView;
    new-instance v4, Lcom/android/browser/PieControl$1;

    invoke-direct {v4, p0}, Lcom/android/browser/PieControl$1;-><init>(Lcom/android/browser/PieControl;)V

    invoke-virtual {v2, v4}, Lcom/android/browser/view/PieStackView;->setLayoutListener(Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;)V

    .line 103
    iget-object v4, p0, Lcom/android/browser/PieControl;->mTabAdapter:Lcom/android/browser/PieControl$TabAdapter;

    invoke-virtual {v2, v4}, Lcom/android/browser/view/PieStackView;->setOnCurrentListener(Lcom/android/browser/view/PieStackView$OnCurrentListener;)V

    .line 104
    iget-object v4, p0, Lcom/android/browser/PieControl;->mTabAdapter:Lcom/android/browser/PieControl$TabAdapter;

    invoke-virtual {v2, v4}, Lcom/android/browser/view/PieStackView;->setAdapter(Landroid/widget/Adapter;)V

    .line 105
    iget-object v4, p0, Lcom/android/browser/PieControl;->mShowTabs:Lcom/android/browser/view/PieItem;

    invoke-virtual {v4, v2}, Lcom/android/browser/view/PieItem;->setPieView(Lcom/android/browser/view/PieMenu$PieView;)V

    .line 106
    new-instance v1, Lcom/android/browser/view/PieListView;

    iget-object v4, p0, Lcom/android/browser/PieControl;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcom/android/browser/view/PieListView;-><init>(Landroid/content/Context;)V

    .line 107
    .local v1, menuview:Lcom/android/browser/view/PieListView;
    new-instance v4, Lcom/android/browser/PieControl$2;

    invoke-direct {v4, p0}, Lcom/android/browser/PieControl$2;-><init>(Lcom/android/browser/PieControl;)V

    invoke-virtual {v1, v4}, Lcom/android/browser/view/PieListView;->setLayoutListener(Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;)V

    .line 114
    iget-object v4, p0, Lcom/android/browser/PieControl;->mOptions:Lcom/android/browser/view/PieItem;

    invoke-virtual {v4, v1}, Lcom/android/browser/view/PieItem;->setPieView(Lcom/android/browser/view/PieMenu$PieView;)V

    .line 115
    iget-object v4, p0, Lcom/android/browser/PieControl;->mMenuAdapter:Lcom/android/browser/PieControl$MenuAdapter;

    invoke-virtual {v1, v4}, Lcom/android/browser/view/PieListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 116
    const/4 v4, 0x7

    new-array v4, v4, [Lcom/android/browser/view/PieItem;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/browser/PieControl;->mBack:Lcom/android/browser/view/PieItem;

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/android/browser/PieControl;->mRefresh:Lcom/android/browser/view/PieItem;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/android/browser/PieControl;->mForward:Lcom/android/browser/view/PieItem;

    aput-object v5, v4, v7

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/browser/PieControl;->mUrl:Lcom/android/browser/view/PieItem;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/browser/PieControl;->mBookmarks:Lcom/android/browser/view/PieItem;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/browser/PieControl;->mNewTab:Lcom/android/browser/view/PieItem;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/browser/PieControl;->mClose:Lcom/android/browser/view/PieItem;

    aput-object v6, v4, v5

    invoke-direct {p0, v4}, Lcom/android/browser/PieControl;->setClickListener([Lcom/android/browser/view/PieItem;)V

    .line 125
    iget-object v4, p0, Lcom/android/browser/PieControl;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v5, p0, Lcom/android/browser/PieControl;->mBack:Lcom/android/browser/view/PieItem;

    invoke-virtual {v4, v5}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 126
    iget-object v4, p0, Lcom/android/browser/PieControl;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v5, p0, Lcom/android/browser/PieControl;->mUrl:Lcom/android/browser/view/PieItem;

    invoke-virtual {v4, v5}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 127
    iget-object v4, p0, Lcom/android/browser/PieControl;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v5, p0, Lcom/android/browser/PieControl;->mBookmarks:Lcom/android/browser/view/PieItem;

    invoke-virtual {v4, v5}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 129
    iget-object v4, p0, Lcom/android/browser/PieControl;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v5, p0, Lcom/android/browser/PieControl;->mForward:Lcom/android/browser/view/PieItem;

    invoke-virtual {v4, v5}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 130
    iget-object v4, p0, Lcom/android/browser/PieControl;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v5, p0, Lcom/android/browser/PieControl;->mRefresh:Lcom/android/browser/view/PieItem;

    invoke-virtual {v4, v5}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 131
    iget-object v4, p0, Lcom/android/browser/PieControl;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v5, p0, Lcom/android/browser/PieControl;->mShowTabs:Lcom/android/browser/view/PieItem;

    invoke-virtual {v4, v5}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 132
    iget-object v4, p0, Lcom/android/browser/PieControl;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v5, p0, Lcom/android/browser/PieControl;->mNewTab:Lcom/android/browser/view/PieItem;

    invoke-virtual {v4, v5}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 133
    iget-object v4, p0, Lcom/android/browser/PieControl;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v5, p0, Lcom/android/browser/PieControl;->mClose:Lcom/android/browser/view/PieItem;

    invoke-virtual {v4, v5}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 134
    iget-object v4, p0, Lcom/android/browser/PieControl;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v5, p0, Lcom/android/browser/PieControl;->mOptions:Lcom/android/browser/view/PieItem;

    invoke-virtual {v4, v5}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 135
    iget-object v4, p0, Lcom/android/browser/PieControl;->mPie:Lcom/android/browser/view/PieMenu;

    invoke-virtual {v4, p0}, Lcom/android/browser/view/PieMenu;->setController(Lcom/android/browser/view/PieMenu$PieController;)V

    .line 137
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #menuview:Lcom/android/browser/view/PieListView;
    .end local v2           #stack:Lcom/android/browser/view/PieStackView;
    .end local v3           #tabs:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/browser/PieControl;->mPie:Lcom/android/browser/view/PieMenu;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 138
    return-void
.end method

.method protected forceToTop(Landroid/widget/FrameLayout;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/browser/PieControl;->mPie:Lcom/android/browser/view/PieMenu;

    invoke-virtual {v0}, Lcom/android/browser/view/PieMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/browser/PieControl;->mPie:Lcom/android/browser/view/PieMenu;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 189
    iget-object v0, p0, Lcom/android/browser/PieControl;->mPie:Lcom/android/browser/view/PieMenu;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 191
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 195
    iget-object v2, p0, Lcom/android/browser/PieControl;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 196
    .local v0, tab:Lcom/android/browser/Tab;
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 197
    .local v1, web:Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/android/browser/PieControl;->mBack:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 198
    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/android/browser/PieControl;->mForward:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 200
    invoke-virtual {v1}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 201
    :cond_2
    iget-object v2, p0, Lcom/android/browser/PieControl;->mRefresh:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_4

    .line 202
    invoke-virtual {v0}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 203
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    .line 205
    :cond_3
    invoke-virtual {v1}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 207
    :cond_4
    iget-object v2, p0, Lcom/android/browser/PieControl;->mUrl:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_5

    .line 208
    iget-object v2, p0, Lcom/android/browser/PieControl;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->showTitleBarAndEdit()V

    goto :goto_0

    .line 209
    :cond_5
    iget-object v2, p0, Lcom/android/browser/PieControl;->mBookmarks:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_6

    .line 210
    iget-object v2, p0, Lcom/android/browser/PieControl;->mUiController:Lcom/android/browser/UiController;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/browser/UiController;->bookmarksOrHistoryPicker(Z)V

    goto :goto_0

    .line 211
    :cond_6
    iget-object v2, p0, Lcom/android/browser/PieControl;->mNewTab:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_7

    .line 212
    iget-object v2, p0, Lcom/android/browser/PieControl;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 213
    iget-object v2, p0, Lcom/android/browser/PieControl;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->showTitleBarAndEdit()V

    goto :goto_0

    .line 214
    :cond_7
    iget-object v2, p0, Lcom/android/browser/PieControl;->mClose:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 215
    iget-object v2, p0, Lcom/android/browser/PieControl;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->closeCurrentTab()V

    goto :goto_0
.end method

.method protected onMenuOpened(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/browser/PieControl;->mMenuAdapter:Lcom/android/browser/PieControl$MenuAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/PieControl$MenuAdapter;->setMenu(Landroid/view/Menu;)V

    .line 151
    return-void
.end method

.method public onOpen()Z
    .locals 3

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/browser/PieControl;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    .line 222
    .local v0, n:I
    iget-object v1, p0, Lcom/android/browser/PieControl;->mTabsCount:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    const/4 v1, 0x1

    return v1
.end method

.method protected removeFromContainer(Landroid/widget/FrameLayout;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/browser/PieControl;->mPie:Lcom/android/browser/view/PieMenu;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 155
    return-void
.end method
