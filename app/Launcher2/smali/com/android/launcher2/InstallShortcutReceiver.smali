.class public Lcom/android/launcher2/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# instance fields
.field private final mCoordinates:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    return-void
.end method

.method private static findEmptyCell(Landroid/content/Context;[II)Z
    .locals 13
    .parameter "context"
    .parameter "xy"
    .parameter "screen"

    .prologue
    .line 88
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v3

    .line 89
    .local v3, xCount:I
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v4

    .line 90
    .local v4, yCount:I
    filled-new-array {v3, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    .line 92
    .local v5, occupied:[[Z
    invoke-static {p0}, Lcom/android/launcher2/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    .line 93
    .local v6, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    const/4 v0, 0x0

    .line 95
    .local v0, item:Lcom/android/launcher2/ItemInfo;
    const/4 p0, 0x0

    .local p0, i:I
    move v1, p0

    .end local p0           #i:I
    .local v1, i:I
    move-object p0, v0

    .end local v0           #item:Lcom/android/launcher2/ItemInfo;
    .local p0, item:Lcom/android/launcher2/ItemInfo;
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p0

    .end local p0           #item:Lcom/android/launcher2/ItemInfo;
    if-ge v1, p0, :cond_2

    .line 96
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ItemInfo;

    .line 97
    .local v2, item:Lcom/android/launcher2/ItemInfo;
    iget p0, v2, Lcom/android/launcher2/ItemInfo;->screen:I

    if-ne p0, p2, :cond_1

    .line 98
    iget p0, v2, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 99
    .local p0, cellX:I
    iget v0, v2, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 100
    .local v0, cellY:I
    iget v7, v2, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 101
    .local v7, spanX:I
    iget v8, v2, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 102
    .local v8, spanY:I
    move v9, p0

    .local v9, x:I
    :goto_1
    add-int v10, p0, v7

    if-ge v9, v10, :cond_1

    if-ge v9, v3, :cond_1

    .line 103
    move v10, v0

    .local v10, y:I
    :goto_2
    add-int v11, v0, v8

    if-ge v10, v11, :cond_0

    if-ge v10, v4, :cond_0

    .line 104
    aget-object v11, v5, v9

    const/4 v12, 0x1

    aput-boolean v12, v11, v10

    .line 103
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 102
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 95
    .end local v0           #cellY:I
    .end local v7           #spanX:I
    .end local v8           #spanY:I
    .end local v9           #x:I
    .end local v10           #y:I
    .end local p0           #cellX:I
    :cond_1
    add-int/lit8 p0, v1, 0x1

    .end local v1           #i:I
    .local p0, i:I
    move v1, p0

    .end local p0           #i:I
    .restart local v1       #i:I
    move-object p0, v2

    .end local v2           #item:Lcom/android/launcher2/ItemInfo;
    .local p0, item:Lcom/android/launcher2/ItemInfo;
    goto :goto_0

    .line 110
    .end local p0           #item:Lcom/android/launcher2/ItemInfo;
    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    .end local v1           #i:I
    move-result p0

    return p0
.end method

.method private installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 12
    .parameter "context"
    .parameter "data"
    .parameter "screen"

    .prologue
    const/4 v6, 0x1

    const/4 v11, 0x0

    .line 54
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 56
    .local v10, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    invoke-static {p1, v0, p3}, Lcom/android/launcher2/InstallShortcutReceiver;->findEmptyCell(Landroid/content/Context;[II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 58
    .local v9, intent:Landroid/content/Intent;
    if-eqz v9, :cond_4

    .line 59
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    :cond_0
    const-string v0, "duplicate"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 66
    .local v8, duplicate:Z
    if-nez v8, :cond_1

    invoke-static {p1, v10, v9}, Lcom/android/launcher2/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/LauncherApplication;

    .line 68
    .local v7, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    aget v4, v1, v11

    iget-object v1, p0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    aget v5, v1, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;IIIZ)Lcom/android/launcher2/ShortcutInfo;

    .line 70
    const v0, 0x7f0e002a

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v10, v1, v11

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .end local v7           #app:Lcom/android/launcher2/LauncherApplication;
    :goto_0
    move v0, v6

    .line 84
    .end local v8           #duplicate:Z
    .end local v9           #intent:Landroid/content/Intent;
    :goto_1
    return v0

    .line 73
    .restart local v8       #duplicate:Z
    .restart local v9       #intent:Landroid/content/Intent;
    :cond_2
    const v0, 0x7f0e002c

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v10, v1, v11

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 80
    .end local v8           #duplicate:Z
    .end local v9           #intent:Landroid/content/Intent;
    :cond_3
    const v0, 0x7f0e0029

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4
    move v0, v11

    .line 84
    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "data"

    .prologue
    .line 39
    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    :cond_0
    return-void

    .line 43
    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getScreen()I

    move-result v1

    .line 45
    .local v1, screen:I
    invoke-direct {p0, p1, p2, v1}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 48
    if-eq v0, v1, :cond_2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
