.class Lcom/android/launcher2/LauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsLaunching:Z

.field private mLoadAndBindStepFinished:Z

.field private mStopped:Z

.field private mWaitThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 545
    iput-boolean p3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    .line 546
    return-void
.end method

.method static synthetic access$102(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 536
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    return p1
.end method

.method private bindWorkspace()V
    .locals 11

    .prologue
    .line 1030
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1034
    .local v6, t:J
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v9}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1035
    .local v4, oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-nez v4, :cond_0

    .line 1037
    const-string v9, "Launcher.Model"

    const-string v10, "LoaderTask running with no launcher"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :goto_0
    return-void

    .line 1043
    :cond_0
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v9}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/android/launcher2/LauncherModel$LoaderTask$4;

    invoke-direct {v10, p0, v4}, Lcom/android/launcher2/LauncherModel$LoaderTask$4;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1052
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v9, v9, Lcom/android/launcher2/LauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1053
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 1054
    move v5, v3

    .line 1055
    .local v5, start:I
    add-int/lit8 v9, v3, 0x6

    if-gt v9, v0, :cond_1

    const/4 v9, 0x6

    move v1, v9

    .line 1056
    .local v1, chunkSize:I
    :goto_2
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v9}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/android/launcher2/LauncherModel$LoaderTask$5;

    invoke-direct {v10, p0, v4, v5, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask$5;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;II)V

    invoke-virtual {v9, v10}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1053
    add-int/lit8 v3, v3, 0x6

    goto :goto_1

    .line 1055
    .end local v1           #chunkSize:I
    :cond_1
    sub-int v9, v0, v3

    move v1, v9

    goto :goto_2

    .line 1065
    .end local v5           #start:I
    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v9}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/android/launcher2/LauncherModel$LoaderTask$6;

    invoke-direct {v10, p0, v4}, Lcom/android/launcher2/LauncherModel$LoaderTask$6;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1074
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v9}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/android/launcher2/LauncherModel$LoaderTask$7;

    invoke-direct {v10, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$7;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v9, v10}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1086
    invoke-interface {v4}, Lcom/android/launcher2/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v2

    .line 1087
    .local v2, currentScreen:I
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v9, v9, Lcom/android/launcher2/LauncherModel;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1089
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_4

    .line 1090
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v9, v9, Lcom/android/launcher2/LauncherModel;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 1091
    .local v8, widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    iget v9, v8, Lcom/android/launcher2/LauncherAppWidgetInfo;->screen:I

    if-ne v9, v2, :cond_3

    .line 1092
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v9}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/android/launcher2/LauncherModel$LoaderTask$8;

    invoke-direct {v10, p0, v4, v8}, Lcom/android/launcher2/LauncherModel$LoaderTask$8;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    invoke-virtual {v9, v10}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1089
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1103
    .end local v8           #widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_6

    .line 1104
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v9, v9, Lcom/android/launcher2/LauncherModel;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 1105
    .restart local v8       #widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    iget v9, v8, Lcom/android/launcher2/LauncherAppWidgetInfo;->screen:I

    if-eq v9, v2, :cond_5

    .line 1106
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v9}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/android/launcher2/LauncherModel$LoaderTask$9;

    invoke-direct {v10, p0, v4, v8}, Lcom/android/launcher2/LauncherModel$LoaderTask$9;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    invoke-virtual {v9, v10}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1103
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1117
    .end local v8           #widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    :cond_6
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v9}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/android/launcher2/LauncherModel$LoaderTask$10;

    invoke-direct {v10, p0, v4}, Lcom/android/launcher2/LauncherModel$LoaderTask$10;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1126
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v9}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/android/launcher2/LauncherModel$LoaderTask$11;

    invoke-direct {v10, p0, v6, v7}, Lcom/android/launcher2/LauncherModel$LoaderTask$11;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;J)V

    invoke-virtual {v9, v10}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private checkItemPlacement([[[Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)Z
    .locals 7
    .parameter "occupied"
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 719
    iget-wide v2, p2, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v2, v6

    .line 739
    :goto_0
    return v2

    .line 722
    :cond_0
    iget v0, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    .local v0, x:I
    :goto_1
    iget v2, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v3, p2, Lcom/android/launcher2/ItemInfo;->spanX:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_3

    .line 723
    iget v1, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    .local v1, y:I
    :goto_2
    iget v2, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    iget v3, p2, Lcom/android/launcher2/ItemInfo;->spanY:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 724
    iget v2, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    aget-object v2, p1, v2

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 725
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading shortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " into cell ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") occupied by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    aget-object v4, p1, v4

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v2, 0x0

    goto :goto_0

    .line 723
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 722
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 734
    .end local v1           #y:I
    :cond_3
    iget v0, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    :goto_3
    iget v2, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v3, p2, Lcom/android/launcher2/ItemInfo;->spanX:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_5

    .line 735
    iget v1, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    .restart local v1       #y:I
    :goto_4
    iget v2, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    iget v3, p2, Lcom/android/launcher2/ItemInfo;->spanY:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_4

    .line 736
    iget v2, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    aget-object v2, p1, v2

    aget-object v2, v2, v0

    aput-object p2, v2, v1

    .line 735
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 734
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v1           #y:I
    :cond_5
    move v2, v6

    .line 739
    goto/16 :goto_0
.end method

.method private loadAllAppsByBatch()V
    .locals 28

    .prologue
    .line 1179
    const-wide/16 v21, 0x0

    .line 1183
    .local v21, t:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1184
    .local v14, oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-nez v14, :cond_1

    .line 1186
    const-string v25, "Launcher.Model"

    const-string v26, "LoaderTask running with no launcher (loadAllAppsByBatch)"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_0
    return-void

    .line 1190
    :cond_1
    new-instance v13, Landroid/content/Intent;

    const-string v25, "android.intent.action.MAIN"

    const/16 v26, 0x0

    move-object v0, v13

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1191
    .local v13, mainIntent:Landroid/content/Intent;
    const-string v25, "android.intent.category.LAUNCHER"

    move-object v0, v13

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1194
    .local v15, packageManager:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 1196
    .local v7, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v5, 0x7fffffff

    .line 1199
    .local v5, N:I
    const/4 v11, 0x0

    .line 1200
    .local v11, i:I
    const/4 v8, -0x1

    .line 1201
    .local v8, batchSize:I
    :cond_2
    :goto_0
    if-ge v11, v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 1202
    if-nez v11, :cond_3

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/AllAppsList;->clear()V

    .line 1204
    const-wide/16 v16, 0x0

    .line 1205
    .local v16, qiaTime:J
    const/16 v25, 0x0

    move-object v0, v15

    move-object v1, v13

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 1210
    if-eqz v7, :cond_0

    .line 1213
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 1217
    if-eqz v5, :cond_0

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher2/LauncherModel;->access$1400(Lcom/android/launcher2/LauncherModel;)I

    move-result v25

    if-nez v25, :cond_4

    .line 1222
    move v8, v5

    .line 1227
    :goto_1
    const-wide/16 v18, 0x0

    .line 1228
    .local v18, sortTime:J
    new-instance v25, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    move-object/from16 v0, v25

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1236
    .end local v16           #qiaTime:J
    .end local v18           #sortTime:J
    :cond_3
    const-wide/16 v23, 0x0

    .line 1238
    .local v23, t2:J
    move/from16 v20, v11

    .line 1239
    .local v20, startIndex:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_2
    if-ge v11, v5, :cond_5

    if-ge v12, v8, :cond_5

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v25

    new-instance v26, Lcom/android/launcher2/ApplicationInfo;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/IconCache;

    move-result-object v27

    move-object/from16 v0, v26

    move-object v1, v15

    move-object v2, v6

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/ApplicationInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher2/IconCache;)V

    invoke-virtual/range {v25 .. v26}, Lcom/android/launcher2/AllAppsList;->add(Lcom/android/launcher2/ApplicationInfo;)V

    .line 1242
    add-int/lit8 v11, v11, 0x1

    .line 1239
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1224
    .end local v12           #j:I
    .end local v20           #startIndex:I
    .end local v23           #t2:J
    .restart local v16       #qiaTime:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher2/LauncherModel;->access$1400(Lcom/android/launcher2/LauncherModel;)I

    move-result v8

    goto :goto_1

    .line 1245
    .end local v16           #qiaTime:J
    .restart local v12       #j:I
    .restart local v20       #startIndex:I
    .restart local v23       #t2:J
    :cond_5
    if-gt v11, v8, :cond_6

    const/16 v25, 0x1

    move/from16 v10, v25

    .line 1246
    .local v10, first:Z
    :goto_3
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v9

    .line 1247
    .local v9, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    move-object v6, v0

    .line 1248
    .local v6, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v25

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v25

    new-instance v26, Lcom/android/launcher2/LauncherModel$LoaderTask$13;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object v2, v9

    move v3, v10

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherModel$LoaderTask$13;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;ZLjava/util/ArrayList;)V

    invoke-virtual/range {v25 .. v26}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher2/LauncherModel;->access$1600(Lcom/android/launcher2/LauncherModel;)I

    move-result v25

    if-lez v25, :cond_2

    if-ge v11, v5, :cond_2

    .line 1279
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher2/LauncherModel;->access$1600(Lcom/android/launcher2/LauncherModel;)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1280
    :catch_0
    move-exception v25

    goto/16 :goto_0

    .line 1245
    .end local v6           #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .end local v9           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    .end local v10           #first:Z
    :cond_6
    const/16 v25, 0x0

    move/from16 v10, v25

    goto :goto_3
