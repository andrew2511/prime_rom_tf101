.class public Lcom/android/vending/AssetOverviewPanel;
.super Landroid/widget/LinearLayout;
.source "AssetOverviewPanel.java"

# interfaces
.implements Lcom/android/vending/adapters/ImageRequest$OnImagesLoadedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AssetOverviewPanel$AssetAction;
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAsset:Lcom/android/vending/model/Asset;

.field protected mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

.field protected mCancelButton:Landroid/widget/Button;

.field private mDownloadObserver:Landroid/database/ContentObserver;

.field private mDownloadProgressManager:Lcom/android/vending/model/DownloadProgressManager;

.field private mDownloadProgressViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mOpenButton:Landroid/widget/Button;

.field protected mSeeDetailsButton:Landroid/widget/Button;

.field protected mUninstallButton:Landroid/widget/Button;

.field protected mUpdateButton:Landroid/widget/Button;

.field private mViewUpdater:Lcom/android/vending/adapters/DownloadingAssetViewUpdater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 185
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    return-void
.end method

.method static synthetic access$100(Lcom/android/vending/model/Asset;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/android/vending/AssetOverviewPanel;->isUninstallable(Lcom/android/vending/model/Asset;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/vending/AssetOverviewPanel;)Lcom/android/vending/adapters/DownloadingAssetViewUpdater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/vending/AssetOverviewPanel;->mViewUpdater:Lcom/android/vending/adapters/DownloadingAssetViewUpdater;

    return-object v0
.end method

.method private getPermissionGroupLabels(Ljava/util/Collection;)Ljava/util/Map;
    .locals 9
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
    .line 556
    .local p1, groupNames:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/vending/AssetOverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 557
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 558
    .local v2, groupToLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

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

    .line 559
    .local v1, groupName:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 561
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v1, v7}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v6

    .line 563
    .local v6, permissionGroupInfo:Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual {v6, v5}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, label:Ljava/lang/String;
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 565
    .end local v4           #label:Ljava/lang/String;
    .end local v6           #permissionGroupInfo:Landroid/content/pm/PermissionGroupInfo;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 566
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid group name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 570
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
    .line 574
    .local p1, permissions:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 576
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

    .line 577
    .local v3, p:Landroid/content/pm/PermissionInfo;
    iget-object v0, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 578
    .local v0, group:Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 579
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 583
    .end local v0           #group:Ljava/lang/String;
    .end local v3           #p:Landroid/content/pm/PermissionInfo;
    :cond_1
    return-object v1
.end method

