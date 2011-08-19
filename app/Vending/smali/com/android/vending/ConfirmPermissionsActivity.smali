.class public Lcom/android/vending/ConfirmPermissionsActivity;
.super Lcom/android/vending/BaseActivity;
.source "ConfirmPermissionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;
    }
.end annotation


# instance fields
.field private mApprovedAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private mAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAssetIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mApprovedAssets:Ljava/util/List;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mCurrentAssetIndex:I

    .line 275
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/ConfirmPermissionsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mCurrentAssetIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/vending/ConfirmPermissionsActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mAssets:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/vending/ConfirmPermissionsActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mAssets:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/vending/ConfirmPermissionsActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mApprovedAssets:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/vending/ConfirmPermissionsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/vending/ConfirmPermissionsActivity;->advanceToNextAsset()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/vending/ConfirmPermissionsActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/vending/ConfirmPermissionsActivity;->updateIcon(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/vending/ConfirmPermissionsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/vending/ConfirmPermissionsActivity;->initializeAssetUIFields()V

    return-void
.end method

.method private advanceToNextAsset()V
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mCurrentAssetIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mCurrentAssetIndex:I

    .line 123
    iget v0, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mCurrentAssetIndex:I

    iget-object v1, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mAssets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/android/vending/ConfirmPermissionsActivity;->doInstall()V

    .line 127
    invoke-virtual {p0}, Lcom/android/vending/ConfirmPermissionsActivity;->finish()V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/android/vending/ConfirmPermissionsActivity;->updateUIForAsset()V

    goto :goto_0
.end method

.method private doInstall()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 203
    iget-object v2, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mApprovedAssets:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mApprovedAssets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mApprovedAssets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 209
    sget-object v3, Lcom/android/vending/AssetOverviewPanel$AssetAction;->INSTALL:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    iget-object v2, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mApprovedAssets:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/model/Asset;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p0, v4}, Lcom/android/vending/AssetOverviewPanel$AssetAction;->run(Lcom/android/vending/model/Asset;Landroid/app/Activity;Lcom/android/vending/AssetOverviewPanel;)V

    goto :goto_0

    .line 214
    :cond_2
    iget-object v2, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mApprovedAssets:Ljava/util/List;

    invoke-static {p0, v2}, Lcom/android/vending/PackageMonitorReceiver;->setExpectedBatchInstalls(Landroid/content/Context;Ljava/util/List;)V

    .line 215
    iget-object v2, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mApprovedAssets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 216
    .local v0, a:Lcom/android/vending/model/Asset;
    invoke-static {}, Lcom/android/vending/MultipleInstallTracker;->get()Lcom/android/vending/MultipleInstallTracker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/vending/MultipleInstallTracker;->install(Lcom/android/vending/model/Asset;)V

    goto :goto_1
.end method

.method private static extractAssetPermissionInfos(Landroid/content/Context;Lcom/android/vending/model/Asset;)Ljava/util/List;
    .locals 7
    .parameter "context"
    .parameter "asset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/vending/model/Asset;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getApplicationPermissions()Ljava/util/List;

    move-result-object v4

    .line 260
    .local v4, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 261
    .local v2, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 263
    .local v3, name:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 266
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t load permission info for permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private initializeAssetUIFields()V
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mAssets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 139
    invoke-direct {p0, v0}, Lcom/android/vending/ConfirmPermissionsActivity;->updateIcon(I)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/android/vending/ConfirmPermissionsActivity;->updateUIForAsset()V

    .line 143
    return-void
.end method

.method public static launch(Lcom/android/vending/model/Asset;Landroid/app/Activity;)V
    .locals 1
    .parameter "asset"
    .parameter "activity"

    .prologue
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {v0, p1}, Lcom/android/vending/ConfirmPermissionsActivity;->launch(Ljava/util/List;Landroid/app/Activity;)V

    .line 58
    return-void
.end method

