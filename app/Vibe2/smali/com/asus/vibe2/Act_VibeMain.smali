.class public Lcom/asus/vibe2/Act_VibeMain;
.super Landroid/app/Activity;
.source "Act_VibeMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;,
        Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;
    }
.end annotation


# instance fields
.field private mDropdownAdapter:Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;

.field private mFragTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe2/Frag_TabContent;",
            ">;"
        }
    .end annotation
.end field

.field private mInstanceStateSaved:Z

.field private mParam:Lcom/asus/vibe/item/VibeParam;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTabSelector:Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/asus/vibe2/Act_VibeMain;->mParam:Lcom/asus/vibe/item/VibeParam;

    .line 37
    iput-object v0, p0, Lcom/asus/vibe2/Act_VibeMain;->mDropdownAdapter:Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/vibe2/Act_VibeMain;->mFragTabs:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;-><init>(Lcom/asus/vibe2/Act_VibeMain;)V

    iput-object v0, p0, Lcom/asus/vibe2/Act_VibeMain;->mTabSelector:Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/vibe2/Act_VibeMain;->mInstanceStateSaved:Z

    .line 42
    new-instance v0, Lcom/asus/vibe2/Act_VibeMain$1;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Act_VibeMain$1;-><init>(Lcom/asus/vibe2/Act_VibeMain;)V

    iput-object v0, p0, Lcom/asus/vibe2/Act_VibeMain;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->add(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/asus/vibe2/Act_VibeMain;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/asus/vibe2/Act_VibeMain;->mFragTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/vibe2/Act_VibeMain;)Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/asus/vibe2/Act_VibeMain;->mDropdownAdapter:Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 57
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->remove(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finalized!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 59
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 176
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 177
    const/16 v0, 0x99

    if-ne p1, v0, :cond_0

    .line 178
    invoke-static {p2, p3}, Lcom/asus/vibe2/mycloud/Utils_MyCloud;->updateAccountInfoByResult(ILandroid/content/Intent;)Z

    .line 180
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 126
    iget-object v4, p0, Lcom/asus/vibe2/Act_VibeMain;->mParam:Lcom/asus/vibe/item/VibeParam;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/asus/vibe2/Act_VibeMain;->mInstanceStateSaved:Z

    if-eqz v4, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_VibeMain;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 130
    .local v0, bar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_VibeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    const/4 v3, 0x0

    .line 132
    .local v3, selectedIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/asus/vibe2/Act_VibeMain;->mFragTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 133
    iget-object v4, p0, Lcom/asus/vibe2/Act_VibeMain;->mFragTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/vibe2/Frag_TabContent;

    .line 134
    .local v1, fragTabItem:Lcom/asus/vibe2/Frag_TabContent;
    if-eqz v1, :cond_3

    iget-boolean v4, v1, Lcom/asus/vibe2/Frag_TabContent;->mSelected:Z

    if-eqz v4, :cond_3

    .line 135
    move v3, v2

    .line 139
    .end local v1           #fragTabItem:Lcom/asus/vibe2/Frag_TabContent;
    :cond_2
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_VibeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x3

    if-gt v4, v5, :cond_4

    .line 140
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 141
    iget-object v4, p0, Lcom/asus/vibe2/Act_VibeMain;->mDropdownAdapter:Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;

    iget-object v5, p0, Lcom/asus/vibe2/Act_VibeMain;->mTabSelector:Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;

    invoke-virtual {v0, v4, v5}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 142
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 132
    .restart local v1       #fragTabItem:Lcom/asus/vibe2/Frag_TabContent;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 144
    .end local v1           #fragTabItem:Lcom/asus/vibe2/Frag_TabContent;
    :cond_4
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 145
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iput-boolean v10, p0, Lcom/asus/vibe2/Act_VibeMain;->mInstanceStateSaved:Z

    .line 65
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_VibeMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/asus/vibe2/Vibe;->setContext(Landroid/content/Context;)V

    .line 66
    const v5, 0x7f030003

    invoke-virtual {p0, v5}, Lcom/asus/vibe2/Act_VibeMain;->setContentView(I)V

    .line 69
    :try_start_0
    iget-object v5, p0, Lcom/asus/vibe2/Act_VibeMain;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.asus.vibe.action.APP_INFO_UPDATED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/asus/vibe2/Act_VibeMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_VibeMain;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_VibeMain;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {p0}, Lcom/asus/vibe2/Act_VibeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    new-instance v5, Lcom/asus/vibe/item/VibeParam;

    invoke-direct {v5}, Lcom/asus/vibe/item/VibeParam;-><init>()V

    iput-object v5, p0, Lcom/asus/vibe2/Act_VibeMain;->mParam:Lcom/asus/vibe/item/VibeParam;

    .line 76
    iget-object v5, p0, Lcom/asus/vibe2/Act_VibeMain;->mParam:Lcom/asus/vibe/item/VibeParam;

    invoke-virtual {p0}, Lcom/asus/vibe2/Act_VibeMain;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v6}, Lcom/asus/vibe2/Utils_Vibe;->findProperAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    .line 77
    iget-object v5, p0, Lcom/asus/vibe2/Act_VibeMain;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_VibeMain;->finish()V

    .line 121
    :goto_1
    return-void

    .line 81
    :cond_0
    iget-object v5, p0, Lcom/asus/vibe2/Act_VibeMain;->mParam:Lcom/asus/vibe/item/VibeParam;

    invoke-virtual {p0}, Lcom/asus/vibe2/Act_VibeMain;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v6}, Lcom/asus/vibe2/Utils_Vibe;->findProperMainCategory(Landroid/content/Intent;)Lcom/asus/vibe/item/VibeItem_Main;

    move-result-object v6

    iput-object v6, v5, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    .line 82
    iget-object v5, p0, Lcom/asus/vibe2/Act_VibeMain;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    if-nez v5, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_VibeMain;->finish()V

    goto :goto_1

    .line 87
    :cond_1
    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/asus/vibe2/Act_VibeMain;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/asus/vibe2/mycloud/Utils_MyCloud;->updateAccountInfoByResult(ILandroid/content/Intent;)Z

    .line 89
    iget-object v5, p0, Lcom/asus/vibe2/Act_VibeMain;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    invoke-static {v5, p0}, Lcom/asus/vibe2/Utils_Vibe;->updateTitle(Ljava/lang/String;Landroid/app/Activity;)V

    .line 91
    iget-object v5, p0, Lcom/asus/vibe2/Act_VibeMain;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryCmsId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    move v2, v11

    .line 92
    .local v2, hasCms:Z
    :goto_2
    iget-object v5, p0, Lcom/asus/vibe2/Act_VibeMain;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryPremiumId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    move v3, v11

    .line 94
    .local v3, hasPremium:Z
    :goto_3
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_VibeMain;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 95
    .local v0, bar:Landroid/app/ActionBar;
    new-instance v5, Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;

    invoke-direct {v5, p0, p0}, Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;-><init>(Lcom/asus/vibe2/Act_VibeMain;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/asus/vibe2/Act_VibeMain;->mDropdownAdapter:Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;

    .line 97
    if-eqz v2, :cond_2

    .line 98
    iget-object v5, p0, Lcom/asus/vibe2/Act_VibeMain;->mFragTabs:Ljava/util/ArrayList;

    new-instance v6, Lcom/asus/vibe2/Frag_TabApi;

    iget-object v7, p0, Lcom/asus/vibe2/Act_VibeMain;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v8, p0, Lcom/asus/vibe2/Act_VibeMain;->mTabSelector:Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;

    invoke-direct {v6, v11, v7, p0, v8}, Lcom/asus/vibe2/Frag_TabApi;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/app/Activity;Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    if-eqz v3, :cond_3

    .line 101
    iget-object v5, p0, Lcom/asus/vibe2/Act_VibeMain;->mFragTabs:Ljava/util/ArrayList;

    new-instance v6, Lcom/asus/vibe2/Frag_TabApi;

    iget-object v7, p0, Lcom/asus/vibe2/Act_VibeMain;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v8, p0, Lcom/asus/vibe2/Act_VibeMain;->mTabSelector:Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;

    invoke-direct {v6, v12, v7, p0, v8}, Lcom/asus/vibe2/Frag_TabApi;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/app/Activity;Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v5, p0, Lcom/asus/vibe2/Act_VibeMain;->mFragTabs:Ljava/util/ArrayList;

    new-instance v6, Lcom/asus/vibe2/Frag_TabApi;

    iget-object v7, p0, Lcom/asus/vibe2/Act_VibeMain;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v8, p0, Lcom/asus/vibe2/Act_VibeMain;->mTabSelector:Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;

    invoke-direct {v6, v13, v7, p0, v8}, Lcom/asus/vibe2/Frag_TabApi;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/app/Activity;Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_3
    iget-object v5, p0, Lcom/asus/vibe2/Act_VibeMain;->mFragTabs:Ljava/util/ArrayList;

    new-instance v6, Lcom/asus/vibe2/Frag_TabDb;

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/asus/vibe2/Act_VibeMain;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v9, p0, Lcom/asus/vibe2/Act_VibeMain;->mTabSelector:Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;

    invoke-direct {v6, v7, v8, p0, v9}, Lcom/asus/vibe2/Frag_TabDb;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/app/Activity;Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_VibeMain;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 107
    .local v1, ft:Landroid/app/FragmentTransaction;
    new-instance v4, Lcom/asus/vibe2/Frag_Panel;

    invoke-direct {v4}, Lcom/asus/vibe2/Frag_Panel;-><init>()V

    .line 108
    .local v4, panel:Landroid/app/Fragment;
    const v5, 0x7f08000b

    const-string v6, "Playback Panel"

    invoke-virtual {v1, v5, v4, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 109
    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 110
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 112
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_VibeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    if-gt v5, v13, :cond_6

    .line 113
    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 114
    iget-object v5, p0, Lcom/asus/vibe2/Act_VibeMain;->mDropdownAdapter:Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;

    iget-object v6, p0, Lcom/asus/vibe2/Act_VibeMain;->mTabSelector:Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;

    invoke-virtual {v0, v5, v6}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 115
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_1

    .end local v0           #bar:Landroid/app/ActionBar;
    .end local v1           #ft:Landroid/app/FragmentTransaction;
    .end local v2           #hasCms:Z
    .end local v3           #hasPremium:Z
    .end local v4           #panel:Landroid/app/Fragment;
    :cond_4
    move v2, v10

    .line 91
    goto/16 :goto_2

    .restart local v2       #hasCms:Z
    :cond_5
    move v3, v10

    .line 92
    goto/16 :goto_3

    .line 117
    .restart local v0       #bar:Landroid/app/ActionBar;
    .restart local v1       #ft:Landroid/app/FragmentTransaction;
    .restart local v3       #hasPremium:Z
    .restart local v4       #panel:Landroid/app/Fragment;
    :cond_6
    invoke-virtual {v0, v12}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 118
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto/16 :goto_1

    .line 70
    .end local v0           #bar:Landroid/app/ActionBar;
    .end local v1           #ft:Landroid/app/FragmentTransaction;
    .end local v2           #hasCms:Z
    .end local v3           #hasPremium:Z
    .end local v4           #panel:Landroid/app/Fragment;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 194
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_VibeMain;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 195
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f070002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 196
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/asus/vibe2/Act_VibeMain;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Act_VibeMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/vibe2/Act_VibeMain;->mParam:Lcom/asus/vibe/item/VibeParam;

    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 189
    return-void

    .line 186
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 166
    invoke-static {p1}, Lcom/asus/vibe2/Utils_Vibe;->findProperAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, vibeAction:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/asus/vibe2/Act_VibeMain;->mParam:Lcom/asus/vibe/item/VibeParam;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/vibe2/Act_VibeMain;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/asus/vibe2/Act_VibeMain;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Lcom/asus/vibe2/Act_VibeMain;->startActivity(Landroid/content/Intent;)V

    .line 169
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_VibeMain;->finish()V

    .line 172
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_VibeMain;->finish()V

    .line 206
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 203
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080023

    if-ne v0, v1, :cond_0

    .line 204
    invoke-static {p0}, Lcom/asus/vibe2/Utils_Download;->openDownloadsPage(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/vibe2/Act_VibeMain;->mInstanceStateSaved:Z

    .line 154
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/vibe2/Act_VibeMain;->mInstanceStateSaved:Z

    .line 160
    return-void
.end method