.method private initDownloadObserver()V
    .locals 2

    .prologue
    .line 415
    new-instance v0, Lcom/android/vending/AssetOverviewPanel$2;

    invoke-virtual {p0}, Lcom/android/vending/AssetOverviewPanel;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/vending/AssetOverviewPanel$2;-><init>(Lcom/android/vending/AssetOverviewPanel;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vending/AssetOverviewPanel;->mDownloadObserver:Landroid/database/ContentObserver;

    .line 454
    return-void
.end method

.method private static isUninstallable(Lcom/android/vending/model/Asset;Landroid/content/Context;)Z
    .locals 2
    .parameter "asset"
    .parameter "context"

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 351
    .local v0, uninstallable:Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/vending/model/Asset;->canUninstall(Landroid/content/Context;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 354
    :goto_0
    return v0

    .line 352
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private makePermissionsString()Ljava/lang/CharSequence;
    .locals 25

    .prologue
    .line 500
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/AssetOverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/vending/model/Asset;->loadPermissionInfos(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 502
    .local v17, permissions:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 503
    .local v18, permissionsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PermissionInfo;>;"
    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 504
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PermissionInfo;

    .line 505
    .local v15, permission:Landroid/content/pm/PermissionInfo;
    move-object v0, v15

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 506
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 510
    .end local v15           #permission:Landroid/content/pm/PermissionInfo;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/vending/AssetOverviewPanel;->groupPermissions(Ljava/util/List;)Ljava/util/Map;

    move-result-object v8

    .line 511
    .local v8, groupedPermissions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/vending/AssetOverviewPanel;->getPermissionGroupLabels(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v16

    .line 514
    .local v16, permissionGroupLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 515
    .local v14, labels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 516
    .local v7, groupName:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object v1, v7

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 517
    .local v6, groupLabel:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/vending/util/Util;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 518
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 519
    .local v5, descriptions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x1

    .line 520
    .local v11, isFirst:Z
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #groupName:Ljava/lang/String;
    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PermissionInfo;

    .line 521
    .restart local v15       #permission:Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/AssetOverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object v0, v15

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 523
    .local v13, labelChars:Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 527
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 528
    .local v12, label:Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 529
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object v0, v12

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    move-object v0, v12

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 531
    :cond_4
    const/4 v11, 0x0

    .line 532
    invoke-static {v12}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 534
    .end local v12           #label:Ljava/lang/String;
    .end local v13           #labelChars:Ljava/lang/CharSequence;
    .end local v15           #permission:Landroid/content/pm/PermissionInfo;
    :cond_5
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<b>"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v6}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "</b><br>"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v22

    move-object v0, v14

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 539
    .end local v5           #descriptions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #groupLabel:Ljava/lang/String;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #isFirst:Z
    :cond_6
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 540
    const/16 v22, 0x0

    .line 552
    :goto_3
    return-object v22

    .line 543
    :cond_7
    new-instance v21, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v21 .. v21}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 544
    .local v21, text:Landroid/text/SpannableStringBuilder;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 545
    .local v12, label:Ljava/lang/CharSequence;
    invoke-virtual/range {v21 .. v21}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v20

    .line 546
    .local v20, sizeStart:I
    const-string v22, "\n\n"

    invoke-virtual/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 547
    invoke-virtual/range {v21 .. v21}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v19

    .line 548
    .local v19, sizeEnd:I
    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 549
    new-instance v22, Landroid/text/style/RelativeSizeSpan;

    const/high16 v23, 0x3f00

    invoke-direct/range {v22 .. v23}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v23, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .end local v12           #label:Ljava/lang/CharSequence;
    .end local v19           #sizeEnd:I
    .end local v20           #sizeStart:I
    :cond_8
    move-object/from16 v22, v21

    .line 552
    goto :goto_3
.end method

.method private setDownloadViewsVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 457
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mDownloadProgressViews:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 458
    .local v0, downloadView:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 460
    .end local v0           #downloadView:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setThumbnail(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "drawable"

    .prologue
    .line 298
    const v1, 0x7f08001e

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 299
    .local v0, thumbnailView:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3ff6666666666666L

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 304
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 308
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 309
    return-void

    .line 306
    :cond_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method private setupButtons()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 316
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mOpenButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v3}, Lcom/android/vending/model/Asset;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 317
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 319
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mUpdateButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 320
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->isDownloadingOrInstalling()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 322
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 323
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mCancelButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v3}, Lcom/android/vending/model/Asset;->isDownloading()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 332
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {p0}, Lcom/android/vending/AssetOverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/vending/AssetOverviewPanel;->isUninstallable(Lcom/android/vending/model/Asset;Landroid/content/Context;)Z

    move-result v1

    .line 334
    .local v1, uninstallable:Z
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->isRefundable()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    const/4 v2, 0x1

    move v0, v2

    .line 335
    .local v0, isUninstallButtonVisible:Z
    :goto_2
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->isUninstalling()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 336
    const/4 v0, 0x0

    .line 338
    :cond_2
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mUninstallButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    move v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 340
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mUninstallButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    iget-object v4, p0, Lcom/android/vending/AssetOverviewPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/vending/model/Asset;->isUpdatedSystemApp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x7f07009f

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 346
    return-void

    .end local v0           #isUninstallButtonVisible:Z
    .end local v1           #uninstallable:Z
    :cond_3
    move v3, v6

    .line 316
    goto :goto_0

    .line 324
    :cond_4
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->isUpdate()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 325
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 326
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/vending/AssetOverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070175

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 327
    :cond_5
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->isDownloadable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->isUninstalling()Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 329
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/vending/AssetOverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07009d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .restart local v1       #uninstallable:Z
    :cond_6
    move v0, v5

    .line 334
    goto :goto_2

    .restart local v0       #isUninstallButtonVisible:Z
    :cond_7
    move v3, v6

    .line 338
    goto :goto_3

    .line 340
    :cond_8
    iget-object v3, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v3}, Lcom/android/vending/model/Asset;->isRefundable()Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v1, :cond_9

    const v3, 0x7f070102

    goto :goto_4

    :cond_9
    const v3, 0x7f070101

    goto :goto_4

    :cond_a
    const v3, 0x7f07009e

    goto :goto_4