.method public static launch(Ljava/util/List;Landroid/app/Activity;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    const-class v1, Lcom/android/vending/ConfirmPermissionsActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/Asset;

    .line 65
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_0
    const-string v2, "assetid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method private updateIcon(I)V
    .locals 7
    .parameter "assetIndex"

    .prologue
    const/4 v3, 0x0

    .line 221
    iget-object v2, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mAssets:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 223
    .local v0, asset:Lcom/android/vending/model/Asset;
    sget-object v2, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {v0, v2, v3}, Lcom/android/vending/model/Asset;->areBitmapsLoadedOrLoading(Lcom/android/vending/model/Asset$AppImageUsage;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v2

    new-instance v3, Lcom/android/vending/adapters/ImageRequest;

    iget-object v4, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mHandler:Landroid/os/Handler;

    sget-object v5, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    new-instance v6, Lcom/android/vending/ConfirmPermissionsActivity$4;

    invoke-direct {v6, p0, p1}, Lcom/android/vending/ConfirmPermissionsActivity$4;-><init>(Lcom/android/vending/ConfirmPermissionsActivity;I)V

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/android/vending/adapters/ImageRequest;-><init>(Lcom/android/vending/model/Asset;Landroid/os/Handler;Lcom/android/vending/model/Asset$AppImageUsage;Lcom/android/vending/adapters/ImageRequest$OnImagesLoadedListener;)V

    invoke-virtual {v2, v3}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V

    .line 256
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 249
    .restart local p0
    :cond_1
    iget v2, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mCurrentAssetIndex:I

    if-ne v2, p1, :cond_0

    sget-object v2, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {v0, v2, v3}, Lcom/android/vending/model/Asset;->areBitmapsLoaded(Lcom/android/vending/model/Asset$AppImageUsage;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    sget-object v2, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {v0, v2, v3}, Lcom/android/vending/model/Asset;->getBitmapDrawables(Lcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;

    move-result-object v1

    .line 252
    .local v1, drawables:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    const v2, 0x7f0800f9

    invoke-virtual {p0, v2}, Lcom/android/vending/ConfirmPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateUIForAsset()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 146
    iget-object v10, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mAssets:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v14, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/vending/ConfirmPermissionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 149
    .local v9, titleView:Landroid/view/ViewGroup;
    const v10, 0x7f080100

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 151
    .local v8, title:Landroid/widget/TextView;
    const v10, 0x7f0701cc

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    iget v12, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mCurrentAssetIndex:I

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    iget-object v12, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mAssets:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v14

    invoke-virtual {p0, v10, v11}, Lcom/android/vending/ConfirmPermissionsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const v10, 0x7f0800fd

    invoke-virtual {p0, v10}, Lcom/android/vending/ConfirmPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 159
    const v10, 0x7f080054

    invoke-virtual {p0, v10}, Lcom/android/vending/ConfirmPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    const v11, 0x7f0701ce

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 162
    .end local v8           #title:Landroid/widget/TextView;
    .end local v9           #titleView:Landroid/view/ViewGroup;
    :cond_0
    iget-object v10, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mAssets:Ljava/util/List;

    iget v11, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mCurrentAssetIndex:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/model/Asset;

    .line 164
    .local v1, asset:Lcom/android/vending/model/Asset;
    const v10, 0x7f0800fe

    invoke-virtual {p0, v10}, Lcom/android/vending/ConfirmPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 165
    const v10, 0x7f0800f8

    invoke-virtual {p0, v10}, Lcom/android/vending/ConfirmPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 167
    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 168
    .local v8, title:Ljava/lang/String;
    const v10, 0x7f0800fa

    invoke-virtual {p0, v10}, Lcom/android/vending/ConfirmPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 169
    .local v9, titleView:Landroid/widget/TextView;
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const v10, 0x7f0800fb

    invoke-virtual {p0, v10}, Lcom/android/vending/ConfirmPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 172
    .local v3, authorTextView:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->getOwnerName()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, authorName:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 174
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 176
    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const v10, 0x7f0800fc

    invoke-virtual {p0, v10}, Lcom/android/vending/ConfirmPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 180
    .local v6, permissionsViewHolder:Landroid/widget/FrameLayout;
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 182
    const-string v10, "layout_inflater"

    invoke-virtual {p0, v10}, Lcom/android/vending/ConfirmPermissionsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 184
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f04004c

    invoke-virtual {v5, v10, v6, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 186
    .local v4, inflated:Landroid/view/View;
    const v10, 0x7f080101

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vending/layout/AppSecurityPermissions;

    .line 189
    .local v0, asp:Lcom/android/vending/layout/AppSecurityPermissions;
    invoke-static {p0, v1}, Lcom/android/vending/ConfirmPermissionsActivity;->extractAssetPermissionInfos(Landroid/content/Context;Lcom/android/vending/model/Asset;)Ljava/util/List;

    move-result-object v7

    .line 190
    .local v7, pis:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual {v0, v7}, Lcom/android/vending/layout/AppSecurityPermissions;->bindInfo(Ljava/util/List;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/vending/ConfirmPermissionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09001b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/vending/layout/AppSecurityPermissions;->setBackgroundColor(I)V

    .line 193
    iget v10, p0, Lcom/android/vending/ConfirmPermissionsActivity;->mCurrentAssetIndex:I

    invoke-direct {p0, v10}, Lcom/android/vending/ConfirmPermissionsActivity;->updateIcon(I)V

    .line 194
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x7

    .line 73
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/vending/ConfirmPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/ConfirmPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "assetid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 81
    .local v0, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/android/vending/ConfirmPermissionsActivity;->finish()V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/vending/ConfirmPermissionsActivity;->requestWindowFeature(I)Z

    .line 88
    const v1, 0x7f040049

    invoke-virtual {p0, v1}, Lcom/android/vending/ConfirmPermissionsActivity;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/vending/ConfirmPermissionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f04004a

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 91
    const v1, 0x7f0800b8

    invoke-virtual {p0, v1}, Lcom/android/vending/ConfirmPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/vending/ConfirmPermissionsActivity$1;

    invoke-direct {v2, p0}, Lcom/android/vending/ConfirmPermissionsActivity$1;-><init>(Lcom/android/vending/ConfirmPermissionsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v1, 0x7f0800fd

    invoke-virtual {p0, v1}, Lcom/android/vending/ConfirmPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/vending/ConfirmPermissionsActivity$2;

    invoke-direct {v2, p0}, Lcom/android/vending/ConfirmPermissionsActivity$2;-><init>(Lcom/android/vending/ConfirmPermissionsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v1, 0x7f080054

    invoke-virtual {p0, v1}, Lcom/android/vending/ConfirmPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/vending/ConfirmPermissionsActivity$3;

    invoke-direct {v2, p0}, Lcom/android/vending/ConfirmPermissionsActivity$3;-><init>(Lcom/android/vending/ConfirmPermissionsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v1, 0x7f0800fe

    invoke-virtual {p0, v1}, Lcom/android/vending/ConfirmPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    new-instance v1, Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/vending/ConfirmPermissionsActivity$AssetLoader;-><init>(Lcom/android/vending/ConfirmPermissionsActivity;Ljava/util/List;Lcom/android/vending/ConfirmPermissionsActivity$1;)V

    invoke-virtual {p0, v1}, Lcom/android/vending/ConfirmPermissionsActivity;->startAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    goto :goto_0
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .parameter "assetId"
    .parameter "newState"

    .prologue
    .line 199
    return-void
.end method
