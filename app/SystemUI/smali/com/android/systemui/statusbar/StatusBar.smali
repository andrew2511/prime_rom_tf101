.class public abstract Lcom/android/systemui/statusbar/StatusBar;
.super Lcom/android/systemui/SystemUI;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getStatusBarGravity()I
.end method

.method public abstract getStatusBarHeight()I
.end method

.method protected abstract makeStatusBarView()Landroid/view/View;
.end method

.method public start()V
    .locals 23

    .prologue
    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->makeStatusBarView()Landroid/view/View;

    move-result-object v21

    .line 67
    .local v21, sb:Landroid/view/View;
    new-instance v7, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v7}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 68
    .local v7, iconList:Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v8, notificationKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v9, notifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    new-instance v5, Lcom/android/systemui/statusbar/CommandQueue;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 71
    const-string v5, "statusbar"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 73
    const/4 v5, 0x7

    new-array v10, v5, [I

    .line 74
    .local v10, switches:[I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v11, binders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object v6, v0

    invoke-interface/range {v5 .. v11}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;[ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    const/4 v5, 0x0

    aget v5, v10, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBar;->disable(I)V

    .line 83
    const/4 v5, 0x1

    aget v5, v10, v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBar;->setLightsOn(Z)V

    .line 84
    const/4 v5, 0x2

    aget v5, v10, v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBar;->topAppWindowChanged(Z)V

    .line 86
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    const/4 v6, 0x3

    aget v6, v10, v6

    const/4 v11, 0x4

    aget v11, v10, v11

    .end local v11           #binders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBar;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 87
    const/4 v5, 0x5

    aget v5, v10, v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_3
    const/4 v6, 0x6

    aget v6, v10, v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBar;->setHardKeyboardStatus(ZZ)V

    .line 90
    invoke-virtual {v7}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v18

    .line 91
    .local v18, N:I
    const/16 v22, 0x0

    .line 92
    .local v22, viewIndex:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 93
    move-object v0, v7

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v20

    .line 94
    .local v20, icon:Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v20, :cond_0

    .line 95
    move-object v0, v7

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v19

    move/from16 v3, v22

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBar;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 96
    add-int/lit8 v22, v22, 0x1

    .line 92
    :cond_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 83
    .end local v18           #N:I
    .end local v19           #i:I
    .end local v20           #icon:Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v22           #viewIndex:I
    .restart local v11       #binders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 84
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 87
    .end local v11           #binders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    .line 101
    .restart local v18       #N:I
    .restart local v19       #i:I
    .restart local v22       #viewIndex:I
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 102
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v18

    move v1, v5

    if-ne v0, v1, :cond_6

    .line 103
    const/16 v19, 0x0

    :goto_6
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 104
    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    move-object v0, v9

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBar;->addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 103
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 107
    :cond_6
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notification list length mismatch: keys="

    .end local v7           #iconList:Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " notifications="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->getStatusBarHeight()I

    move-result v14

    .line 114
    .local v14, height:I
    new-instance v12, Landroid/view/WindowManager$LayoutParams;

    const/4 v13, -0x1

    const/16 v15, 0x7d0

    const v16, 0x800048

    const/16 v17, 0x2

    invoke-direct/range {v12 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 122
    .local v12, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->getStatusBarGravity()I

    move-result v5

    iput v5, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 123
    const-string v5, "StatusBar"

    invoke-virtual {v12, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v5, Lcom/android/systemui/statusbar/DoNotDisturb;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBar;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/systemui/statusbar/DoNotDisturb;-><init>(Landroid/content/Context;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/StatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBar;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v6, "storage"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/StatusBar;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBar;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object v5, v0

    new-instance v6, Lcom/android/systemui/usb/ExternalStorageNotification;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBar;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/android/systemui/usb/ExternalStorageNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 143
    return-void

    .line 78
    .end local v12           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v14           #height:I
    .end local v18           #N:I
    .end local v19           #i:I
    .end local v22           #viewIndex:I
    .restart local v7       #iconList:Lcom/android/internal/statusbar/StatusBarIconList;
    .restart local v11       #binders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method