.end method

.method private syncAutoUpdateSection()V
    .locals 8

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 390
    const v5, 0x7f08005a

    invoke-virtual {p0, v5}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 391
    .local v1, autoUpdateSection:Landroid/view/View;
    const v5, 0x7f080059

    invoke-virtual {p0, v5}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 392
    .local v3, autoUpdateSectionSeparatorTop:Landroid/view/View;
    const v5, 0x7f08005b

    invoke-virtual {p0, v5}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 395
    .local v2, autoUpdateSectionSeparatorBottom:Landroid/view/View;
    iget-object v5, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->isInstalled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 396
    iget-object v5, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {p0}, Lcom/android/vending/AssetOverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/vending/model/Asset;->isAutoUpdateEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 397
    .local v4, enabled:Z
    const v5, 0x7f080028

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 399
    .local v0, autoUpdateCheckBox:Landroid/widget/CheckBox;
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 401
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v5, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->isDownloadingOrInstalling()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    :goto_0
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 406
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 412
    .end local v0           #autoUpdateCheckBox:Landroid/widget/CheckBox;
    .end local v4           #enabled:Z
    :goto_1
    return-void

    .restart local v0       #autoUpdateCheckBox:Landroid/widget/CheckBox;
    .restart local v4       #enabled:Z
    :cond_0
    move v5, v7

    .line 404
    goto :goto_0

    .line 408
    .end local v0           #autoUpdateCheckBox:Landroid/widget/CheckBox;
    .end local v4           #enabled:Z
    :cond_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 409
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 410
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private syncDescriptionSection()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 358
    iget-object v4, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v4}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, title:Ljava/lang/String;
    const v4, 0x7f080023

    invoke-virtual {p0, v4}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 360
    .local v3, titleView:Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 363
    const v4, 0x7f080024

    invoke-virtual {p0, v4}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 364
    .local v1, authorTextView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v4}, Lcom/android/vending/model/Asset;->getOwnerName()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, authorName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 368
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 370
    return-void
.end method

