.class public Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;
.super Landroid/widget/RelativeLayout;
.source "RecentAppsPanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;,
        Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActvityDescriptionAdapter;,
        Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;,
        Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;
    }
.end annotation


# instance fields
.field private mActivityDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

.field private mChoreo:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;

.field private mCompatMode:Landroid/widget/CheckBox;

.field private mGlowBitmap:Landroid/graphics/Bitmap;

.field private mIconDpi:I

.field protected mLastVisibleItem:I

.field private mListAdapter:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActvityDescriptionAdapter;

.field private mRecentsContainer:Landroid/widget/ListView;

.field private mRecentsDismissButton:Landroid/view/View;

.field private mRecentsGlowView:Landroid/view/View;

.field private mRecentsScrim:Landroid/view/View;

.field private mShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 319
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 322
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 324
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 325
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 328
    .local v1, xlarge:Z
    :goto_0
    if-eqz v1, :cond_1

    const/16 v2, 0xf0

    :goto_1
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mIconDpi:I

    .line 329
    const v2, 0x7f020056

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mGlowBitmap:Landroid/graphics/Bitmap;

    .line 330
    return-void

    .line 325
    .end local v1           #xlarge:Z
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 328
    .restart local v1       #xlarge:Z
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mActivityDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mGlowBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->compositeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsContainer:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->hide(Z)V

    return-void
.end method

.method private compositeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "background"
    .parameter "thumbnail"

    .prologue
    const/16 v11, 0xf

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 533
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 534
    .local v1, outBitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    .line 535
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 536
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 537
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 538
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 539
    const/16 v5, 0xff

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 540
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 541
    .local v4, srcWidth:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 542
    .local v3, srcHeight:I
    new-instance v5, Landroid/graphics/Rect;

    sub-int v6, v4, v7

    sub-int v7, v3, v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/RectF;

    const/high16 v7, 0x4170

    const/high16 v8, 0x4100

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v9, v11

    int-to-float v9, v9

    const/high16 v10, 0x4040

    add-float/2addr v9, v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x40e0

    add-float/2addr v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p2, v5, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 549
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v3           #srcHeight:I
    .end local v4           #srcWidth:I
    :cond_0
    return-object v1
.end method