.end method

.method private loadAndBindAllApps()V
    .locals 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1141
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAllAppsByBatch()V

    .line 1142
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 1149
    :goto_0
    return-void

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->access$1202(Lcom/android/launcher2/LauncherModel;Z)Z

    goto :goto_0

    .line 1147
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->onlyBindAllApps()V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 2

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadWorkspace()V

    .line 563
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 571
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->access$002(Lcom/android/launcher2/LauncherModel;Z)Z

    .line 570
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspace()V

    goto :goto_0
.end method

.method private loadWorkspace()V
    .locals 60

    .prologue
    .line 743
    const-wide/16 v55, 0x0

    .line 745
    .local v55, t:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object v15, v0

    .line 746
    .local v15, context:Landroid/content/Context;
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 747
    .local v5, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v48

    .line 748
    .local v48, manager:Landroid/content/pm/PackageManager;
    invoke-static {v15}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v59

    .line 749
    .local v59, widgets:Landroid/appwidget/AppWidgetManager;
    invoke-virtual/range {v48 .. v48}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v44

    .line 751
    .local v44, isSafeMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/launcher2/LauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/launcher2/LauncherModel;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/launcher2/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 755
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v47, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v6, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 760
    .local v10, c:Landroid/database/Cursor;
    const/4 v6, 0x5

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$600()I

    move-result v7

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$700()I

    move-result v8

    filled-new-array {v6, v7, v8}, [I

    move-result-object v6

    const-class v7, Lcom/android/launcher2/ItemInfo;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, [[[Lcom/android/launcher2/ItemInfo;

    .line 764
    .local v49, occupied:[[[Lcom/android/launcher2/ItemInfo;
    :try_start_0
    const-string v6, "_id"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 765
    .local v40, idIndex:I
    const-string v6, "intent"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 767
    .local v43, intentIndex:I
    const-string v6, "title"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 769
    .local v12, titleIndex:I
    const-string v6, "iconType"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 771
    .local v16, iconTypeIndex:I
    const-string v6, "icon"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 772
    .local v11, iconIndex:I
    const-string v6, "iconPackage"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 774
    .local v17, iconPackageIndex:I
    const-string v6, "iconResource"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 776
    .local v18, iconResourceIndex:I
    const-string v6, "container"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 778
    .local v33, containerIndex:I
    const-string v6, "itemType"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 780
    .local v46, itemTypeIndex:I
    const-string v6, "appWidgetId"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 782
    .local v27, appWidgetIdIndex:I
    const-string v6, "screen"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v52

    .line 784
    .local v52, screenIndex:I
    const-string v6, "cellX"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 786
    .local v29, cellXIndex:I
    const-string v6, "cellY"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 788
    .local v30, cellYIndex:I
    const-string v6, "spanX"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v53

    .line 790
    .local v53, spanXIndex:I
    const-string v6, "spanY"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v54

    .line 792
    .local v54, spanYIndex:I
    const-string v6, "uri"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v58

    .line 793
    .local v58, uriIndex:I
    const-string v6, "displayMode"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 803
    .local v34, displayModeIndex:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    move v6, v0

    if-nez v6, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_8

    .line 805
    :try_start_1
    move-object v0, v10

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    .line 807
    .local v45, itemType:I
    packed-switch v45, :pswitch_data_0

    goto :goto_0

    .line 810
    :pswitch_0
    move-object v0, v10

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v42

    .line 812
    .local v42, intentDescription:Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_2
    move-object/from16 v0, v42

    move v1, v6

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 817
    .local v8, intent:Landroid/content/Intent;
    if-nez v45, :cond_1

    .line 818
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object v6, v0

    move-object/from16 v7, v48

    move-object v9, v15

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v41

    .line 826
    .local v41, info:Lcom/android/launcher2/ShortcutInfo;
    :goto_1
    if-eqz v41, :cond_2

    .line 827
    move-object v0, v8

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 828
    move-object v0, v10

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-wide v0, v6

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/launcher2/ShortcutInfo;->id:J

    .line 829
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 830
    .local v32, container:I
    move/from16 v0, v32

    int-to-long v0, v0

    move-wide v6, v0

    move-wide v0, v6

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/launcher2/ShortcutInfo;->container:J

    .line 831
    move-object v0, v10

    move/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v41

    iput v0, v1, Lcom/android/launcher2/ShortcutInfo;->screen:I

    .line 832
    move-object v0, v10

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v41

    iput v0, v1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 833
    move-object v0, v10

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v41

    iput v0, v1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    .line 836
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 840
    packed-switch v32, :pswitch_data_1

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/launcher2/LauncherModel;->mFolders:Ljava/util/HashMap;

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Lcom/android/launcher2/LauncherModel;->access$900(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;

    move-result-object v36

    .line 848
    .local v36, folderInfo:Lcom/android/launcher2/UserFolderInfo;
    move-object/from16 v0, v36

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/launcher2/UserFolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    .line 854
    .end local v36           #folderInfo:Lcom/android/launcher2/UserFolderInfo;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v15

    move-object/from16 v2, v41

    move-object v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/ShortcutInfo;Landroid/database/Cursor;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 982
    .end local v8           #intent:Landroid/content/Intent;
    .end local v32           #container:I
    .end local v41           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v42           #intentDescription:Ljava/lang/String;
    .end local v45           #itemType:I
    :catch_0
    move-exception v6

    move-object/from16 v35, v6

    .line 983
    .local v35, e:Ljava/lang/Exception;
    :try_start_4
    const-string v6, "Launcher.Model"

    const-string v7, "Desktop items loading interrupted:"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 987
    .end local v11           #iconIndex:I
    .end local v12           #titleIndex:I
    .end local v16           #iconTypeIndex:I
    .end local v17           #iconPackageIndex:I
    .end local v18           #iconResourceIndex:I
    .end local v27           #appWidgetIdIndex:I
    .end local v29           #cellXIndex:I
    .end local v30           #cellYIndex:I
    .end local v33           #containerIndex:I
    .end local v34           #displayModeIndex:I
    .end local v35           #e:Ljava/lang/Exception;
    .end local v40           #idIndex:I
    .end local v43           #intentIndex:I
    .end local v46           #itemTypeIndex:I
    .end local v52           #screenIndex:I
    .end local v53           #spanXIndex:I
    .end local v54           #spanYIndex:I
    .end local v58           #uriIndex:I
    :catchall_0
    move-exception v6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v6

    .line 813
    .restart local v11       #iconIndex:I
    .restart local v12       #titleIndex:I
    .restart local v16       #iconTypeIndex:I
    .restart local v17       #iconPackageIndex:I
    .restart local v18       #iconResourceIndex:I
    .restart local v27       #appWidgetIdIndex:I
    .restart local v29       #cellXIndex:I
    .restart local v30       #cellYIndex:I
    .restart local v33       #containerIndex:I
    .restart local v34       #displayModeIndex:I
    .restart local v40       #idIndex:I
    .restart local v42       #intentDescription:Ljava/lang/String;
    .restart local v43       #intentIndex:I
    .restart local v45       #itemType:I
    .restart local v46       #itemTypeIndex:I
    .restart local v52       #screenIndex:I
    .restart local v53       #spanXIndex:I
    .restart local v54       #spanYIndex:I
    .restart local v58       #uriIndex:I
    :catch_1
    move-exception v35

    .local v35, e:Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 821
    .end local v35           #e:Ljava/net/URISyntaxException;
    .restart local v8       #intent:Landroid/content/Intent;
    :cond_1
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object v13, v0

    move-object v14, v10

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-static/range {v13 .. v20}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v41

    .restart local v41       #info:Lcom/android/launcher2/ShortcutInfo;
    goto/16 :goto_1

    .line 842
    .restart local v32       #container:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/launcher2/LauncherModel;->mItems:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 860
    .end local v32           #container:I
    :cond_2
    move-object v0, v10

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 861
    .local v38, id:J
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading shortcut "

    .end local v8           #intent:Landroid/content/Intent;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", removing it"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/4 v6, 0x0

    move-wide/from16 v0, v38

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 868
    .end local v38           #id:J
    .end local v41           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v42           #intentDescription:Ljava/lang/String;
    :pswitch_2
    move-object v0, v10

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 869
    .restart local v38       #id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/launcher2/LauncherModel;->mFolders:Ljava/util/HashMap;

    move-object v0, v6

    move-wide/from16 v1, v38

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherModel;->access$900(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;

    move-result-object v36

    .line 871
    .restart local v36       #folderInfo:Lcom/android/launcher2/UserFolderInfo;
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/launcher2/UserFolderInfo;->title:Ljava/lang/CharSequence;

    .line 872
    move-wide/from16 v0, v38

    move-object/from16 v2, v36

    iput-wide v0, v2, Lcom/android/launcher2/UserFolderInfo;->id:J

    .line 873
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 874
    .restart local v32       #container:I
    move/from16 v0, v32

    int-to-long v0, v0

    move-wide v6, v0

    move-wide v0, v6

    move-object/from16 v2, v36

    iput-wide v0, v2, Lcom/android/launcher2/UserFolderInfo;->container:J

    .line 875
    move-object v0, v10

    move/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/launcher2/UserFolderInfo;->screen:I

    .line 876
    move-object v0, v10

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/launcher2/UserFolderInfo;->cellX:I

    .line 877
    move-object v0, v10

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/launcher2/UserFolderInfo;->cellY:I

    .line 880
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 883
    packed-switch v32, :pswitch_data_2

    .line 889
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/launcher2/LauncherModel;->mFolders:Ljava/util/HashMap;

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/android/launcher2/UserFolderInfo;->id:J

    move-wide v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 885
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/launcher2/LauncherModel;->mItems:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 893
    .end local v32           #container:I
    .end local v36           #folderInfo:Lcom/android/launcher2/UserFolderInfo;
    .end local v38           #id:J
    :pswitch_4
    move-object v0, v10

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 894
    .restart local v38       #id:J
    move-object v0, v10

    move/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v57

    .line 897
    .local v57, uri:Landroid/net/Uri;
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual/range {v57 .. v57}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v51

    .line 901
    .local v51, providerInfo:Landroid/content/pm/ProviderInfo;
    if-nez v51, :cond_3

    if-nez v44, :cond_3

    .line 902
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v47

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 904
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/launcher2/LauncherModel;->mFolders:Ljava/util/HashMap;

    move-object v0, v6

    move-wide/from16 v1, v38

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherModel;->access$1000(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;

    move-result-object v25

    .line 905
    .local v25, liveFolderInfo:Lcom/android/launcher2/LiveFolderInfo;
    move-object v0, v10

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v42

    .line 906
    .restart local v42       #intentDescription:Ljava/lang/String;
    const/4 v8, 0x0

    .line 907
    .restart local v8       #intent:Landroid/content/Intent;
    if-eqz v42, :cond_4

    .line 909
    const/4 v6, 0x0

    :try_start_6
    move-object/from16 v0, v42

    move v1, v6

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v8

    .line 915
    :cond_4
    :goto_4
    :try_start_7
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/launcher2/LiveFolderInfo;->title:Ljava/lang/CharSequence;

    .line 916
    move-wide/from16 v0, v38

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/launcher2/LiveFolderInfo;->id:J

    .line 917
    move-object/from16 v0, v57

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/launcher2/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 918
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 919
    .restart local v32       #container:I
    move/from16 v0, v32

    int-to-long v0, v0

    move-wide v6, v0

    move-wide v0, v6

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/launcher2/LiveFolderInfo;->container:J

    .line 920
    move-object v0, v10

    move/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/launcher2/LiveFolderInfo;->screen:I

    .line 921
    move-object v0, v10

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/launcher2/LiveFolderInfo;->cellX:I

    .line 922
    move-object v0, v10

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/launcher2/LiveFolderInfo;->cellY:I

    .line 923
    move-object v0, v8

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/launcher2/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 924
    move-object v0, v10

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/launcher2/LiveFolderInfo;->displayMode:I

    .line 927
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    move-object/from16 v20, v15

    move-object/from16 v21, v10

    move/from16 v22, v16

    move/from16 v23, v17

    move/from16 v24, v18

    invoke-static/range {v19 .. v25}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Landroid/database/Cursor;IIILcom/android/launcher2/LiveFolderInfo;)V

    .line 934
    packed-switch v32, :pswitch_data_3

    .line 939
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/launcher2/LauncherModel;->mFolders:Ljava/util/HashMap;

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/launcher2/LiveFolderInfo;->id:J

    move-wide v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 936
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/launcher2/LauncherModel;->mItems:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 945
    .end local v8           #intent:Landroid/content/Intent;
    .end local v25           #liveFolderInfo:Lcom/android/launcher2/LiveFolderInfo;
    .end local v32           #container:I
    .end local v38           #id:J
    .end local v42           #intentDescription:Ljava/lang/String;
    .end local v51           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v57           #uri:Landroid/net/Uri;
    :pswitch_6
    move-object v0, v10

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 946
    .local v26, appWidgetId:I
    move-object v0, v10

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 948
    .restart local v38       #id:J
    move-object/from16 v0, v59

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v50

    .line 951
    .local v50, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v44, :cond_6

    if-eqz v50, :cond_5

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object v6, v0

    if-eqz v6, :cond_5

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    .line 953
    :cond_5
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " appWidgetId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v47

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 957
    :cond_6
    new-instance v28, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherAppWidgetInfo;-><init>(I)V

    .line 958
    .local v28, appWidgetInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    move-wide/from16 v0, v38

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/launcher2/LauncherAppWidgetInfo;->id:J

    .line 959
    move-object v0, v10

    move/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->screen:I

    .line 960
    move-object v0, v10

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellX:I

    .line 961
    move-object v0, v10

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellY:I

    .line 962
    move-object v0, v10

    move/from16 v1, v53

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    .line 963
    move-object v0, v10

    move/from16 v1, v54

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    .line 965
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 966
    .restart local v32       #container:I
    const/16 v6, -0x64

    move/from16 v0, v32

    move v1, v6

    if-eq v0, v1, :cond_7

    .line 967
    const-string v6, "Launcher.Model"

    const-string v7, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 971
    :cond_7
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    move-wide v0, v6

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/launcher2/LauncherAppWidgetInfo;->container:J

    .line 974
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/launcher2/LauncherModel;->mAppWidgets:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 987
    .end local v26           #appWidgetId:I
    .end local v28           #appWidgetInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    .end local v32           #container:I
    .end local v38           #id:J
    .end local v45           #itemType:I
    .end local v50           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 990
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 991
    sget-object v6, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v31

    .line 994
    .local v31, client:Landroid/content/ContentProviderClient;
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .end local p0
    .local v37, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v38

    .line 1000
    .restart local v38       #id:J
    const/4 v6, 0x0

    :try_start_8
    move-wide/from16 v0, v38

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v31

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    .line 1002
    :catch_2
    move-exception v6

    move-object/from16 v35, v6

    .line 1003
    .local v35, e:Landroid/os/RemoteException;
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not remove id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 910
    .end local v31           #client:Landroid/content/ContentProviderClient;
    .end local v35           #e:Landroid/os/RemoteException;
    .end local v37           #i$:Ljava/util/Iterator;
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v25       #liveFolderInfo:Lcom/android/launcher2/LiveFolderInfo;
    .restart local v42       #intentDescription:Ljava/lang/String;
    .restart local v45       #itemType:I
    .restart local v51       #providerInfo:Landroid/content/pm/ProviderInfo;
    .restart local v57       #uri:Landroid/net/Uri;
    .restart local p0
    :catch_3
    move-exception v6

    goto/16 :goto_4

    .line 1024
    .end local v8           #intent:Landroid/content/Intent;
    .end local v25           #liveFolderInfo:Lcom/android/launcher2/LiveFolderInfo;
    .end local v38           #id:J
    .end local v42           #intentDescription:Ljava/lang/String;
    .end local v45           #itemType:I
    .end local v51           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v57           #uri:Landroid/net/Uri;
    .end local p0
    :cond_9
    return-void

    .line 807
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 840
    :pswitch_data_1
    .packed-switch -0x64
        :pswitch_1
    .end packed-switch

    .line 883
    :pswitch_data_2
    .packed-switch -0x64
        :pswitch_3
    .end packed-switch

    .line 934
    :pswitch_data_3
    .packed-switch -0x64
        :pswitch_5
    .end packed-switch
.end method

.method private onlyBindAllApps()V
    .locals 4

    .prologue
    .line 1152
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1153
    .local v1, oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-nez v1, :cond_0

    .line 1155
    const-string v2, "Launcher.Model"

    const-string v3, "LoaderTask running with no launcher (onlyBindAllApps)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :goto_0
    return-void

    .line 1160
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1162
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/LauncherModel$LoaderTask$12;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask$12;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private waitForIdle()V
    .locals 4

    .prologue
    .line 577
    monitor-enter p0

    .line 578
    const-wide/16 v0, 0x0

    .line 580
    .local v0, workspaceWaitTime:J
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/LauncherModel$LoaderTask$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$1;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 592
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 594
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 595
    :catch_0
    move-exception v2

    goto :goto_0

    .line 604
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 605
    return-void

    .line 604
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    .prologue
    .line 1292
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mWaitThread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mWaitThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mIsLaunching="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mLoadAndBindStepFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    return-void
.end method

.method isLaunching()Z
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 611
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 612
    .local v0, cbk:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->isAllAppsVisible()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v3

    .line 617
    .local v1, loadWorkspaceFirst:Z
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 618
    :try_start_0
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 620
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    if-eqz v1, :cond_4

    .line 623
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    .line 629
    :goto_2
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v2, :cond_5

    .line 654
    :goto_3
    iput-object v6, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 656
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 658
    :try_start_1
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherModel$LoaderTask;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 659
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherModel;->access$502(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 661
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 665
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v2, :cond_8

    .line 666
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/LauncherModel$LoaderTask$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$2;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 678
    :goto_4
    return-void

    .end local v1           #loadWorkspaceFirst:Z
    :cond_1
    move v1, v4

    .line 612
    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    .restart local v1       #loadWorkspaceFirst:Z
    :cond_3
    move v3, v5

    .line 618
    goto :goto_1

    .line 620
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 626
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    goto :goto_2

    .line 635
    :cond_5
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 636
    :try_start_3
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_6

    .line 637
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 639
    :cond_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 640
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->waitForIdle()V

    .line 643
    if-eqz v1, :cond_7

    .line 645
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    goto :goto_3

    .line 639
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 648
    :cond_7
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    goto :goto_3

    .line 661
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 672
    :cond_8
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/LauncherModel$LoaderTask$3;

    invoke-direct {v3, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$3;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 681
    monitor-enter p0

    .line 682
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    .line 683
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 684
    monitor-exit p0

    .line 685
    return-void

    .line 684
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 5
    .parameter "oldCallbacks"

    .prologue
    const/4 v4, 0x0

    .line 695
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 696
    :try_start_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v2, :cond_0

    .line 697
    monitor-exit v1

    move-object v1, v4

    .line 713
    :goto_0
    return-object v1

    .line 700
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_1

    .line 701
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 704
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 705
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 706
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 708
    :cond_2
    if-nez v0, :cond_3

    .line 709
    const-string v2, "Launcher.Model"

    const-string v3, "no mCallbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 713
    :cond_3
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .line 714
    .end local v0           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