.method private syncDownloadSection()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 463
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->isDownloadingOrInstalling()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 464
    invoke-direct {p0, v4}, Lcom/android/vending/AssetOverviewPanel;->setDownloadViewsVisibility(I)V

    .line 465
    new-instance v2, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;

    invoke-virtual {p0}, Lcom/android/vending/AssetOverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mViewUpdater:Lcom/android/vending/adapters/DownloadingAssetViewUpdater;

    .line 466
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mViewUpdater:Lcom/android/vending/adapters/DownloadingAssetViewUpdater;

    iget-object v3, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v2, p0, v3}, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;->updateView(Landroid/view/View;Lcom/android/vending/model/Asset;)V

    .line 468
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->isDownloading()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 469
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mDownloadObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_0

    .line 470
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mDownloadProgressManager:Lcom/android/vending/model/DownloadProgressManager;

    iget-object v3, p0, Lcom/android/vending/AssetOverviewPanel;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Lcom/android/vending/model/DownloadProgressManager;->unregisterObserver(Landroid/database/ContentObserver;)V

    .line 472
    :cond_0
    invoke-direct {p0}, Lcom/android/vending/AssetOverviewPanel;->initDownloadObserver()V

    .line 473
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mDownloadProgressManager:Lcom/android/vending/model/DownloadProgressManager;

    iget-object v3, p0, Lcom/android/vending/AssetOverviewPanel;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Lcom/android/vending/model/DownloadProgressManager;->registerObserverOnce(Landroid/database/ContentObserver;)V

    .line 475
    :cond_1
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mDownloadObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_2

    .line 477
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4}, Landroid/database/ContentObserver;->dispatchChange(Z)V

    .line 482
    :cond_2
    :goto_0
    const v2, 0x7f080057

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 484
    .local v1, uninstallingLabel:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->isUninstalling()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 485
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    const v2, 0x7f080058

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 487
    .local v0, progressBar:Landroid/widget/ProgressBar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 488
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 492
    .end local v0           #progressBar:Landroid/widget/ProgressBar;
    :goto_1
    return-void

    .line 480
    .end local v1           #uninstallingLabel:Landroid/widget/TextView;
    :cond_3
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/vending/AssetOverviewPanel;->setDownloadViewsVisibility(I)V

    goto :goto_0

    .line 490
    .restart local v1       #uninstallingLabel:Landroid/widget/TextView;
    :cond_4
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private syncPermissionsSection()V
    .locals 7

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/android/vending/AssetOverviewPanel;->makePermissionsString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 374
    .local v1, permissionsString:Ljava/lang/CharSequence;
    const v5, 0x7f08003f

    invoke-virtual {p0, v5}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 375
    .local v2, permissionsTextView:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    if-eqz v1, :cond_1

    const v5, 0x7f070185

    move v4, v5

    .line 380
    .local v4, titleId:I
    :goto_0
    iget-object v5, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->isUpdate()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {p0}, Lcom/android/vending/AssetOverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/vending/model/Asset;->containsDangerousNewPermissions(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 381
    const v4, 0x7f0701d2

    .line 384
    :cond_0
    const v5, 0x7f08005f

    invoke-virtual {p0, v5}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 385
    .local v0, permissionsHeaderTextView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/vending/AssetOverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, title:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    return-void

    .line 377
    .end local v0           #permissionsHeaderTextView:Landroid/widget/TextView;
    .end local v3           #title:Ljava/lang/String;
    .end local v4           #titleId:I
    :cond_1
    const v5, 0x7f0701d1

    move v4, v5

    goto :goto_0
.end method


# virtual methods
.method public getAsset()Lcom/android/vending/model/Asset;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const v5, 0x7f080056

    const v4, 0x7f080055

    .line 198
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 199
    const v2, 0x7f080051

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mOpenButton:Landroid/widget/Button;

    .line 200
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mOpenButton:Landroid/widget/Button;

    sget-object v3, Lcom/android/vending/AssetOverviewPanel$AssetAction;->LAUNCH:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 202
    const v2, 0x7f080054

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mCancelButton:Landroid/widget/Button;

    .line 203
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mCancelButton:Landroid/widget/Button;

    sget-object v3, Lcom/android/vending/AssetOverviewPanel$AssetAction;->CANCEL_DOWNLOAD:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 205
    const v2, 0x7f08005c

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mUninstallButton:Landroid/widget/Button;

    .line 206
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mUninstallButton:Landroid/widget/Button;

    sget-object v3, Lcom/android/vending/AssetOverviewPanel$AssetAction;->UNINSTALL:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 208
    const v2, 0x7f080053

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mUpdateButton:Landroid/widget/Button;

    .line 209
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mUpdateButton:Landroid/widget/Button;

    sget-object v3, Lcom/android/vending/AssetOverviewPanel$AssetAction;->SHOW_PERMISSIONS:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 211
    const v2, 0x7f08004f

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mSeeDetailsButton:Landroid/widget/Button;

    .line 212
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mSeeDetailsButton:Landroid/widget/Button;

    sget-object v3, Lcom/android/vending/AssetOverviewPanel$AssetAction;->SEE_DETAILS:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 214
    const v2, 0x7f080028

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 215
    .local v1, autoUpdateCheckbox:Landroid/widget/CheckBox;
    sget-object v2, Lcom/android/vending/AssetOverviewPanel$AssetAction;->CHANGE_AUTO_UPDATE:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 217
    new-instance v0, Lcom/android/vending/AssetOverviewPanel$1;

    invoke-direct {v0, p0}, Lcom/android/vending/AssetOverviewPanel$1;-><init>(Lcom/android/vending/AssetOverviewPanel;)V

    .line 236
    .local v0, actionListener:Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mOpenButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mSeeDetailsButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mDownloadProgressViews:Ljava/util/Set;

    .line 244
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mDownloadProgressViews:Ljava/util/Set;

    invoke-virtual {p0, v4}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mDownloadProgressViews:Ljava/util/Set;

    invoke-virtual {p0, v5}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel;->mDownloadProgressViews:Ljava/util/Set;

    const v3, 0x7f080058

    invoke-virtual {p0, v3}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {p0, v4}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {p0, v5}, Lcom/android/vending/AssetOverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    const-string v2, " "

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    return-void
.end method

.method public onImageLoadFailure(Lcom/android/vending/model/Asset;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "asset"
    .parameter "t"

    .prologue
    .line 295
    return-void
.end method

.method public onImageLoadSuccess(Lcom/android/vending/model/Asset;)V
    .locals 2
    .parameter "asset"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->PROMO_BADGE:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/Asset;->getBitmapDrawable(Lcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vending/AssetOverviewPanel;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    .line 292
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/vending/AssetOverviewPanel;->mActivity:Landroid/app/Activity;

    .line 256
    return-void
.end method

.method public setAsset(Lcom/android/vending/model/Asset;)V
    .locals 4
    .parameter "asset"

    .prologue
    const/4 v1, 0x0

    .line 259
    iput-object p1, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vending/AssetOverviewPanel;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    .line 265
    sget-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->PROMO_BADGE:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {p1, v0, v1}, Lcom/android/vending/model/Asset;->areBitmapsLoadedOrLoading(Lcom/android/vending/model/Asset$AppImageUsage;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    sget-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->PROMO_BADGE:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {p1, v0, v1}, Lcom/android/vending/model/Asset;->setLoadingBitmapsState(Lcom/android/vending/model/Asset$AppImageUsage;I)V

    .line 267
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetOverviewPanel;->mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

    .line 268
    iget-object v0, p0, Lcom/android/vending/AssetOverviewPanel;->mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

    new-instance v1, Lcom/android/vending/adapters/ImageRequest;

    invoke-virtual {p0}, Lcom/android/vending/AssetOverviewPanel;->getHandler()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/android/vending/model/Asset$AppImageUsage;->PROMO_BADGE:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/android/vending/adapters/ImageRequest;-><init>(Lcom/android/vending/model/Asset;Landroid/os/Handler;Lcom/android/vending/model/Asset$AppImageUsage;Lcom/android/vending/adapters/ImageRequest$OnImagesLoadedListener;)V

    invoke-virtual {v0, v1}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V

    .line 274
    :goto_0
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->snapshotLocalState()V

    .line 275
    invoke-direct {p0}, Lcom/android/vending/AssetOverviewPanel;->setupButtons()V

    .line 276
    invoke-direct {p0}, Lcom/android/vending/AssetOverviewPanel;->syncDescriptionSection()V

    .line 277
    invoke-direct {p0}, Lcom/android/vending/AssetOverviewPanel;->syncAutoUpdateSection()V

    .line 278
    invoke-direct {p0}, Lcom/android/vending/AssetOverviewPanel;->syncPermissionsSection()V

    .line 279
    invoke-direct {p0}, Lcom/android/vending/AssetOverviewPanel;->syncDownloadSection()V

    .line 280
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->PROMO_BADGE:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/Asset;->getBitmapDrawable(Lcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vending/AssetOverviewPanel;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setDownloadProgressManager(Lcom/android/vending/model/DownloadProgressManager;)V
    .locals 0
    .parameter "downloadProgressManager"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/vending/AssetOverviewPanel;->mDownloadProgressManager:Lcom/android/vending/model/DownloadProgressManager;

    .line 288
    return-void
.end method
