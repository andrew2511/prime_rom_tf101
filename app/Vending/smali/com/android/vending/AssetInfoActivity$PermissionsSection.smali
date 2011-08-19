.class Lcom/android/vending/AssetInfoActivity$PermissionsSection;
.super Lcom/android/vending/AssetInfoActivity$Section;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionsSection"
.end annotation


# instance fields
.field private mContainer:Landroid/widget/FrameLayout;

.field private mOpenHeight:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/AssetInfoActivity$Section;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    .line 1313
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mOpenHeight:I

    .line 1316
    invoke-virtual {p1}, Lcom/android/vending/AssetInfoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1317
    return-void
.end method

.method static synthetic access$2900(Lcom/android/vending/AssetInfoActivity$PermissionsSection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1310
    iget v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mOpenHeight:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/vending/AssetInfoActivity$PermissionsSection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1310
    iput p1, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mOpenHeight:I

    return p1
.end method

.method static synthetic access$3000(Lcom/android/vending/AssetInfoActivity$PermissionsSection;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/vending/AssetInfoActivity$PermissionsSection;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1310
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->maybeSetCarouselBackground(I)V

    return-void
.end method

.method private getPermissionGroupLabels(Ljava/util/Collection;)Ljava/util/Map;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1440
    .local p1, groupNames:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1441
    .local v2, groupToLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1442
    .local v1, groupName:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1444
    :try_start_0
    iget-object v6, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5

    .line 1446
    .local v5, permissionGroupInfo:Landroid/content/pm/PermissionGroupInfo;
    iget-object v6, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1448
    .local v4, label:Ljava/lang/String;
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1449
    .end local v4           #label:Ljava/lang/String;
    .end local v5           #permissionGroupInfo:Landroid/content/pm/PermissionGroupInfo;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 1450
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid group name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 1454
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #groupName:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private groupPermissions(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1459
    .local p1, permissions:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1461
    .local v1, groupedPermissions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0
    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;

    .line 1462
    .local v3, p:Landroid/content/pm/PermissionInfo;
    iget-object v0, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 1463
    .local v0, group:Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1464
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1468
    .end local v0           #group:Ljava/lang/String;
    .end local v3           #p:Landroid/content/pm/PermissionInfo;
    :cond_1
    return-object v1
.end method

.method private makePermissionsString()Ljava/lang/CharSequence;
    .locals 12

    .prologue
    .line 1404
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v7, v7, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    iget-object v8, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v7, v8}, Lcom/android/vending/model/Asset;->loadPermissionInfos(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1407
    .local v6, permissions:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    new-instance v7, Lcom/android/vending/AssetInfoActivity$PermissionsSection$2;

    invoke-direct {v7, p0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection$2;-><init>(Lcom/android/vending/AssetInfoActivity$PermissionsSection;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1418
    invoke-direct {p0, v6}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->groupPermissions(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 1419
    .local v2, groupedPermissions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->getPermissionGroupLabels(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v5

    .line 1422
    .local v5, permissionGroupLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 1423
    .local v4, labels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1424
    .local v1, groupName:Ljava/lang/String;
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1425
    .local v0, groupLabel:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/vending/util/Util;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1426
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1430
    .end local v0           #groupLabel:Ljava/lang/String;
    .end local v1           #groupName:Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1431
    const/4 v7, 0x0

    .line 1434
    :goto_1
    return-object v7

    :cond_2
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const v8, 0x7f0701b0

    invoke-virtual {v7, v8}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const v11, 0x7f070033

    invoke-virtual {v10, v11}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method private maybeSetCarouselBackground(I)V
    .locals 3
    .parameter "backgroundColor"

    .prologue
    .line 1393
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const v2, 0x7f08003b

    invoke-virtual {v1, v2}, Lcom/android/vending/AssetInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1394
    .local v0, assetSnippet:Landroid/view/View;
    instance-of v1, v0, Lcom/android/vending/velvet/PortraitCarouselView;

    if-eqz v1, :cond_0

    .line 1395
    check-cast v0, Lcom/android/vending/velvet/CarouselView;

    .end local v0           #assetSnippet:Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/android/vending/velvet/CarouselView;->setBackgroundColor(I)V

    .line 1397
    :cond_0
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1372
    invoke-super {p0}, Lcom/android/vending/AssetInfoActivity$Section;->activate()V

    .line 1373
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v3}, Lcom/android/vending/AssetInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->maybeSetCarouselBackground(I)V

    .line 1376
    new-array v3, v8, [I

    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v4}, Lcom/android/vending/AssetInfoActivity;->access$3300(Lcom/android/vending/AssetInfoActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    aput v4, v3, v6

    aput v6, v3, v7

    invoke-static {v3}, Lcom/android/vending/compat/animation/ValueAnimator;->ofInt([I)Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v2

    .line 1377
    .local v2, scrollAnimator:Lcom/android/vending/compat/animation/ValueAnimator;
    new-instance v3, Lcom/android/vending/AssetInfoActivity$VerticalScrollAnimator;

    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v5, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v5}, Lcom/android/vending/AssetInfoActivity;->access$3300(Lcom/android/vending/AssetInfoActivity;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-direct {v3, v4, v5, v9}, Lcom/android/vending/AssetInfoActivity$VerticalScrollAnimator;-><init>(Lcom/android/vending/AssetInfoActivity;Landroid/view/View;Lcom/android/vending/AssetInfoActivity$1;)V

    invoke-virtual {v2, v3}, Lcom/android/vending/compat/animation/ValueAnimator;->addUpdateListener(Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1378
    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Lcom/android/vending/compat/animation/ValueAnimator;->setDuration(J)Lcom/android/vending/compat/animation/ValueAnimator;

    .line 1380
    new-array v3, v8, [I

    aput v6, v3, v6

    iget v4, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mOpenHeight:I

    aput v4, v3, v7

    invoke-static {v3}, Lcom/android/vending/compat/animation/ValueAnimator;->ofInt([I)Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v1

    .line 1381
    .local v1, heightAnimator:Lcom/android/vending/compat/animation/ValueAnimator;
    new-instance v3, Lcom/android/vending/AssetInfoActivity$HeightAnimator;

    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v5, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    invoke-direct {v3, v4, v5, v9}, Lcom/android/vending/AssetInfoActivity$HeightAnimator;-><init>(Lcom/android/vending/AssetInfoActivity;Landroid/view/View;Lcom/android/vending/AssetInfoActivity$1;)V

    invoke-virtual {v1, v3}, Lcom/android/vending/compat/animation/ValueAnimator;->addUpdateListener(Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1382
    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Lcom/android/vending/compat/animation/ValueAnimator;->setDuration(J)Lcom/android/vending/compat/animation/ValueAnimator;

    .line 1384
    new-instance v0, Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/android/vending/compat/animation/AnimatorSet;-><init>()V

    .line 1385
    .local v0, animatorSet:Lcom/android/vending/compat/animation/AnimatorSet;
    new-array v3, v8, [Lcom/android/vending/compat/animation/Animator;

    aput-object v2, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v0, v3}, Lcom/android/vending/compat/animation/AnimatorSet;->playTogether([Lcom/android/vending/compat/animation/Animator;)V

    .line 1386
    invoke-virtual {v0}, Lcom/android/vending/compat/animation/AnimatorSet;->start()V

    .line 1387
    return-void
.end method

.method protected onAttach()V
    .locals 1

    .prologue
    .line 1321
    const v0, 0x7f040011

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->inflateView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    .line 1322
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->addView(Landroid/view/View;)V

    .line 1323
    return-void
.end method

.method public refresh()V
    .locals 4

    .prologue
    .line 1327
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    const v3, 0x7f08003f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1332
    .local v1, permissionsListView:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->makePermissionsString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1333
    .local v0, permissionString:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1334
    const v2, 0x7f0701b1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1335
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    const v3, 0x7f080040

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1342
    :goto_0
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1343
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/vending/AssetInfoActivity$PermissionsSection$1;

    invoke-direct {v3, p0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection$1;-><init>(Lcom/android/vending/AssetInfoActivity$PermissionsSection;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1368
    return-void

    .line 1337
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1339
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lcom/android/vending/AssetInfoActivity;->setViewOnClickListener(Landroid/view/View;)V

    goto :goto_0
.end method