.method private getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 402
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "info"
    .parameter "packageManager"

    .prologue
    .line 413
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 418
    .local v2, resources:Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 419
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .line 420
    .local v1, iconId:I
    if-eqz v1, :cond_0

    .line 421
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 424
    .end local v1           #iconId:I
    :goto_1
    return-object v3

    .line 415
    .end local v2           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 416
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2       #resources:Landroid/content/res/Resources;
    goto :goto_0

    .line 424
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "resources"
    .parameter "iconId"

    .prologue
    .line 407
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mIconDpi:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getRecentTasks()Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v12, activityDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 430
    .local v19, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager;

    .line 433
    .local v13, am:Landroid/app/ActivityManager;
    const/16 v4, 0x15

    const/16 v5, 0x1002

    invoke-virtual {v13, v4, v5}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v21

    .line 437
    .local v21, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, v19

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v15

    .line 440
    .local v15, homeInfo:Landroid/content/pm/ActivityInfo;
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v18

    .line 443
    .local v18, numTasks:I
    const/4 v14, 0x1

    .line 444
    .local v14, first:I
    const/16 v16, 0x1

    .local v16, i:I
    const/4 v10, 0x0

    .local v10, index:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    const/16 v4, 0x15

    if-ge v10, v4, :cond_3

    .line 445
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 447
    .local v20, recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object v4, v0

    invoke-direct {v8, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 448
    .local v8, intent:Landroid/content/Intent;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object v4, v0

    if-eqz v4, :cond_0

    .line 449
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object v4, v0

    invoke-virtual {v8, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 453
    :cond_0
    if-eqz v15, :cond_2

    iget-object v4, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 444
    :cond_1
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 459
    :cond_2
    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const v5, -0x200001

    and-int/2addr v4, v5

    const/high16 v5, 0x1000

    or-int/2addr v4, v5

    invoke-virtual {v8, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 461
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object v1, v8

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v22

    .line 462
    .local v22, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v22, :cond_1

    .line 463
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    .line 464
    .local v17, info:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 466
    .local v6, title:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 467
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v9, v3, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 468
    .local v9, id:I
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v5, :cond_1

    .line 470
    new-instance v3, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move v4, v0

    invoke-virtual {v13, v4}, Landroid/app/ActivityManager;->getTaskThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    move-object v7, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v11, v0

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/Intent;IILjava/lang/String;)V

    .line 474
    .local v3, item:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 481
    .end local v3           #item:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v6           #title:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #id:I
    .end local v17           #info:Landroid/content/pm/ActivityInfo;
    .end local v20           #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v22           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    return-object v12
.end method

.method private hide(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 560
    if-nez p1, :cond_0

    .line 561
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->setVisibility(I)V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 564
    return-void
.end method

.method private refreshApplicationList()V
    .locals 2

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->getRecentTasks()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mActivityDescriptions:Ljava/util/ArrayList;

    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mListAdapter:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActvityDescriptionAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActvityDescriptionAdapter;->notifyDataSetInvalidated()V

    .line 522
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mActivityDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mActivityDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mLastVisibleItem:I

    .line 524
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->updateUiElements(Landroid/content/res/Configuration;)V

    .line 525
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->updateShownCompatMode()V

    .line 530
    :goto_0
    return-void

    .line 528
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->hide(Z)V

    goto :goto_0
.end method

.method private updateShownCompatMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 498
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mCompatMode:Landroid/widget/CheckBox;

    if-nez v2, :cond_0

    .line 517
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 503
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getFrontActivityScreenCompatMode()I

    move-result v1

    .line 504
    .local v1, mode:I
    packed-switch v1, :pswitch_data_0

    .line 514
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mCompatMode:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 506
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mCompatMode:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 507
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mCompatMode:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 510
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mCompatMode:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 511
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mCompatMode:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateUiElements(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "config"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 553
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mActivityDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 555
    .local v0, items:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsContainer:Landroid/widget/ListView;

    if-lez v0, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 556
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsGlowView:Landroid/view/View;

    if-lez v0, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 557
    return-void

    :cond_0
    move v2, v4

    .line 555
    goto :goto_0

    :cond_1
    move v2, v4

    .line 556
    goto :goto_1
.end method


# virtual methods
.method public isInContentArea(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 166
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsContainer:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLeft()I

    move-result v1

    .line 167
    .local v1, l:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsContainer:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getRight()I

    move-result v2

    .line 169
    .local v2, r:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsGlowView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 170
    .local v3, t:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsGlowView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 171
    .local v0, b:I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mShowing:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 356
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 357
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 360
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0b006b

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsContainer:Landroid/widget/ListView;

    .line 361
    const v3, 0x7f030014

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsContainer:Landroid/widget/ListView;

    invoke-virtual {v1, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 363
    .local v0, footer:Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsContainer:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    .line 364
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsContainer:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 365
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsContainer:Landroid/widget/ListView;

    new-instance v4, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActvityDescriptionAdapter;

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActvityDescriptionAdapter;-><init>(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mListAdapter:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActvityDescriptionAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 366
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsContainer:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 367
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 369
    .local v2, leftPadding:I
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsContainer:Landroid/widget/ListView;

    invoke-virtual {v3, v2, v6}, Landroid/widget/ListView;->setOverScrollEffectPadding(II)V

    .line 371
    const v3, 0x7f0b006a

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsGlowView:Landroid/view/View;

    .line 372
    const v3, 0x7f0b0069

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsScrim:Landroid/view/View;

    .line 373
    new-instance v3, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsScrim:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsGlowView:Landroid/view/View;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mChoreo:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;

    .line 374
    const v3, 0x7f0b006c

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsDismissButton:Landroid/view/View;

    .line 375
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsDismissButton:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$2;-><init>(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsScrim:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 383
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 385
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 567
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;

    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;->access$700(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ViewHolder;)Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;

    move-result-object v0

    .line 568
    .local v0, ad:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 570
    .local v1, am:Landroid/app/ActivityManager;
    iget v3, v0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;->id:I

    if-ltz v3, :cond_0

    .line 572
    iget v3, v0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;->id:I

    invoke-virtual {v1, v3, v5}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 580
    :goto_0
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->hide(Z)V

    .line 581
    return-void

    .line 574
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;->intent:Landroid/content/Intent;

    .line 575
    .local v2, intent:Landroid/content/Intent;
    const v3, 0x104000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 578
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 196
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mChoreo:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsContainer:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->setPanelHeight(I)V

    .line 198
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v4, 0x1

    .line 334
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 337
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsContainer:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 338
    .local v0, childCount:I
    if-lez v0, :cond_0

    .line 339
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsContainer:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    add-int/2addr v3, v0

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mLastVisibleItem:I

    .line 340
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsContainer:Landroid/widget/ListView;

    sub-int v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 341
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mRecentsContainer:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v1, v3, v4

    .line 345
    .local v1, distanceFromBottom:I
    new-instance v3, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$1;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$1;-><init>(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;I)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->post(Ljava/lang/Runnable;)Z

    .line 352
    .end local v1           #distanceFromBottom:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 389
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 391
    if-nez p2, :cond_0

    if-ne p1, p0, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->refreshApplicationList()V

    .line 393
    new-instance v0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$3;-><init>(Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->post(Ljava/lang/Runnable;)Z

    .line 399
    :cond_0
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .line 315
    return-void
.end method

.method public show(ZZ)V
    .locals 2
    .parameter "show"
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 175
    if-eqz p2, :cond_2

    .line 176
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mShowing:Z

    if-eq v0, p1, :cond_1

    .line 177
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mShowing:Z

    .line 178
    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->setVisibility(I)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mChoreo:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->startAnimation(Z)V

    .line 188
    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mShowing:Z

    .line 185
    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->mChoreo:Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$Choreographer;->jumpTo(Z)V

    goto :goto_0

    .line 185
    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method
