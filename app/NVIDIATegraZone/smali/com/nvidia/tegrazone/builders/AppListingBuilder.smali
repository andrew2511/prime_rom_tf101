.class public Lcom/nvidia/tegrazone/builders/AppListingBuilder;
.super Ljava/lang/Object;
.source "AppListingBuilder.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private nextCapsule:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->activity:Landroid/app/Activity;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/nvidia/tegrazone/builders/AppListingBuilder;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->openApp(Landroid/view/View;)V

    return-void
.end method

.method private openApp(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->selectGame(Landroid/view/View;)V

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, appId:Ljava/lang/String;
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v2

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    if-eqz v2, :cond_0

    .line 129
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v2

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v2

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v2

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 133
    :cond_0
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v2

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v2

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    :cond_1
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v2

    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->activity:Landroid/app/Activity;

    check-cast v2, Lcom/nvidia/tegrazone/AppDetailsActivity;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/AppDetailsActivity;->getAppDetailsBuilder()Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    move-result-object v0

    .line 136
    .local v0, adb:Lcom/nvidia/tegrazone/adapters/AppDetailsAdapter;
    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->activity:Landroid/app/Activity;

    invoke-interface {v0, v2}, Lcom/nvidia/tegrazone/adapters/AppDetailsAdapter;->setCallingActivity(Landroid/app/Activity;)V

    .line 137
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v2

    iput-object v1, v2, Lcom/nvidia/tegrazone/model/NVModel;->lastAppId:Ljava/lang/String;

    .line 138
    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->activity:Landroid/app/Activity;

    invoke-interface {v0, v2, v1}, Lcom/nvidia/tegrazone/adapters/AppDetailsAdapter;->updatePDP(Landroid/app/Activity;Ljava/lang/String;)V

    .line 145
    .end local v0           #adb:Lcom/nvidia/tegrazone/adapters/AppDetailsAdapter;
    :cond_2
    :goto_0
    return-void

    .line 141
    :cond_3
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/nvidia/tegrazone/model/NVModel;->appBlocker:Ljava/lang/Boolean;

    .line 142
    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->activity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchApp(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public buildGameList()V
    .locals 15

    .prologue
    .line 29
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v11

    iget-object v6, v11, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 31
    .local v6, games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    if-nez v6, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v11, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->activity:Landroid/app/Activity;

    const v12, 0x7f0a004c

    invoke-virtual {v11, v12}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 34
    .local v7, l:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->activity:Landroid/app/Activity;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 36
    .local v8, linflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 37
    .local v2, counter:I
    const/4 v10, 0x0

    .line 39
    .local v10, totalItems:I
    if-eqz v7, :cond_0

    .line 41
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    if-lez v11, :cond_2

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 43
    :cond_2
    array-length v11, v6

    const/4 v12, 0x0

    :goto_1
    if-lt v12, v11, :cond_3

    .line 85
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v11

    iget-object v11, v11, Lcom/nvidia/tegrazone/model/NVModel;->filter:Ljava/lang/String;

    const-string v12, "featured"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 87
    iget-object v11, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->nextCapsule:Landroid/view/View;

    if-nez v11, :cond_9

    .line 88
    if-ge v2, v10, :cond_0

    .line 89
    new-instance v1, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

    iget-object v11, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->activity:Landroid/app/Activity;

    invoke-direct {v1, v11}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;-><init>(Landroid/app/Activity;)V

    .line 90
    .local v1, capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->buildLoadMoreCapsule(Ljava/lang/Boolean;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->nextCapsule:Landroid/view/View;

    .line 91
    iget-object v11, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->nextCapsule:Landroid/view/View;

    const-string v12, "nextCapsule"

    invoke-virtual {v11, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    iget-object v11, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->nextCapsule:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    rem-int/lit8 v11, v2, 0x2

    if-eqz v11, :cond_8

    .line 95
    iget-object v11, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->nextCapsule:Landroid/view/View;

    const v12, 0x7f02000b

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 43
    .end local v1           #capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;
    :cond_3
    aget-object v9, v6, v12

    .line 45
    .local v9, tempGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    invoke-virtual {v9}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getTotalItems()I

    move-result v10

    .line 47
    const/4 v13, 0x0

    invoke-static {v8, v9, v2, v13}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->buildAppCapsule(Landroid/view/LayoutInflater;Lcom/nvidia/tegrazone/model/vo/SmallGameVO;IZ)Landroid/view/View;

    move-result-object v4

    .line 50
    .local v4, customView:Landroid/view/View;
    new-instance v13, Lcom/nvidia/tegrazone/builders/AppListingBuilder$1;

    invoke-direct {v13, p0}, Lcom/nvidia/tegrazone/builders/AppListingBuilder$1;-><init>(Lcom/nvidia/tegrazone/builders/AppListingBuilder;)V

    invoke-virtual {v4, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {v9}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getAppId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v13

    iget-object v3, v13, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    .line 60
    .local v3, currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;
    if-nez v2, :cond_7

    const/4 v13, 0x1

    move v0, v13

    .line 63
    .local v0, activeApp:Z
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v9, :cond_4

    .line 64
    :try_start_0
    invoke-virtual {v3}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getAppId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getAppId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 71
    :cond_4
    :goto_3
    if-eqz v0, :cond_6

    .line 72
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v13

    iget-object v13, v13, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v13

    iget-object v13, v13, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 73
    :cond_5
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v13

    iget-object v14, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v13, v14}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 74
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    new-instance v14, Lcom/nvidia/tegrazone/builders/AppListingBuilder$2;

    invoke-direct {v14, p0, v4}, Lcom/nvidia/tegrazone/builders/AppListingBuilder$2;-><init>(Lcom/nvidia/tegrazone/builders/AppListingBuilder;Landroid/view/View;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 81
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 82
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 43
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 60
    .end local v0           #activeApp:Z
    :cond_7
    const/4 v13, 0x0

    move v0, v13

    goto :goto_2

    .line 65
    .restart local v0       #activeApp:Z
    :catch_0
    move-exception v13

    move-object v5, v13

    .line 66
    .local v5, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_3

    .line 97
    .end local v0           #activeApp:Z
    .end local v3           #currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;
    .end local v4           #customView:Landroid/view/View;
    .end local v5           #e:Ljava/lang/Exception;
    .end local v9           #tempGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    .restart local v1       #capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;
    :cond_8
    iget-object v11, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->nextCapsule:Landroid/view/View;

    const v12, 0x7f02000f

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 103
    .end local v1           #capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;
    :cond_9
    iget-object v11, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->nextCapsule:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 104
    if-ge v2, v10, :cond_0

    .line 105
    iget-object v11, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->nextCapsule:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    iget-object v11, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->nextCapsule:Landroid/view/View;

    const-string v12, "nextCapsule"

    invoke-virtual {v11, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 108
    rem-int/lit8 v11, v2, 0x2

    if-eqz v11, :cond_a

    .line 109
    iget-object v11, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->nextCapsule:Landroid/view/View;

    const v12, 0x7f02000b

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 111
    :cond_a
    iget-object v11, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->nextCapsule:Landroid/view/View;

    const v12, 0x7f02000f

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method public selectGame(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 148
    if-eqz p1, :cond_1

    .line 149
    iget-object v4, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->activity:Landroid/app/Activity;

    const v5, 0x7f0a004c

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 151
    .local v1, appLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 152
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 153
    move-object v0, v3

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    .line 155
    .local v2, lastApp:Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 157
    .end local v2           #lastApp:Landroid/view/View;
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 158
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 160
    .end local v1           #appLayout:Landroid/widget/LinearLayout;
    .end local v3           #tag:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public selectGameByTag(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 163
    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->activity:Landroid/app/Activity;

    const v3, 0x7f0a004c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 164
    .local v0, appLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 165
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->selectGame(Landroid/view/View;)V

    .line 166
    return-void
.end method
