.class public Lcom/android/internal/policy/impl/RecentApplicationsDialog;
.super Landroid/app/Dialog;
.source "RecentApplicationsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    }
.end annotation


# static fields
.field private static final DBG_FORCE_EMPTY_LIST:Z = false

.field private static final MAX_RECENT_TASKS:I = 0x10

.field private static final NUM_BUTTONS:I = 0x8

.field private static sStatusBar:Landroid/app/StatusBarManager;


# instance fields
.field mBroadcastIntentFilter:Landroid/content/IntentFilter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCleanup:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field private mHeldModifiers:I

.field final mIcons:[Landroid/widget/TextView;

.field mNoAppsText:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 77
    const v0, 0x10301d8

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 54
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;-><init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mCleanup:Ljava/lang/Runnable;

    .line 351
    new-instance v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog$2;-><init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    return-void
.end method

.method private reloadButtons()V
    .registers 26

    .prologue
    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 274
    .local v7, context:Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 275
    .local v16, pm:Landroid/content/pm/PackageManager;
    const-string v22, "activity"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 277
    .local v6, am:Landroid/app/ActivityManager;
    const/16 v22, 0x10

    const/16 v23, 0x2

    move-object v0, v6

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v17

    .line 280
    .local v17, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v22, Landroid/content/Intent;

    const-string v23, "android.intent.action.MAIN"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v23, "android.intent.category.HOME"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 284
    .local v8, homeInfo:Landroid/content/pm/ActivityInfo;
    new-instance v11, Lcom/android/internal/policy/impl/IconUtilities;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/IconUtilities;-><init>(Landroid/content/Context;)V

    .line 289
    .local v11, iconUtilities:Lcom/android/internal/policy/impl/IconUtilities;
    const/4 v12, 0x0

    .line 290
    .local v12, index:I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v15

    .line 291
    .local v15, numTasks:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4b
    if-ge v9, v15, :cond_138

    const/16 v22, 0x8

    move v0, v12

    move/from16 v1, v22

    if-ge v0, v1, :cond_138

    .line 292
    move-object/from16 v0, v17

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 297
    .local v13, info:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v14, Landroid/content/Intent;

    move-object v0, v13

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    move-object v0, v14

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 298
    .local v14, intent:Landroid/content/Intent;
    move-object v0, v13

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7c

    .line 299
    move-object v0, v13

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    move-object v0, v14

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 303
    :cond_7c
    if-eqz v8, :cond_a7

    .line 304
    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a7

    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a7

    .line 291
    :cond_a4
    :goto_a4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4b

    .line 312
    :cond_a7
    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v22

    const v23, -0x200001

    and-int v22, v22, v23

    const/high16 v23, 0x1000

    or-int v22, v22, v23

    move-object v0, v14

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 314
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object v1, v14

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .line 315
    .local v18, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v18, :cond_a4

    .line 316
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    .line 317
    .local v5, activityInfo:Landroid/content/pm/ActivityInfo;
    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 318
    .local v20, title:Ljava/lang/String;
    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 320
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v20, :cond_a4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_a4

    if-eqz v10, :cond_a4

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v22, v0

    aget-object v21, v22, v12

    .line 322
    .local v21, tv:Landroid/widget/TextView;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    invoke-virtual {v11, v10}, Lcom/android/internal/policy/impl/IconUtilities;->createIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 324
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v10

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 325
    new-instance v19, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;-><init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V

    .line 326
    .local v19, tag:Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    move-object v0, v13

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->info:Landroid/app/ActivityManager$RecentTaskInfo;

    .line 327
    move-object v0, v14

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->intent:Landroid/content/Intent;

    .line 328
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 329
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setPressed(Z)V

    .line 331
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->clearFocus()V

    .line 332
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_a4

    .line 338
    .end local v5           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v13           #info:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v14           #intent:Landroid/content/Intent;
    .end local v18           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v19           #tag:Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    .end local v20           #title:Ljava/lang/String;
    .end local v21           #tv:Landroid/widget/TextView;
    :cond_138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mNoAppsText:Landroid/view/View;

    move-object/from16 v22, v0

    if-nez v12, :cond_15c

    const/16 v23, 0x0

    :goto_142
    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 341
    :goto_145
    const/16 v22, 0x8

    move v0, v12

    move/from16 v1, v22

    if-ge v0, v1, :cond_15f

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v22, v0

    aget-object v22, v22, v12

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    add-int/lit8 v12, v12, 0x1

    goto :goto_145

    .line 338
    :cond_15c
    const/16 v23, 0x8

    goto :goto_142

    .line 344
    :cond_15f
    return-void
.end method

.method private switchTo(Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;)V
    .registers 6
    .parameter "tag"

    .prologue
    .line 218
    iget-object v2, p1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->info:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ltz v2, :cond_1b

    .line 220
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 222
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v2, p1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->info:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 232
    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_1a
    :goto_1a
    return-void

    .line 223
    :cond_1b
    iget-object v2, p1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_1a

    .line 224
    iget-object v2, p1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->intent:Landroid/content/Intent;

    const v3, 0x104000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 227
    :try_start_27
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Landroid/content/ActivityNotFoundException; {:try_start_27 .. :try_end_30} :catch_31

    goto :goto_1a

    .line 228
    :catch_31
    move-exception v2

    move-object v1, v2

    .line 229
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Recent"

    const-string v3, "Unable to launch recent task"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    .local v0, arr$:[Landroid/widget/TextView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_13

    aget-object v1, v0, v2

    .line 208
    .local v1, b:Landroid/widget/TextView;
    if-ne v1, p1, :cond_17

    .line 209
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;

    .line 210
    .local v4, tag:Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->switchTo(Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;)V

    .line 214
    .end local v1           #b:Landroid/widget/TextView;
    .end local v4           #tag:Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->dismiss()V

    .line 215
    return-void

    .line 207
    .restart local v1       #b:Landroid/widget/TextView;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const/high16 v12, 0x2

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 89
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 93
    .local v2, context:Landroid/content/Context;
    sget-object v7, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    if-nez v7, :cond_1b

    .line 94
    const-string v7, "statusbar"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/StatusBarManager;

    sput-object v7, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    .line 97
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 98
    .local v6, window:Landroid/view/Window;
    invoke-virtual {v6, v10}, Landroid/view/Window;->requestFeature(I)Z

    .line 99
    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 100
    invoke-virtual {v6, v12, v12}, Landroid/view/Window;->setFlags(II)V

    .line 102
    const-string v7, "Recents"

    invoke-virtual {v6, v7}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    const v7, 0x1090072

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->setContentView(I)V

    .line 106
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 107
    .local v5, params:Landroid/view/WindowManager$LayoutParams;
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 108
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 109
    invoke-virtual {v6, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 110
    invoke-virtual {v6, v9, v11}, Landroid/view/Window;->setFlags(II)V

    .line 112
    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const v7, 0x10202a5

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v9

    .line 113
    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const v7, 0x1020019

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v10

    .line 114
    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const v7, 0x102001a

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v11

    .line 115
    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const/4 v9, 0x3

    const v7, 0x102001b

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v9

    .line 116
    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const/4 v9, 0x4

    const v7, 0x10202a6

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v9

    .line 117
    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const/4 v9, 0x5

    const v7, 0x10202a7

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v9

    .line 118
    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const/4 v9, 0x6

    const v7, 0x10202a8

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v9

    .line 119
    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const/4 v9, 0x7

    const v7, 0x10202a9

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v9

    .line 120
    const v7, 0x10202a4

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mNoAppsText:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    .local v0, arr$:[Landroid/widget/TextView;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_bd
    if-ge v3, v4, :cond_c7

    aget-object v1, v0, v3

    .line 123
    .local v1, b:Landroid/widget/TextView;
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_bd

    .line 125
    .end local v1           #b:Landroid/widget/TextView;
    :cond_c7
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    .line 140
    const/16 v6, 0x3d

    if-ne p1, v6, :cond_5f

    .line 144
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    .line 145
    .local v0, backward:Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    array-length v5, v6

    .line 146
    .local v5, numIcons:I
    const/4 v4, 0x0

    .line 147
    .local v4, numButtons:I
    :goto_d
    if-ge v4, v5, :cond_1c

    iget-object v6, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1c

    .line 148
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 150
    :cond_1c
    if-eqz v4, :cond_4f

    .line 151
    if-eqz v0, :cond_51

    sub-int v6, v4, v8

    move v3, v6

    .line 152
    .local v3, nextFocus:I
    :goto_23
    const/4 v2, 0x0

    .local v2, i:I
    :goto_24
    if-ge v2, v4, :cond_37

    .line 153
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/widget/TextView;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_59

    .line 154
    if-eqz v0, :cond_54

    .line 155
    add-int v6, v2, v4

    sub-int/2addr v6, v8

    rem-int v3, v6, v4

    .line 162
    :cond_37
    :goto_37
    if-eqz v0, :cond_5c

    move v1, v8

    .line 163
    .local v1, direction:I
    :goto_3a
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->requestFocus(I)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 164
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->playSoundEffect(I)V

    .end local v1           #direction:I
    .end local v2           #i:I
    .end local v3           #nextFocus:I
    :cond_4f
    move v6, v8

    .line 174
    .end local v0           #backward:Z
    .end local v4           #numButtons:I
    .end local v5           #numIcons:I
    :goto_50
    return v6

    .line 151
    .restart local v0       #backward:Z
    .restart local v4       #numButtons:I
    .restart local v5       #numIcons:I
    :cond_51
    const/4 v6, 0x0

    move v3, v6

    goto :goto_23

    .line 157
    .restart local v2       #i:I
    .restart local v3       #nextFocus:I
    :cond_54
    add-int/lit8 v6, v2, 0x1

    rem-int v3, v6, v4

    .line 159
    goto :goto_37

    .line 152
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 162
    :cond_5c
    const/4 v6, 0x2

    move v1, v6

    goto :goto_3a

    .line 174
    .end local v0           #backward:Z
    .end local v2           #i:I
    .end local v3           #nextFocus:I
    .end local v4           #numButtons:I
    .end local v5           #numIcons:I
    :cond_5f
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_50
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 179
    iget v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mHeldModifiers:I

    if-eqz v3, :cond_4b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mHeldModifiers:I

    and-int/2addr v3, v4

    if-nez v3, :cond_4b

    .line 180
    iget-object v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    array-length v1, v3

    .line 181
    .local v1, numIcons:I
    const/4 v2, 0x0

    .line 182
    .local v2, tag:Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    if-ge v0, v1, :cond_1e

    .line 183
    iget-object v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_28

    .line 193
    :cond_1e
    if-eqz v2, :cond_23

    .line 194
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->switchTo(Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;)V

    .line 196
    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->dismiss()V

    .line 197
    const/4 v3, 0x1

    .line 200
    .end local v0           #i:I
    .end local v1           #numIcons:I
    .end local v2           #tag:Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    :goto_27
    return v3

    .line 186
    .restart local v0       #i:I
    .restart local v1       #numIcons:I
    .restart local v2       #tag:Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    :cond_28
    if-eqz v0, :cond_34

    iget-object v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 187
    :cond_34
    iget-object v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #tag:Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    check-cast v2, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;

    .line 188
    .restart local v2       #tag:Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    iget-object v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 182
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 200
    .end local v0           #i:I
    .end local v1           #numIcons:I
    .end local v2           #tag:Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    :cond_4b
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_27
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 240
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->reloadButtons()V

    .line 241
    sget-object v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_11

    .line 242
    sget-object v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 246
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mCleanup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method

.method public onStop()V
    .registers 5

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 258
    sget-object v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_d

    .line 259
    sget-object v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 263
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mCleanup:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    return-void
.end method

.method public setHeldModifiers(I)V
    .registers 2
    .parameter "heldModifiers"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mHeldModifiers:I

    .line 136
    return-void
.end method
