.class public Lcom/android/vending/TabbedAppBrowser;
.super Landroid/app/ActivityGroup;
.source "TabbedAppBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sCurrentTab:Ljava/lang/String;


# instance fields
.field private mButtonStrip:Landroid/widget/RadioGroup;

.field private mMarketIcon:Landroid/view/View;

.field private mSearchButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "0"

    sput-object v0, Lcom/android/vending/TabbedAppBrowser;->sCurrentTab:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/TabbedAppBrowser;)Landroid/app/LocalActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/vending/TabbedAppBrowser;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    sput-object p0, Lcom/android/vending/TabbedAppBrowser;->sCurrentTab:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/vending/TabbedAppBrowser;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/vending/TabbedAppBrowser;->invalidateArcViewParent(Landroid/view/View;)V

    return-void
.end method

.method private createFilteredListLaunchIntent(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/AssetRequest$ViewFilterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/AssetTypeData;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 195
    const-class v1, Lcom/android/vending/FilteredAppListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 196
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v1, "sort"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "asset_category"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "asset_category_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v1, "view_filter"

    invoke-virtual {p3}, Lcom/android/vending/model/AssetRequest$ViewFilterType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p7, v2, p0}, Lcom/android/vending/AssetTypeData;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/vending/model/AssetRequest$ViewFilterType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    const-string v2, "referrer"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    if-eqz p5, :cond_0

    .line 209
    const-string v1, "ranking_type"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    :cond_0
    return-object v0

    :cond_1
    move-object v2, p2

    .line 203
    goto :goto_0
.end method

.method private initTab(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 4
    .parameter "browseTabs"
    .parameter "tag"
    .parameter "labelId"
    .parameter "tabIntent"

    .prologue
    .line 130
    const v1, 0x7f040033

    invoke-virtual {p0}, Lcom/android/vending/TabbedAppBrowser;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vending/TabbedAppBrowser;->mButtonStrip:Landroid/widget/RadioGroup;

    invoke-static {v1, v2, v3}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 132
    .local v0, radioButton:Landroid/widget/RadioButton;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setId(I)V

    .line 133
    invoke-virtual {v0, p3}, Landroid/widget/RadioButton;->setText(I)V

    .line 135
    new-instance v1, Lcom/android/vending/TabbedAppBrowser$1;

    invoke-direct {v1, p0, v0, p2, p4}, Lcom/android/vending/TabbedAppBrowser$1;-><init>(Lcom/android/vending/TabbedAppBrowser;Landroid/widget/RadioButton;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 173
    new-instance v1, Lcom/android/vending/TabbedAppBrowser$2;

    invoke-direct {v1, p0}, Lcom/android/vending/TabbedAppBrowser$2;-><init>(Lcom/android/vending/TabbedAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 179
    new-instance v1, Lcom/android/vending/TabbedAppBrowser$3;

    invoke-direct {v1, p0}, Lcom/android/vending/TabbedAppBrowser$3;-><init>(Lcom/android/vending/TabbedAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 184
    iget-object v1, p0, Lcom/android/vending/TabbedAppBrowser;->mButtonStrip:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 185
    return-void
.end method

.method private invalidateArcViewParent(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 248
    .local v0, parent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    .line 249
    instance-of v1, v0, Lcom/android/vending/velvet/ArcView;

    if-eqz v1, :cond_1

    .line 250
    check-cast v0, Lcom/android/vending/velvet/ArcView;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0}, Lcom/android/vending/velvet/ArcView;->invalidate()V

    .line 255
    :cond_0
    return-void

    .line 253
    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/vending/TabbedAppBrowser;->mMarketIcon:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    const-class v1, Lcom/android/vending/AssetBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 218
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/vending/TabbedAppBrowser;->startActivity(Landroid/content/Intent;)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/vending/TabbedAppBrowser;->mSearchButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/vending/TabbedAppBrowser;->onSearchRequested()Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 28
    .parameter "icicle"

    .prologue
    .line 65
    invoke-super/range {p0 .. p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/TabbedAppBrowser;->requestWindowFeature(I)Z

    .line 68
    const v5, 0x7f040026

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/TabbedAppBrowser;->setContentView(I)V

    .line 70
    const v5, 0x7f080118

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/TabbedAppBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/TabbedAppBrowser;->mMarketIcon:Landroid/view/View;

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/TabbedAppBrowser;->mMarketIcon:Landroid/view/View;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v5, 0x7f08011a

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/TabbedAppBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/TabbedAppBrowser;->mSearchButton:Landroid/view/View;

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/TabbedAppBrowser;->mSearchButton:Landroid/view/View;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget-object v5, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_TAB_1_RANKING_TYPE:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v5}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 77
    .local v10, popularRankingType:Ljava/lang/String;
    sget-object v5, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_TAB_2_RANKING_TYPE:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v5}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 79
    .local v18, newestRankingType:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/TabbedAppBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v24

    .line 80
    .local v24, intent:Landroid/content/Intent;
    const-string v5, "asset_category"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, category:Ljava/lang/String;
    const-string v5, "asset_category_id"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, categoryId:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    .line 83
    .local v11, intentCategory:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/vending/AssetTypeData;->getAssetForMimeType(Ljava/lang/String;)Lcom/android/vending/AssetTypeData;

    move-result-object v12

    .line 85
    .local v12, assetType:Lcom/android/vending/AssetTypeData;
    const v5, 0x7f080119

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/TabbedAppBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 86
    .local v27, titleTextView:Landroid/widget/TextView;
    move-object/from16 v0, v27

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v5, 0x7f0a0004

    const v8, 0x7f0a0002

    move-object/from16 v0, v27

    move v1, v5

    move v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/vending/BaseActivity;->scaleAppearance(Landroid/widget/TextView;II)V

    .line 90
    const v5, 0x7f08008f

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/TabbedAppBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    .line 91
    .local v21, browseTabs:Landroid/view/ViewGroup;
    const v5, 0x7f08008e

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/TabbedAppBrowser;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/RadioGroup;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/TabbedAppBrowser;->mButtonStrip:Landroid/widget/RadioGroup;

    .line 94
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/vending/VendingApplication;->getMetadata()Lcom/android/vending/VendingApplicationMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/vending/VendingApplicationMetadata;->getPaidAppsEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    sget-object v8, Lcom/android/vending/model/AssetRequest$ViewFilterType;->PAID:Lcom/android/vending/model/AssetRequest$ViewFilterType;

    const-string v9, "popular"

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/vending/TabbedAppBrowser;->createFilteredListLaunchIntent(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/AssetRequest$ViewFilterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/AssetTypeData;)Landroid/content/Intent;

    move-result-object v26

    .line 100
    .local v26, paidAppsIntent:Landroid/content/Intent;
    const-string v5, "0"

    const v8, 0x7f070152

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v5

    move v3, v8

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/vending/TabbedAppBrowser;->initTab(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 104
    .end local v26           #paidAppsIntent:Landroid/content/Intent;
    :cond_0
    sget-object v8, Lcom/android/vending/model/AssetRequest$ViewFilterType;->FREE:Lcom/android/vending/model/AssetRequest$ViewFilterType;

    const-string v9, "popular"

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/vending/TabbedAppBrowser;->createFilteredListLaunchIntent(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/AssetRequest$ViewFilterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/AssetTypeData;)Landroid/content/Intent;

    move-result-object v23

    .line 107
    .local v23, freeAppsIntent:Landroid/content/Intent;
    const-string v5, "1"

    const v8, 0x7f070153

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v5

    move v3, v8

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/vending/TabbedAppBrowser;->initTab(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 110
    sget-object v16, Lcom/android/vending/model/AssetRequest$ViewFilterType;->ALL:Lcom/android/vending/model/AssetRequest$ViewFilterType;

    const-string v17, "newest"

    move-object/from16 v13, p0

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    invoke-direct/range {v13 .. v20}, Lcom/android/vending/TabbedAppBrowser;->createFilteredListLaunchIntent(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/AssetRequest$ViewFilterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/AssetTypeData;)Landroid/content/Intent;

    move-result-object v25

    .line 113
    .local v25, justInAppsIntent:Landroid/content/Intent;
    const-string v5, "2"

    const v6, 0x7f070154

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v5

    move v3, v6

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/vending/TabbedAppBrowser;->initTab(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 115
    .end local v6           #category:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/TabbedAppBrowser;->mButtonStrip:Landroid/widget/RadioGroup;

    move-object v5, v0

    sget-object v6, Lcom/android/vending/TabbedAppBrowser;->sCurrentTab:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 122
    const v5, 0x7f08003c

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/TabbedAppBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 123
    .local v22, carousel:Landroid/view/View;
    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/vending/velvet/LandscapeOverlappingLayout;

    move v5, v0

    if-eqz v5, :cond_1

    .line 124
    check-cast v22, Lcom/android/vending/velvet/OverlappingLayout;

    .end local v22           #carousel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/TabbedAppBrowser;->mButtonStrip:Landroid/widget/RadioGroup;

    move-object v5, v0

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/OverlappingLayout;->setCarouselPadder(Landroid/view/View;)V

    .line 126
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/vending/TabbedAppBrowser;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 264
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 266
    const v1, 0x7f080137

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sget-object v2, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_ENABLE_DEBUG_INFO:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v2}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 269
    const/4 v1, 0x1

    return v1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 274
    invoke-static {p0, p1, p2}, Lcom/android/vending/BaseActivity;->onMenuItemSelected(Landroid/app/Activity;ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 238
    iget-object v0, p0, Lcom/android/vending/TabbedAppBrowser;->mSearchButton:Landroid/view/View;

    const/high16 v1, 0x7f0a

    invoke-static {v0, v1}, Lcom/android/vending/BaseActivity;->addTouchDelegate(Landroid/view/View;I)V

    .line 239
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/vending/TabbedAppBrowser;->getChangingConfigurations()I

    move-result v0

    if-lez v0, :cond_0

    .line 229
    invoke-static {}, Lcom/android/vending/BaseActivity;->cancelMarketLeaving()V

    .line 232
    :cond_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 233
    return-void
.end method
