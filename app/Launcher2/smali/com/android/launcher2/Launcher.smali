.class public final Lcom/android/launcher2/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/LauncherModel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Launcher$22;,
        Lcom/android/launcher2/Launcher$AppWidgetResetObserver;,
        Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/android/launcher2/Launcher$CreateShortcut;,
        Lcom/android/launcher2/Launcher$RenameFolder;,
        Lcom/android/launcher2/Launcher$PreviewTouchHandler;,
        Lcom/android/launcher2/Launcher$LocaleConfiguration;,
        Lcom/android/launcher2/Launcher$PendingAddArguments;,
        Lcom/android/launcher2/Launcher$State;
    }
.end annotation


# static fields
.field private static sAppMarketIcon:Landroid/graphics/drawable/Drawable$ConstantState;

.field private static sFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalSearchIcon:Landroid/graphics/drawable/Drawable$ConstantState;

.field private static sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

.field private static final sLock:Ljava/lang/Object;

.field private static sPendingAddList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Launcher$PendingAddArguments;",
            ">;"
        }
    .end annotation
.end field

.field private static sScreen:I

.field private static sVoiceSearchIcon:Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field private final ADVANCE_MSG:I

.field private mAddDropPosition:[I

.field private mAddIntersectCellX:I

.field private mAddIntersectCellY:I

.field private mAddScreen:I

.field private final mAdvanceInterval:I

.field private final mAdvanceStagger:I

.field private mAllAppsButton:Landroid/view/View;

.field private mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

.field private mAllAppsPagedView:Lcom/android/launcher2/AllAppsPagedView;

.field private mAppMarketIntent:Landroid/content/Intent;

.field private mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAttached:Z

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mButtonCluster:Landroid/view/View;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigureButton:Landroid/view/View;

.field private mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDeleteZone:Lcom/android/launcher2/DeleteZone;

.field private mDesktopItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDivider:Landroid/view/View;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mFolderInfo:Lcom/android/launcher2/FolderInfo;

.field private mHandleView:Lcom/android/launcher2/HandleView;

.field private final mHandler:Landroid/os/Handler;

.field private mHomeCustomizationDrawer:Lcom/android/launcher2/CustomizeTrayTabHost;

.field private mHotseatConfig:[Ljava/lang/String;

.field private mHotseatIcons:[Landroid/graphics/drawable/Drawable;

.field private mHotseatLabels:[Ljava/lang/CharSequence;

.field private mHotseats:[Landroid/content/Intent;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mNextView:Landroid/widget/ImageView;

.field private mOnResumeNeedsLoad:Z

.field private mPaused:Z

.field private mPreviousView:Landroid/widget/ImageView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRestoreScreenOrientationDelay:I

.field private mRestoring:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mState:Lcom/android/launcher2/Launcher$State;

.field private mStateAnimation:Landroid/animation/AnimatorSet;

.field private mTmpAddItemCellCoordinates:[I

.field private mUserPresent:Z

.field private mVisibility:Z

.field private mVisible:Z

.field private mWaitingForResult:Z

.field private mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private mWorkspaceLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sLock:Ljava/lang/Object;

    .line 179
    const/4 v0, 0x2

    sput v0, Lcom/android/launcher2/Launcher;->sScreen:I

    .line 235
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 173
    sget-object v0, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 181
    new-instance v0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    new-instance v0, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 193
    iput v4, p0, Lcom/android/launcher2/Launcher;->mAddScreen:I

    .line 194
    iput v4, p0, Lcom/android/launcher2/Launcher;->mAddIntersectCellX:I

    .line 195
    iput v4, p0, Lcom/android/launcher2/Launcher;->mAddIntersectCellY:I

    .line 197
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 205
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceRunning:Z

    .line 206
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mVisibility:Z

    .line 213
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mAllAppsPagedView:Lcom/android/launcher2/AllAppsPagedView;

    .line 214
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    .line 218
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 220
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 222
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 231
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    .line 232
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 233
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    .line 246
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseatConfig:[Ljava/lang/String;

    .line 247
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseats:[Landroid/content/Intent;

    .line 248
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseatIcons:[Landroid/graphics/drawable/Drawable;

    .line 249
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseatLabels:[Ljava/lang/CharSequence;

    .line 251
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 254
    iput v3, p0, Lcom/android/launcher2/Launcher;->ADVANCE_MSG:I

    .line 255
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/launcher2/Launcher;->mAdvanceInterval:I

    .line 256
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/launcher2/Launcher;->mAdvanceStagger:I

    .line 258
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    .line 264
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/launcher2/Launcher;->mRestoreScreenOrientationDelay:I

    .line 1295
    new-instance v0, Lcom/android/launcher2/Launcher$8;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$8;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1377
    new-instance v0, Lcom/android/launcher2/Launcher$9;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$9;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    .line 3383
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 775
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 777
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/Launcher;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Launcher;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->sendAdvanceMessage(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/launcher2/Launcher;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->dismissPreview(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    return p1
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/FolderInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/FolderInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    return-object p1
.end method

.method static synthetic access$2100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/launcher2/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher2/Launcher;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->showAndEnableToolbarButton(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/launcher2/Launcher;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->disableToolbarButton(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/launcher2/Launcher;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->hideToolbarButton(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->pickShortcut()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/launcher2/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/launcher2/Launcher$LocaleConfiguration;)Lcom/android/launcher2/Launcher$LocaleConfiguration;
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    sput-object p0, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkForLocaleChange()V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    return-void
.end method

.method private addItems()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 1714
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1716
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 1717
    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->showCustomizationDrawer(Z)V

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 1720
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 1721
    invoke-direct {p0, v1, v1}, Lcom/android/launcher2/Launcher;->showAddDialog(II)V

    goto :goto_0
.end method

.method static addLiveFolder(Landroid/content/Context;Landroid/content/Intent;IIIZ)Lcom/android/launcher2/LiveFolderInfo;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 1902
    const-string v1, "android.intent.extra.livefolder.BASE_INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1903
    const-string v2, "android.intent.extra.livefolder.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1908
    const-string v2, "android.intent.extra.livefolder.ICON"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 1909
    if-eqz v3, :cond_1

    instance-of v2, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_1

    .line 1911
    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1912
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1913
    iget-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 1915
    iget-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1916
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v10, v2

    move-object v2, v3

    move-object v3, v10

    .line 1922
    :goto_0
    if-nez v2, :cond_0

    .line 1923
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f020066

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v5, v2

    .line 1926
    :goto_1
    new-instance v2, Lcom/android/launcher2/LiveFolderInfo;

    invoke-direct {v2}, Lcom/android/launcher2/LiveFolderInfo;-><init>()V

    .line 1927
    invoke-static {v5, p0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lcom/android/launcher2/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    .line 1928
    iput-object v4, v2, Lcom/android/launcher2/LiveFolderInfo;->title:Ljava/lang/CharSequence;

    .line 1929
    iput-object v3, v2, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1930
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher2/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 1931
    iput-object v1, v2, Lcom/android/launcher2/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 1932
    const-string v1, "android.intent.extra.livefolder.DISPLAY_MODE"

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lcom/android/launcher2/LiveFolderInfo;->displayMode:I

    .line 1935
    const-wide/16 v3, -0x64

    move-object v1, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-static/range {v1 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V

    .line 1937
    sget-object v1, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    iget-wide v3, v2, Lcom/android/launcher2/LiveFolderInfo;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    return-object v2

    .line 1917
    :catch_0
    move-exception v2

    move-object v2, v9

    .line 1918
    :goto_2
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not load live folder icon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    move-object v2, v9

    goto :goto_0

    .line 1917
    :catch_1
    move-exception v5

    goto :goto_2

    :cond_0
    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v3, v9

    move-object v2, v9

    goto :goto_0
.end method

.method private cameraZoomIn(Lcom/android/launcher2/Launcher$State;Z)V
    .locals 1
    .parameter "fromState"
    .parameter "animated"

    .prologue
    .line 2862
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Launcher;->cameraZoomIn(Lcom/android/launcher2/Launcher$State;ZZ)V

    .line 2863
    return-void
.end method

.method private cameraZoomIn(Lcom/android/launcher2/Launcher$State;ZZ)V
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v6, 0x0

    .line 2866
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2867
    sget-object v1, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    if-ne p1, v1, :cond_5

    move v1, v12

    .line 2869
    :goto_0
    if-eqz v1, :cond_6

    const v2, 0x7f0a0013

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2873
    :goto_1
    if-eqz v1, :cond_7

    const v3, 0x7f0a0014

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    move v5, v3

    .line 2877
    :goto_2
    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    check-cast v1, Landroid/view/View;

    move-object v3, v1

    .line 2879
    :goto_3
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/CustomizePagedView;->endChoiceMode()V

    .line 2880
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAllAppsPagedView:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AllAppsPagedView;->endChoiceMode()V

    .line 2882
    invoke-direct {p0, v3, p1, v5}, Lcom/android/launcher2/Launcher;->setPivotsForZoom(Landroid/view/View;Lcom/android/launcher2/Launcher$State;F)V

    .line 2884
    if-nez p3, :cond_0

    .line 2885
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p2}, Lcom/android/launcher2/Workspace;->unshrink(Z)V

    .line 2888
    :cond_0
    if-eqz p2, :cond_9

    .line 2889
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2890
    :cond_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2892
    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v4

    .line 2893
    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v6

    .line 2895
    new-array v1, v10, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    int-to-long v8, v2

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 2896
    new-instance v1, Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-direct {v1}, Lcom/android/launcher2/Workspace$ZoomInInterpolator;-><init>()V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2897
    new-instance v1, Lcom/android/launcher2/Launcher$17;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher2/Launcher$17;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;FFF)V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2906
    new-array v1, v10, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2907
    const v2, 0x7f0a0001

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2908
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc0

    invoke-direct {v2, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2909
    new-instance v2, Lcom/android/launcher2/Launcher$18;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/Launcher$18;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2917
    instance-of v2, v3, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v2, :cond_2

    .line 2918
    move-object v0, v3

    check-cast v0, Lcom/android/launcher2/LauncherTransitionable;

    move-object v4, v0

    invoke-interface {v4, v1}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionStart(Landroid/animation/Animator;)V

    .line 2920
    :cond_2
    new-instance v2, Lcom/android/launcher2/Launcher$19;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/launcher2/Launcher$19;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2930
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2931
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2932
    if-nez p3, :cond_3

    .line 2933
    sget-object v4, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    invoke-direct {p0, v4, v3, v2}, Lcom/android/launcher2/Launcher;->hideAndShowToolbarButtons(Lcom/android/launcher2/Launcher$State;Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    .line 2936
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v8, v5, v11

    aput-object v2, v5, v12

    aput-object v1, v5, v10

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2939
    const v1, 0x7f0a001c

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2940
    const v2, 0x7f0a001b

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2941
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    sub-int v1, v2, v1

    int-to-long v1, v1

    invoke-virtual {v3, v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 2942
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2953
    :cond_4
    :goto_4
    return-void

    :cond_5
    move v1, v11

    .line 2867
    goto/16 :goto_0

    .line 2869
    :cond_6
    const v2, 0x7f0a0017

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto/16 :goto_1

    .line 2873
    :cond_7
    const v3, 0x7f0a0018

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    move v5, v3

    goto/16 :goto_2

    .line 2877
    :cond_8
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeCustomizationDrawer:Lcom/android/launcher2/CustomizeTrayTabHost;

    move-object v3, v1

    goto/16 :goto_3

    .line 2944
    :cond_9
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2945
    instance-of v1, v3, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v1, :cond_a

    .line 2946
    move-object v0, v3

    check-cast v0, Lcom/android/launcher2/LauncherTransitionable;

    move-object v4, v0

    invoke-interface {v4, v6}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionStart(Landroid/animation/Animator;)V

    .line 2947
    check-cast v3, Lcom/android/launcher2/LauncherTransitionable;

    invoke-interface {v3, v6}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionEnd(Landroid/animation/Animator;)V

    .line 2949
    :cond_a
    if-nez p3, :cond_4

    .line 2950
    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    invoke-direct {p0, v1, v6, v6}, Lcom/android/launcher2/Launcher;->hideAndShowToolbarButtons(Lcom/android/launcher2/Launcher$State;Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    goto :goto_4

    .line 2895
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2906
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private cameraZoomOut(Lcom/android/launcher2/Launcher$State;Z)V
    .locals 18
    .parameter
    .parameter

    .prologue
    const/high16 v17, 0x3f80

    const/16 v16, 0x2

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 2746
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2747
    sget-object v5, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    move-object/from16 v0, p1

    move-object v1, v5

    if-ne v0, v1, :cond_3

    const/4 v5, 0x1

    move v8, v5

    .line 2749
    :goto_0
    if-eqz v8, :cond_4

    const v5, 0x7f0a0011

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move v9, v5

    .line 2752
    :goto_1
    if-eqz v8, :cond_5

    const/high16 v5, 0x7f0a

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move v10, v5

    .line 2756
    :goto_2
    if-eqz v8, :cond_6

    const v5, 0x7f0a0014

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    move v11, v5

    .line 2760
    :goto_3
    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    move-object v6, v5

    .line 2762
    :goto_4
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->setPivotsForZoom(Landroid/view/View;Lcom/android/launcher2/Launcher$State;F)V

    .line 2764
    if-eqz v8, :cond_8

    .line 2765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object v5, v0

    sget-object v12, Lcom/android/launcher2/Workspace$ShrinkState;->BOTTOM_HIDDEN:Lcom/android/launcher2/Workspace$ShrinkState;

    move-object v0, v5

    move-object v1, v12

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->shrink(Lcom/android/launcher2/Workspace$ShrinkState;Z)V

    .line 2770
    :goto_5
    if-eqz p2, :cond_9

    .line 2771
    move/from16 v0, v16

    new-array v0, v0, [F

    move-object v5, v0

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    int-to-long v12, v9

    invoke-virtual {v5, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 2772
    new-instance v5, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;

    invoke-direct {v5}, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;-><init>()V

    invoke-virtual {v12, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2773
    new-instance v5, Lcom/android/launcher2/Launcher$14;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher$14;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;F)V

    invoke-virtual {v12, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2783
    if-eqz v8, :cond_0

    .line 2784
    invoke-virtual {v6, v14}, Landroid/view/View;->setFastAlpha(F)V

    .line 2785
    move/from16 v0, v16

    new-array v0, v0, [F

    move-object v5, v0

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    int-to-long v10, v10

    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 2786
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v11, 0x3fc0

    invoke-direct {v10, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2787
    new-instance v10, Lcom/android/launcher2/Launcher$15;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Launcher$15;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;)V

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2795
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 2798
    :cond_0
    instance-of v5, v6, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v5, :cond_1

    .line 2799
    move-object v0, v6

    check-cast v0, Lcom/android/launcher2/LauncherTransitionable;

    move-object v5, v0

    invoke-interface {v5, v12}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionStart(Landroid/animation/Animator;)V

    .line 2801
    :cond_1
    new-instance v5, Lcom/android/launcher2/Launcher$16;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v8

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/Launcher$16;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;ZLandroid/animation/ValueAnimator;)V

    invoke-virtual {v12, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2825
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2826
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2827
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->hideAndShowToolbarButtons(Lcom/android/launcher2/Launcher$State;Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    .line 2832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    move-object v8, v0

    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2833
    :cond_2
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    move-object v8, v0

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/Animator;

    move-object v10, v0

    aput-object v12, v10, v15

    const/4 v11, 0x1

    aput-object v5, v10, v11

    invoke-virtual {v8, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    move-object v5, v0

    invoke-virtual {v5, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    const-wide/16 v10, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 2838
    const v5, 0x7f0a001c

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 2839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    move-object v7, v0

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    add-int/lit8 v7, v9, 0x0

    sub-int v5, v7, v5

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 2840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 2853
    :goto_6
    return-void

    :cond_3
    move v8, v15

    .line 2747
    goto/16 :goto_0

    .line 2749
    :cond_4
    const v5, 0x7f0a0015

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move v9, v5

    goto/16 :goto_1

    .line 2752
    :cond_5
    const v5, 0x7f0a0016

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move v10, v5

    goto/16 :goto_2

    .line 2756
    :cond_6
    const v5, 0x7f0a0018

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    move v11, v5

    goto/16 :goto_3

    .line 2760
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeCustomizationDrawer:Lcom/android/launcher2/CustomizeTrayTabHost;

    move-object v5, v0

    move-object v6, v5

    goto/16 :goto_4

    .line 2767
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object v5, v0

    sget-object v12, Lcom/android/launcher2/Workspace$ShrinkState;->TOP:Lcom/android/launcher2/Workspace$ShrinkState;

    move-object v0, v5

    move-object v1, v12

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->shrink(Lcom/android/launcher2/Workspace$ShrinkState;Z)V

    goto/16 :goto_5

    .line 2842
    :cond_9
    invoke-virtual {v6, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 2843
    invoke-virtual {v6, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 2844
    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2845
    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2846
    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2847
    instance-of v5, v6, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v5, :cond_a

    .line 2848
    move-object v0, v6

    check-cast v0, Lcom/android/launcher2/LauncherTransitionable;

    move-object v7, v0

    invoke-interface {v7, v13}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionStart(Landroid/animation/Animator;)V

    .line 2849
    check-cast v6, Lcom/android/launcher2/LauncherTransitionable;

    invoke-interface {v6, v13}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionEnd(Landroid/animation/Animator;)V

    .line 2851
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->hideAndShowToolbarButtons(Lcom/android/launcher2/Launcher$State;Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    goto :goto_6

    .line 2771
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2785
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private checkForLocaleChange()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 390
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    if-nez v9, :cond_1

    .line 391
    new-instance v9, Lcom/android/launcher2/Launcher$1;

    invoke-direct {v9, p0}, Lcom/android/launcher2/Launcher$1;-><init>(Lcom/android/launcher2/Launcher;)V

    new-array v10, v10, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/android/launcher2/Launcher$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 410
    .local v0, configuration:Landroid/content/res/Configuration;
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget-object v6, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 411
    .local v6, previousLocale:Ljava/lang/String;
    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, locale:Ljava/lang/String;
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget v7, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 414
    .local v7, previousMcc:I
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    .line 416
    .local v4, mcc:I
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget v8, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 417
    .local v8, previousMnc:I
    iget v5, v0, Landroid/content/res/Configuration;->mnc:I

    .line 419
    .local v5, mnc:I
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-ne v4, v7, :cond_2

    if-eq v5, v8, :cond_3

    :cond_2
    const/4 v9, 0x1

    move v2, v9

    .line 421
    .local v2, localeChanged:Z
    :goto_1
    if-eqz v2, :cond_0

    .line 422
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput-object v1, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 423
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput v4, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 424
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput v5, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 426
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v9}, Lcom/android/launcher2/IconCache;->flush()V

    .line 427
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->loadHotseats()V

    .line 429
    sget-object v3, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .line 430
    .local v3, localeConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;
    new-instance v9, Lcom/android/launcher2/Launcher$2;

    const-string v10, "WriteLocaleConfiguration"

    invoke-direct {v9, p0, v10, v3}, Lcom/android/launcher2/Launcher$2;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher$2;->start()V

    goto :goto_0

    .end local v2           #localeChanged:Z
    .end local v3           #localeConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;
    :cond_3
    move v2, v10

    .line 419
    goto :goto_1
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 841
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 842
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 843
    return-void
.end method

.method private closeFolder()V
    .locals 2

    .prologue
    .line 2019
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 2020
    .local v0, folder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 2021
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)V

    .line 2023
    :cond_0
    return-void
.end method

.method private completeAdd(Lcom/android/launcher2/Launcher$PendingAddArguments;)V
    .locals 5
    .parameter "args"

    .prologue
    .line 649
    iget v1, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->requestCode:I

    packed-switch v1, :pswitch_data_0

    .line 676
    :goto_0
    :pswitch_0
    return-void

    .line 651
    :pswitch_1
    iget-object v1, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget v2, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    iget v3, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellX:I

    iget v4, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellY:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher2/Launcher;->completeAddApplication(Landroid/content/Intent;III)V

    goto :goto_0

    .line 654
    :pswitch_2
    iget-object v1, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->processShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 657
    :pswitch_3
    iget-object v1, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget v2, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    iget v3, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellX:I

    iget v4, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellY:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/launcher2/Launcher;->completeAddShortcut(Landroid/content/Intent;III)V

    goto :goto_0

    .line 660
    :pswitch_4
    iget-object v1, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->addLiveFolder(Landroid/content/Intent;)V

    goto :goto_0

    .line 663
    :pswitch_5
    iget-object v1, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget v2, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    iget v3, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellX:I

    iget v4, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellY:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/launcher2/Launcher;->completeAddLiveFolder(Landroid/content/Intent;III)V

    goto :goto_0

    .line 666
    :pswitch_6
    iget-object v1, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->addAppWidgetFromPick(Landroid/content/Intent;)V

    goto :goto_0

    .line 669
    :pswitch_7
    iget-object v1, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    const-string v2, "appWidgetId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 670
    .local v0, appWidgetId:I
    iget v1, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Launcher;->completeAddAppWidget(II)V

    goto :goto_0

    .line 649
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private completeAddAppWidget(II)V
    .locals 21
    .parameter
    .parameter

    .prologue
    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v20

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 1224
    move-object/from16 v0, v20

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    move v4, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move v5, v0

    const/4 v6, 0x0

    invoke-virtual {v8, v4, v5, v6}, Lcom/android/launcher2/CellLayout;->rectToCell(II[I)[I

    move-result-object v14

    .line 1228
    move-object/from16 v0, v20

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->maxWidth:I

    move v4, v0

    if-eqz v4, :cond_0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->maxWidth:I

    move v4, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    move v5, v0

    if-le v4, v5, :cond_0

    .line 1229
    const/4 v4, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->maxWidth:I

    move v5, v0

    invoke-virtual {v8, v5}, Lcom/android/launcher2/CellLayout;->sizeToSpan(I)I

    move-result v5

    aput v5, v14, v4

    .line 1231
    :cond_0
    move-object/from16 v0, v20

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->maxHeight:I

    move v4, v0

    if-eqz v4, :cond_1

    move-object/from16 v0, v20

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->maxHeight:I

    move v4, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move v5, v0

    if-le v4, v5, :cond_1

    .line 1232
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->maxHeight:I

    move v5, v0

    invoke-virtual {v8, v5}, Lcom/android/launcher2/CellLayout;->sizeToSpan(I)I

    move-result v5

    aput v5, v14, v4

    .line 1236
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    move-object v9, v0

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mAddDropPosition:[I

    move-object v6, v0

    .line 1240
    if-eqz v6, :cond_5

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 1243
    const/4 v5, 0x0

    aget v5, v6, v5

    const/4 v7, 0x1

    aget v6, v6, v7

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v4

    .line 1245
    if-eqz v4, :cond_4

    const/4 v4, 0x1

    .line 1255
    :goto_0
    if-nez v4, :cond_6

    .line 1256
    const/4 v4, -0x1

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_2

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object v4, v0

    .line 1260
    new-instance v4, Lcom/android/launcher2/Launcher$7;

    const-string v5, "deleteAppWidgetId"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher$7;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;I)V

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher$7;->start()V

    .line 1266
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    .line 1293
    :cond_3
    :goto_1
    return-void

    .line 1245
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 1251
    :cond_5
    const/4 v4, 0x0

    aget v10, v14, v4

    const/4 v4, 0x1

    aget v11, v14, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mAddIntersectCellX:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mAddIntersectCellY:I

    move v13, v0

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    move-result v4

    goto :goto_0

    .line 1271
    :cond_6
    new-instance v11, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move-object v0, v11

    move/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherAppWidgetInfo;-><init>(I)V

    .line 1272
    const/4 v4, 0x0

    aget v4, v14, v4

    iput v4, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    .line 1273
    const/4 v4, 0x1

    aget v4, v14, v4

    iput v4, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    .line 1275
    const-wide/16 v12, -0x64

    const/4 v4, 0x0

    aget v15, v9, v4

    const/4 v4, 0x1

    aget v16, v9, v4

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move/from16 v14, p2

    invoke-static/range {v10 .. v17}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V

    .line 1279
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    move v4, v0

    if-nez v4, :cond_3

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    iput-object v4, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1285
    iget-object v4, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object v0, v4

    move/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1286
    iget-object v4, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4, v11}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object v12, v0

    iget-object v13, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v4, 0x0

    aget v15, v9, v4

    const/4 v4, 0x1

    aget v16, v9, v4

    move-object v0, v11

    iget v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    move/from16 v17, v0

    move-object v0, v11

    iget v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v19

    move/from16 v14, p2

    invoke-virtual/range {v12 .. v19}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 1291
    iget-object v4, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto/16 :goto_1
.end method

.method private completeAddLiveFolder(Landroid/content/Intent;III)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    .line 1883
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1884
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    move v3, v2

    move v4, p3

    move v5, p4

    .line 1885
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1886
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    .line 1897
    :cond_0
    :goto_0
    return-void

    .line 1890
    :cond_1
    aget v6, v1, v8

    aget v7, v1, v2

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-static/range {v3 .. v8}, Lcom/android/launcher2/Launcher;->addLiveFolder(Landroid/content/Context;Landroid/content/Intent;IIIZ)Lcom/android/launcher2/LiveFolderInfo;

    move-result-object v3

    .line 1892
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v0, :cond_0

    .line 1893
    const v4, 0x7f030019

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v4, p0, v0, v3}, Lcom/android/launcher2/LiveFolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/LiveFolderInfo;)Lcom/android/launcher2/LiveFolderIcon;

    move-result-object v4

    .line 1895
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    aget v6, v1, v8

    aget v7, v1, v2

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v10

    move v5, p2

    move v8, v2

    move v9, v2

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_0
.end method

.method private completeAddShortcut(Landroid/content/Intent;III)V
    .locals 20
    .parameter "data"
    .parameter "screen"
    .parameter "intersectCellX"
    .parameter "intersectCellY"

    .prologue
    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    move-object v7, v0

    .line 1184
    .local v7, cellXY:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 1186
    .local v6, layout:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mAddDropPosition:[I

    move-object/from16 v19, v0

    .line 1187
    .local v19, touchXY:[I
    const/16 v16, 0x0

    .line 1188
    .local v16, foundCellSpan:Z
    if-eqz v19, :cond_2

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 1191
    .local v2, screenLayout:Lcom/android/launcher2/CellLayout;
    const/4 v3, 0x0

    aget v3, v19, v3

    const/4 v4, 0x1

    aget v4, v19, v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    .end local v6           #layout:Lcom/android/launcher2/CellLayout;
    move-result-object v18

    .line 1193
    .local v18, result:[I
    if-eqz v18, :cond_1

    const/4 v3, 0x1

    move/from16 v16, v3

    .line 1199
    .end local v2           #screenLayout:Lcom/android/launcher2/CellLayout;
    .end local v18           #result:[I
    :goto_0
    if-nez v16, :cond_3

    .line 1200
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    .line 1211
    :cond_0
    :goto_1
    return-void

    .line 1193
    .restart local v2       #screenLayout:Lcom/android/launcher2/CellLayout;
    .restart local v18       #result:[I
    :cond_1
    const/4 v3, 0x0

    move/from16 v16, v3

    goto :goto_0

    .line 1195
    .end local v2           #screenLayout:Lcom/android/launcher2/CellLayout;
    .end local v18           #result:[I
    .restart local v6       #layout:Lcom/android/launcher2/CellLayout;
    :cond_2
    const/4 v8, 0x1

    const/4 v9, 0x1

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    move-result v16

    goto :goto_0

    .line 1204
    .end local v6           #layout:Lcom/android/launcher2/CellLayout;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    move-object v8, v0

    const/4 v3, 0x0

    aget v12, v7, v3

    const/4 v3, 0x1

    aget v13, v7, v3

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-virtual/range {v8 .. v14}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;IIIZ)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v17

    .line 1207
    .local v17, info:Lcom/android/launcher2/ShortcutInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    move v3, v0

    if-nez v3, :cond_0

    .line 1208
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->createShortcut(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v9

    .line 1209
    .local v9, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object v8, v0

    const/4 v3, 0x0

    aget v11, v7, v3

    const/4 v3, 0x1

    aget v12, v7, v3

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v15

    move/from16 v10, p2

    invoke-virtual/range {v8 .. v15}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_1
.end method

.method private disableToolbarButton(Landroid/view/View;)V
    .locals 1
    .parameter "button"

    .prologue
    const/4 v0, 0x0

    .line 2637
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 2638
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 2639
    return-void
.end method

.method private dismissPreview(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2328
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/PopupWindow;

    .line 2329
    .local v0, window:Landroid/widget/PopupWindow;
    if-eqz v0, :cond_0

    .line 2330
    new-instance v1, Lcom/android/launcher2/Launcher$10;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher2/Launcher$10;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 2345
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2347
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2348
    return-void
.end method

.method private getDefaultBrowserUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 506
    const v1, 0x7f0e004b

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, url:Ljava/lang/String;
    const-string v1, "{CID}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 508
    const-string v1, "{CID}"

    const-string v2, "android-google"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 510
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter

    .prologue
    .line 3140
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3142
    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 3144
    if-eqz v1, :cond_0

    .line 3145
    const-string v2, "com.android.launcher.toolbar_icon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3146
    if-eqz v1, :cond_0

    .line 3147
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v0

    .line 3148
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3154
    :goto_0
    return-object v0

    .line 3151
    :catch_0
    move-exception v0

    .line 3154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getScreen()I
    .locals 2

    .prologue
    .line 492
    sget-object v0, Lcom/android/launcher2/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_0
    sget v1, Lcom/android/launcher2/Launcher;->sScreen:I

    monitor-exit v0

    return v1

    .line 494
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleFolderClick(Lcom/android/launcher2/FolderInfo;)V
    .locals 3
    .parameter "folderInfo"

    .prologue
    .line 2203
    iget-boolean v2, p1, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-nez v2, :cond_1

    .line 2205
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 2207
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->openFolder(Lcom/android/launcher2/FolderInfo;)V

    .line 2224
    :cond_0
    :goto_0
    return-void

    .line 2210
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 2212
    .local v1, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v1, :cond_0

    .line 2213
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getPageForView(Landroid/view/View;)I

    move-result v0

    .line 2215
    .local v0, folderScreen:I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)V

    .line 2216
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 2218
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 2220
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->openFolder(Lcom/android/launcher2/FolderInfo;)V

    goto :goto_0
.end method

.method private hideAndShowToolbarButtons(Lcom/android/launcher2/Launcher$State;Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2697
    sget-object v0, Lcom/android/launcher2/Launcher$22;->$SwitchMap$com$android$launcher2$Launcher$State:[I

    invoke-virtual {p1}, Lcom/android/launcher2/Launcher$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2715
    :goto_0
    return-void

    .line 2699
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mButtonCluster:Landroid/view/View;

    invoke-direct {p0, v4, v0, p2}, Lcom/android/launcher2/Launcher;->hideOrShowToolbarButton(ZLandroid/view/View;Landroid/animation/AnimatorSet;)V

    .line 2700
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDivider:Landroid/view/View;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mConfigureButton:Landroid/view/View;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeleteZone;->setOverlappingViews([Landroid/view/View;)V

    .line 2702
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    invoke-virtual {v0, v4}, Lcom/android/launcher2/DeleteZone;->setDragAndDropEnabled(Z)V

    .line 2703
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeleteZone;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2706
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mButtonCluster:Landroid/view/View;

    invoke-direct {p0, v3, v0, p3}, Lcom/android/launcher2/Launcher;->hideOrShowToolbarButton(ZLandroid/view/View;Landroid/animation/AnimatorSet;)V

    .line 2707
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/DeleteZone;->setDragAndDropEnabled(Z)V

    .line 2708
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeleteZone;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2711
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mButtonCluster:Landroid/view/View;

    invoke-direct {p0, v3, v0, p3}, Lcom/android/launcher2/Launcher;->hideOrShowToolbarButton(ZLandroid/view/View;Landroid/animation/AnimatorSet;)V

    .line 2712
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/DeleteZone;->setDragAndDropEnabled(Z)V

    goto :goto_0

    .line 2697
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hideOrShowToolbarButton(ZLandroid/view/View;Landroid/animation/AnimatorSet;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 2650
    .line 2651
    if-nez p1, :cond_0

    move v0, v6

    .line 2653
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2657
    :goto_1
    if-eqz p3, :cond_3

    .line 2658
    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v2, v5

    if-eqz p1, :cond_2

    move v3, v4

    :goto_2
    aput v3, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 2659
    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2660
    new-instance v1, Lcom/android/launcher2/Launcher$12;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher2/Launcher$12;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2665
    new-instance v1, Lcom/android/launcher2/Launcher$13;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/launcher2/Launcher$13;-><init>(Lcom/android/launcher2/Launcher;ZLandroid/view/View;Z)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2676
    invoke-virtual {p3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2686
    :goto_3
    return-void

    :cond_0
    move v0, v5

    .line 2651
    goto :goto_0

    .line 2653
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_1

    .line 2658
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 2678
    :cond_3
    if-eqz p1, :cond_4

    .line 2679
    invoke-direct {p0, p2}, Lcom/android/launcher2/Launcher;->showAndEnableToolbarButton(Landroid/view/View;)V

    .line 2680
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    .line 2682
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/launcher2/Launcher;->disableToolbarButton(Landroid/view/View;)V

    .line 2683
    invoke-direct {p0, p2}, Lcom/android/launcher2/Launcher;->hideToolbarButton(Landroid/view/View;)V

    goto :goto_3
.end method

.method private hideToolbarButton(Landroid/view/View;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 2631
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2633
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2634
    return-void
.end method

.method private static intToState(I)Lcom/android/launcher2/Launcher$State;
    .locals 4
    .parameter "stateOrdinal"

    .prologue
    .line 850
    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    .line 851
    .local v1, state:Lcom/android/launcher2/Launcher$State;
    invoke-static {}, Lcom/android/launcher2/Launcher$State;->values()[Lcom/android/launcher2/Launcher$State;

    move-result-object v2

    .line 852
    .local v2, stateValues:[Lcom/android/launcher2/Launcher$State;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 853
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher$State;->ordinal()I

    move-result v3

    if-ne v3, p0, :cond_1

    .line 854
    aget-object v1, v2, v0

    .line 858
    :cond_0
    return-object v1

    .line 852
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isPreviewVisible()Z
    .locals 1

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPreviousView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPreviousView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mNextView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mNextView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadHotseats()V
    .locals 15

    .prologue
    .line 518
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatConfig:[Ljava/lang/String;

    if-nez v12, :cond_2

    .line 519
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x7f07

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatConfig:[Ljava/lang/String;

    .line 520
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatConfig:[Ljava/lang/String;

    array-length v12, v12

    if-lez v12, :cond_0

    .line 521
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatConfig:[Ljava/lang/String;

    array-length v12, v12

    new-array v12, v12, [Landroid/content/Intent;

    iput-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseats:[Landroid/content/Intent;

    .line 522
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatConfig:[Ljava/lang/String;

    array-length v12, v12

    new-array v12, v12, [Ljava/lang/CharSequence;

    iput-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatLabels:[Ljava/lang/CharSequence;

    .line 523
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatConfig:[Ljava/lang/String;

    array-length v12, v12

    new-array v12, v12, [Landroid/graphics/drawable/Drawable;

    iput-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatIcons:[Landroid/graphics/drawable/Drawable;

    .line 530
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070001

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 531
    .local v6, hotseatIconDrawables:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatConfig:[Ljava/lang/String;

    array-length v12, v12

    if-ge v7, v12, :cond_1

    .line 534
    :try_start_0
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    aput-object v13, v12, v7
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 525
    .end local v6           #hotseatIconDrawables:Landroid/content/res/TypedArray;
    .end local v7           #i:I
    :cond_0
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseats:[Landroid/content/Intent;

    .line 526
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatIcons:[Landroid/graphics/drawable/Drawable;

    .line 527
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatLabels:[Ljava/lang/CharSequence;

    goto :goto_0

    .line 535
    .restart local v6       #hotseatIconDrawables:Landroid/content/res/TypedArray;
    .restart local v7       #i:I
    :catch_0
    move-exception v12

    move-object v4, v12

    .line 536
    .local v4, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v12, "Launcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Missing hotseat_icons array item #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatIcons:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    aput-object v13, v12, v7

    goto :goto_2

    .line 540
    .end local v4           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 543
    .end local v6           #hotseatIconDrawables:Landroid/content/res/TypedArray;
    .end local v7           #i:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 544
    .local v10, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatConfig:[Ljava/lang/String;

    array-length v12, v12

    if-ge v7, v12, :cond_b

    .line 545
    const/4 v9, 0x0

    .line 546
    .local v9, intent:Landroid/content/Intent;
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatConfig:[Ljava/lang/String;

    aget-object v12, v12, v7

    const-string v13, "*BROWSER*"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 549
    const v12, 0x7f0e004b

    invoke-virtual {p0, v12}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 550
    .local v3, defaultUri:Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    if-eqz v3, :cond_3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    :goto_4
    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v13, "android.intent.category.BROWSABLE"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 570
    .end local v3           #defaultUri:Ljava/lang/String;
    :goto_5
    if-nez v9, :cond_5

    .line 571
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseats:[Landroid/content/Intent;

    const/4 v13, 0x0

    aput-object v13, v12, v7

    .line 572
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatLabels:[Ljava/lang/CharSequence;

    const v13, 0x7f0e0008

    invoke-virtual {p0, v13}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v12, v7

    .line 544
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 550
    .restart local v3       #defaultUri:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getDefaultBrowserUri()Landroid/net/Uri;

    move-result-object v14

    goto :goto_4

    .line 563
    .end local v3           #defaultUri:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatConfig:[Ljava/lang/String;

    aget-object v12, v12, v7

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    goto :goto_5

    .line 564
    :catch_1
    move-exception v12

    move-object v4, v12

    .line 565
    .local v4, ex:Ljava/net/URISyntaxException;
    const-string v12, "Launcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid hotseat intent: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/launcher2/Launcher;->mHotseatConfig:[Ljava/lang/String;

    aget-object v14, v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 583
    .end local v4           #ex:Ljava/net/URISyntaxException;
    :cond_5
    const/high16 v12, 0x1

    invoke-virtual {v10, v9, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 584
    .local v1, bestMatch:Landroid/content/pm/ResolveInfo;
    const/high16 v12, 0x1

    invoke-virtual {v10, v9, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 593
    .local v0, allMatches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_6

    if-nez v1, :cond_7

    .line 597
    :cond_6
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseats:[Landroid/content/Intent;

    aput-object v9, v12, v7

    .line 600
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatLabels:[Ljava/lang/CharSequence;

    const v13, 0x7f0e0008

    invoke-virtual {p0, v13}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v12, v7

    goto :goto_6

    .line 602
    :cond_7
    const/4 v5, 0x0

    .line 603
    .local v5, found:Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 604
    .local v11, ri:Landroid/content/pm/ResolveInfo;
    iget-object v12, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v13, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v13, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 607
    const/4 v5, 0x1

    .line 612
    .end local v11           #ri:Landroid/content/pm/ResolveInfo;
    :cond_9
    if-nez v5, :cond_a

    .line 617
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseats:[Landroid/content/Intent;

    aput-object v9, v12, v7

    .line 620
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatLabels:[Ljava/lang/CharSequence;

    const v13, 0x7f0e002d

    invoke-virtual {p0, v13}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v12, v7

    goto/16 :goto_6

    .line 625
    :cond_a
    new-instance v2, Landroid/content/ComponentName;

    iget-object v12, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v13, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    .local v2, com:Landroid/content/ComponentName;
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseats:[Landroid/content/Intent;

    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v13

    aput-object v13, v12, v7

    .line 631
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHotseatLabels:[Ljava/lang/CharSequence;

    iget-object v13, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v13, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v12, v7

    goto/16 :goto_6

    .line 646
    .end local v0           #allMatches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #bestMatch:Landroid/content/pm/ResolveInfo;
    .end local v2           #com:Landroid/content/ComponentName;
    .end local v5           #found:Z
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #intent:Landroid/content/Intent;
    :cond_b
    return-void
.end method

.method private manageApps()V
    .locals 2

    .prologue
    .line 1742
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1743
    return-void
.end method

.method private mapConfigurationOriActivityInfoOri(I)I
    .locals 6
    .parameter "configOri"

    .prologue
    const/4 v5, 0x2

    .line 3695
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3696
    .local v0, d:Landroid/view/Display;
    const/4 v2, 0x2

    .line 3697
    .local v2, naturalOri:I
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 3711
    :goto_0
    const/4 v4, 0x4

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 3719
    .local v3, oriMap:[I
    const/4 v1, 0x0

    .line 3720
    .local v1, indexOffset:I
    if-ne v2, v5, :cond_0

    .line 3721
    const/4 v1, 0x1

    .line 3723
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    add-int/2addr v4, v1

    rem-int/lit8 v4, v4, 0x4

    aget v4, v3, v4

    return v4

    .line 3701
    .end local v1           #indexOffset:I
    .end local v3           #oriMap:[I
    :pswitch_0
    move v2, p1

    .line 3702
    goto :goto_0

    .line 3706
    :pswitch_1
    if-ne p1, v5, :cond_1

    const/4 v4, 0x1

    move v2, v4

    :goto_1
    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    .line 3697
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3711
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private onAppWidgetReset()V
    .locals 1

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-eqz v0, :cond_0

    .line 2044
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 2046
    :cond_0
    return-void
.end method

.method private pickShortcut()V
    .locals 5

    .prologue
    .line 2512
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2514
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2515
    const v2, 0x7f0e0020

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2516
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2518
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2519
    const v2, 0x7f020064

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2521
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2523
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2524
    const-string v2, "android.intent.extra.INTENT"

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2525
    const-string v2, "android.intent.extra.TITLE"

    const v3, 0x7f0e002d

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2526
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2528
    const/4 v0, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2529
    return-void
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 448
    .local v0, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 449
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 450
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 451
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 457
    if-eqz v1, :cond_2

    .line 459
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 465
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    return-void

    .line 460
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 462
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0

    .line 452
    :catch_1
    move-exception v2

    .line 457
    :goto_1
    if-eqz v0, :cond_0

    .line 459
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 460
    :catch_2
    move-exception v2

    goto :goto_0

    .line 454
    :catch_3
    move-exception v2

    .line 457
    :goto_2
    if-eqz v0, :cond_0

    .line 459
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 460
    :catch_4
    move-exception v2

    goto :goto_0

    .line 457
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v0, :cond_1

    .line 459
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 462
    :cond_1
    :goto_4
    throw v2

    .line 460
    :catch_5
    move-exception v3

    goto :goto_4

    .line 457
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 454
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 452
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :cond_2
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    .line 1973
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1974
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1976
    return-void
.end method

.method private resetAddInfo()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1726
    iput v0, p0, Lcom/android/launcher2/Launcher;->mAddScreen:I

    .line 1727
    iput v0, p0, Lcom/android/launcher2/Launcher;->mAddIntersectCellX:I

    .line 1728
    iput v0, p0, Lcom/android/launcher2/Launcher;->mAddIntersectCellY:I

    .line 1729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mAddDropPosition:[I

    .line 1730
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 867
    if-nez p1, :cond_1

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    const-string v0, "launcher.state"

    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->intToState(I)Lcom/android/launcher2/Launcher$State;

    move-result-object v0

    .line 873
    sget-object v1, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_8

    .line 874
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    .line 879
    :cond_2
    :goto_1
    const-string v0, "launcher.current_screen"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 880
    if-le v0, v4, :cond_3

    .line 881
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 884
    :cond_3
    const-string v0, "launcher.add_screen"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 886
    if-le v0, v4, :cond_4

    .line 887
    iput v0, p0, Lcom/android/launcher2/Launcher;->mAddScreen:I

    .line 888
    const-string v0, "launcher.add_cellX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Launcher;->mAddIntersectCellX:I

    .line 889
    const-string v0, "launcher.add_cellY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Launcher;->mAddIntersectCellY:I

    .line 890
    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 893
    :cond_4
    const-string v0, "launcher.rename_folder"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 894
    if-eqz v0, :cond_5

    .line 895
    const-string v0, "launcher.rename_folder_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 896
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    sget-object v3, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v3, v0, v1}, Lcom/android/launcher2/LauncherModel;->getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    .line 897
    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 901
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    instance-of v0, v0, Lcom/android/launcher2/AllAppsTabbed;

    if-eqz v0, :cond_7

    .line 902
    const-string v0, "allapps_currentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 903
    if-eqz v1, :cond_6

    .line 904
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    check-cast v0, Lcom/android/launcher2/AllAppsTabbed;

    .line 905
    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllAppsTabbed;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 907
    :cond_6
    const-string v0, "allapps_currentPage"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 908
    if-le v0, v4, :cond_7

    .line 909
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAllAppsPagedView:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/AllAppsPagedView;->setRestorePage(I)V

    .line 914
    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeCustomizationDrawer:Lcom/android/launcher2/CustomizeTrayTabHost;

    if-eqz v0, :cond_0

    .line 915
    const-string v0, "customize_currentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 916
    if-eqz v0, :cond_0

    .line 918
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeCustomizationDrawer:Lcom/android/launcher2/CustomizeTrayTabHost;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CustomizeTrayTabHost;->getCustomizeFilterForTabTag(Ljava/lang/String;)Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CustomizePagedView;->setCustomizationFilter(Lcom/android/launcher2/CustomizePagedView$CustomizationType;)V

    .line 920
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeCustomizationDrawer:Lcom/android/launcher2/CustomizeTrayTabHost;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CustomizeTrayTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 875
    :cond_8
    sget-object v1, Lcom/android/launcher2/Launcher$State;->CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_2

    .line 876
    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->showCustomizationDrawer(Z)V

    goto/16 :goto_1
.end method

.method private sendAdvanceMessage(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 1341
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1342
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1343
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceSentTime:J

    .line 1345
    return-void
.end method

.method private setPivotsForZoom(Landroid/view/View;Lcom/android/launcher2/Launcher$State;F)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2724
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2726
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 2730
    sget-object v1, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    if-ne p2, v1, :cond_0

    .line 2732
    const v1, 0x3f533333

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 2737
    :goto_0
    return-void

    .line 2735
    :cond_0
    const v1, -0x41b33333

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0
.end method

.method static setScreen(I)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 498
    sget-object v0, Lcom/android/launcher2/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_0
    sput p0, Lcom/android/launcher2/Launcher;->sScreen:I

    .line 500
    monitor-exit v0

    .line 501
    return-void

    .line 500
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setupViews()V
    .locals 12

    .prologue
    const v11, 0x7f080014

    const/4 v2, 0x4

    const v10, 0x7f080016

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 932
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 934
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragLayer;

    .line 935
    invoke-virtual {v0, v4}, Lcom/android/launcher2/DragLayer;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 937
    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AllAppsView;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    .line 938
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    invoke-interface {v1, p0}, Lcom/android/launcher2/AllAppsView;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 939
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    invoke-interface {v1, v4}, Lcom/android/launcher2/AllAppsView;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 940
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 942
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 944
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 948
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeCustomizationDrawer:Lcom/android/launcher2/CustomizeTrayTabHost;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CustomizeTrayTabHost;->setVisibility(I)V

    .line 951
    :cond_0
    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Workspace;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 953
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 954
    invoke-virtual {v5, v8}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 956
    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DeleteZone;

    .line 957
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    .line 959
    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 960
    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/android/launcher2/HandleView;

    if-eqz v3, :cond_1

    .line 962
    check-cast v2, Lcom/android/launcher2/HandleView;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mHandleView:Lcom/android/launcher2/HandleView;

    .line 963
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHandleView:Lcom/android/launcher2/HandleView;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/HandleView;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 964
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHandleView:Lcom/android/launcher2/HandleView;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/HandleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 965
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHandleView:Lcom/android/launcher2/HandleView;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/HandleView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 968
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    if-eqz v2, :cond_9

    .line 969
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/CustomizePagedView;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 970
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CustomizePagedView;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 971
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mAllAppsPagedView:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CustomizePagedView;->setAllAppsPagedView(Lcom/android/launcher2/AllAppsPagedView;)V

    .line 993
    :goto_0
    invoke-virtual {v5, p0}, Lcom/android/launcher2/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 994
    invoke-virtual {v5, v4}, Lcom/android/launcher2/Workspace;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 995
    invoke-virtual {v5, p0}, Lcom/android/launcher2/Workspace;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 996
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->setWallpaperDimension()V

    .line 998
    invoke-virtual {v1, p0}, Lcom/android/launcher2/DeleteZone;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 999
    invoke-virtual {v1, v4}, Lcom/android/launcher2/DeleteZone;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 1001
    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1002
    const v3, 0x7f080015

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1003
    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1005
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1006
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/view/View;

    aput-object v2, v7, v8

    aput-object v3, v7, v9

    const/4 v2, 0x2

    aput-object v6, v7, v2

    invoke-virtual {v1, v7}, Lcom/android/launcher2/DeleteZone;->setOverlappingViews([Landroid/view/View;)V

    .line 1010
    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 1012
    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/DeleteZone;

    .line 1013
    if-eqz v2, :cond_2

    .line 1014
    invoke-virtual {v2, p0}, Lcom/android/launcher2/DeleteZone;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 1015
    invoke-virtual {v2, v4}, Lcom/android/launcher2/DeleteZone;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 1016
    invoke-virtual {v2, v8}, Lcom/android/launcher2/DeleteZone;->setDragAndDropEnabled(Z)V

    .line 1017
    invoke-virtual {v4, v2}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 1018
    invoke-virtual {v4, v2}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 1021
    :cond_2
    const v3, 0x7f08000a

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfoDropTarget;

    .line 1023
    if-eqz v3, :cond_3

    .line 1024
    invoke-virtual {v3, p0}, Lcom/android/launcher2/ApplicationInfoDropTarget;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 1025
    invoke-virtual {v4, v3}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 1026
    invoke-virtual {v3, v8}, Lcom/android/launcher2/ApplicationInfoDropTarget;->setDragAndDropEnabled(Z)V

    .line 1027
    const v6, 0x7f08000b

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1028
    if-eqz v6, :cond_3

    .line 1029
    invoke-virtual {v3, v6}, Lcom/android/launcher2/ApplicationInfoDropTarget;->setOverlappingView(Landroid/view/View;)V

    .line 1030
    new-instance v7, Lcom/android/launcher2/Launcher$3;

    invoke-direct {v7, p0}, Lcom/android/launcher2/Launcher$3;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1038
    :cond_3
    invoke-virtual {v4, v5}, Lcom/android/launcher2/DragController;->setDragScoller(Lcom/android/launcher2/DragScroller;)V

    .line 1039
    invoke-virtual {v4, v0}, Lcom/android/launcher2/DragController;->setScrollView(Landroid/view/View;)V

    .line 1040
    invoke-virtual {v4, v5}, Lcom/android/launcher2/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 1043
    invoke-virtual {v4, v5}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 1044
    invoke-virtual {v4, v1}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 1045
    if-eqz v3, :cond_4

    .line 1046
    invoke-virtual {v4, v3}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 1048
    :cond_4
    if-eqz v2, :cond_5

    .line 1049
    invoke-virtual {v4, v2}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 1051
    :cond_5
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mButtonCluster:Landroid/view/View;

    .line 1053
    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    .line 1054
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDivider:Landroid/view/View;

    .line 1055
    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mConfigureButton:Landroid/view/View;

    .line 1060
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mConfigureButton:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1061
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mConfigureButton:Landroid/view/View;

    new-instance v1, Lcom/android/launcher2/Launcher$4;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$4;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 1068
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDivider:Landroid/view/View;

    new-instance v1, Lcom/android/launcher2/Launcher$5;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$5;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1074
    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1075
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    new-instance v1, Lcom/android/launcher2/Launcher$6;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$6;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    :cond_8
    return-void

    .line 973
    :cond_9
    const v2, 0x7f08002c

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 974
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHotseatLabels:[Ljava/lang/CharSequence;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 975
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHotseatIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 976
    const v2, 0x7f08002d

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 977
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHotseatLabels:[Ljava/lang/CharSequence;

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 978
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHotseatIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 980
    const v2, 0x7f080029

    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mPreviousView:Landroid/widget/ImageView;

    .line 981
    const v2, 0x7f08002a

    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mNextView:Landroid/widget/ImageView;

    .line 983
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPreviousView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 984
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mNextView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 985
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6, v2, v3}, Lcom/android/launcher2/Workspace;->setIndicators(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 987
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPreviousView:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V

    .line 988
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPreviousView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 989
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mNextView:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V

    .line 990
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mNextView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 1008
    :cond_a
    const v2, 0x7f08002b

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeleteZone;->setOverlappingView(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method private showAddDialog(II)V
    .locals 2
    .parameter "intersectX"
    .parameter "intersectY"

    .prologue
    const/4 v1, 0x1

    .line 2502
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 2503
    iput p1, p0, Lcom/android/launcher2/Launcher;->mAddIntersectCellX:I

    .line 2504
    iput p2, p0, Lcom/android/launcher2/Launcher;->mAddIntersectCellY:I

    .line 2505
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Launcher;->mAddScreen:I

    .line 2506
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 2507
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->showDialog(I)V

    .line 2508
    return-void
.end method

.method private showAndEnableToolbarButton(Landroid/view/View;)V
    .locals 2
    .parameter "button"

    .prologue
    const/4 v1, 0x1

    .line 2625
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2626
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 2627
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 2628
    return-void
.end method

.method private showCustomizationDrawer(Z)V
    .locals 2
    .parameter "animated"

    .prologue
    .line 3101
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 3113
    :goto_0
    return-void

    .line 3105
    :cond_0
    sget-object v0, Lcom/android/launcher2/Launcher$State;->CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/Launcher;->cameraZoomOut(Lcom/android/launcher2/Launcher$State;Z)V

    .line 3108
    sget-object v0, Lcom/android/launcher2/Launcher$State;->CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 3111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    .line 3112
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    goto :goto_0
.end method

.method private showNotifications()V
    .locals 1

    .prologue
    .line 1943
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    .line 1944
    if-eqz p0, :cond_0

    .line 1945
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->expand()V

    .line 1947
    :cond_0
    return-void
.end method

.method private showPreviews(Landroid/view/View;)V
    .locals 2
    .parameter "anchor"

    .prologue
    .line 2351
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Launcher;->showPreviews(Landroid/view/View;II)V

    .line 2352
    return-void
.end method

.method private showPreviews(Landroid/view/View;II)V
    .locals 21
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2355
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object v6, v0

    .line 2358
    move-object v0, v6

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 2360
    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v7

    int-to-float v7, v7

    .line 2362
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 2363
    const v9, 0x7f020072

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2364
    iget v9, v8, Landroid/graphics/Rect;->left:I

    iget v10, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-int v9, v9

    .line 2365
    iget v10, v8, Landroid/graphics/Rect;->top:I

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v10

    .line 2367
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v10

    sub-int/2addr v10, v9

    .line 2368
    int-to-float v10, v10

    div-float v7, v10, v7

    .line 2370
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v10

    .line 2371
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v11

    .line 2372
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getLeftPadding()I

    move-result v12

    .line 2373
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getTopPadding()I

    move-result v13

    .line 2374
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getRightPadding()I

    move-result v14

    add-int/2addr v12, v14

    sub-int/2addr v10, v12

    .line 2375
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getBottomPadding()I

    move-result v4

    add-int/2addr v4, v13

    sub-int v4, v11, v4

    .line 2377
    int-to-float v11, v10

    div-float/2addr v7, v11

    .line 2379
    sub-int v11, p3, p2

    .line 2381
    int-to-float v10, v10

    mul-float/2addr v10, v7

    .line 2382
    int-to-float v4, v4

    mul-float/2addr v4, v7

    .line 2384
    new-instance v12, Landroid/widget/LinearLayout;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2386
    new-instance v13, Lcom/android/launcher2/Launcher$PreviewTouchHandler;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Launcher$PreviewTouchHandler;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;)V

    .line 2387
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v11}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v15, p2

    .line 2389
    :goto_0
    move v0, v15

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    .line 2390
    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2391
    invoke-virtual {v6, v15}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher2/CellLayout;

    .line 2393
    move v0, v10

    float-to-int v0, v0

    move/from16 v17, v0

    move v0, v4

    float-to-int v0, v0

    move/from16 v18, v0

    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 2396
    new-instance v18, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2397
    move-object/from16 v0, v18

    move v1, v7

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2398
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/CellLayout;->getLeftPadding()I

    move-result v19

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/CellLayout;->getTopPadding()I

    move-result v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2399
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->drawChildren(Landroid/graphics/Canvas;)V

    .line 2401
    const v18, 0x7f020072

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2402
    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2403
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2404
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2405
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2406
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 2407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v18

    move v0, v15

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->requestFocus()Z

    .line 2409
    :cond_0
    const/16 v18, -0x2

    const/16 v19, -0x2

    move-object v0, v12

    move-object/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 2412
    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2389
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 2415
    :cond_1
    new-instance v5, Landroid/widget/PopupWindow;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 2416
    invoke-virtual {v5, v12}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2417
    int-to-float v6, v11

    mul-float/2addr v6, v10

    int-to-float v7, v9

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2418
    int-to-float v6, v8

    add-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2419
    const v4, 0x7f0c0004

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2420
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2421
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2422
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2423
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v4

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 2425
    new-instance v4, Lcom/android/launcher2/Launcher$11;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Launcher$11;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;)V

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 2431
    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2432
    const v4, 0x7f080023

    move-object/from16 v0, p1

    move v1, v4

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2433
    const v4, 0x7f08000f

    move-object/from16 v0, p1

    move v1, v4

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2434
    return-void
.end method

.method private startVoiceSearch()V
    .locals 2

    .prologue
    .line 2118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2119
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2120
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 2121
    return-void
.end method

.method private startWallpaper()V
    .locals 2

    .prologue
    .line 1950
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 1951
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1952
    const v1, 0x7f0e0005

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1965
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1966
    return-void
.end method

.method private unbindDesktopItems()V
    .locals 3

    .prologue
    .line 2053
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 2054
    .local v1, item:Lcom/android/launcher2/ItemInfo;
    invoke-virtual {v1}, Lcom/android/launcher2/ItemInfo;->unbind()V

    goto :goto_0

    .line 2056
    .end local v1           #item:Lcom/android/launcher2/ItemInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2057
    return-void
.end method

.method private updateAppMarketIcon()V
    .locals 3

    .prologue
    .line 3242
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3243
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.APP_MARKET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3246
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 3247
    if-eqz v1, :cond_0

    .line 3248
    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 3249
    const v0, 0x7f08000b

    const v2, 0x7f020005

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->updateTextButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/Launcher;->sAppMarketIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3253
    :cond_0
    return-void
.end method

.method private updateAppMarketIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 1
    .parameter

    .prologue
    .line 3256
    const v0, 0x7f08000b

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/Launcher;->updateTextButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    .line 3257
    return-void
.end method

.method private updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 2
    .parameter "buttonId"
    .parameter "d"

    .prologue
    .line 3198
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3199
    .local v0, button:Landroid/widget/ImageView;
    if-nez v0, :cond_0

    .line 3201
    :goto_0
    return-void

    .line 3200
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3
    .parameter "buttonId"
    .parameter "activityName"
    .parameter "fallbackDrawableId"

    .prologue
    const/4 v2, 0x0

    .line 3177
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3178
    .local v0, button:Landroid/widget/ImageView;
    if-nez v0, :cond_0

    .line 3187
    :goto_0
    return-object v2

    .line 3179
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/launcher2/Launcher;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3182
    .local v1, toolbarIcon:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 3183
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3186
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3187
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    goto :goto_0
.end method

.method private updateGlobalSearchIcon()V
    .locals 3

    .prologue
    const v2, 0x7f080011

    .line 3204
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3205
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 3207
    invoke-virtual {v0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 3208
    if-eqz v0, :cond_1

    .line 3209
    const v1, 0x7f020046

    invoke-direct {p0, v2, v0, v1}, Lcom/android/launcher2/Launcher;->updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3215
    :cond_0
    :goto_0
    return-void

    .line 3212
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateGlobalSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 1
    .parameter

    .prologue
    .line 3218
    const v0, 0x7f080011

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/Launcher;->updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    .line 3219
    return-void
.end method

.method private updateIconsAffectedByPackageManagerChanges()V
    .locals 0

    .prologue
    .line 3614
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon()V

    .line 3615
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateGlobalSearchIcon()V

    .line 3616
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateVoiceSearchIcon()V

    .line 3617
    return-void
.end method

.method private updateRunning()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x4e20

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1348
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v7

    .line 1349
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceRunning:Z

    if-eq v0, v1, :cond_0

    .line 1350
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceRunning:Z

    .line 1351
    if-eqz v0, :cond_4

    .line 1352
    iget-wide v0, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    move-wide v0, v8

    .line 1353
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Launcher;->sendAdvanceMessage(J)V

    .line 1365
    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    if-eqz v0, :cond_6

    move v0, v7

    .line 1366
    :goto_3
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mVisibility:Z

    if-eq v0, v1, :cond_1

    .line 1367
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mVisibility:Z

    .line 1368
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.launcher.visibility"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1369
    const-string v1, "com.asus.mygazine"

    const-string v2, "com.asus.mygazine.UtilsReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1370
    const-string v1, "visible"

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1371
    const-string v1, "present"

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1372
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 1375
    :cond_1
    return-void

    :cond_2
    move v0, v6

    .line 1348
    goto :goto_0

    .line 1352
    :cond_3
    iget-wide v0, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    goto :goto_1

    .line 1355
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1356
    const-wide/16 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceSentTime:J

    sub-long/2addr v2, v4

    sub-long v2, v8, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    .line 1359
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1360
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    :cond_6
    move v0, v6

    .line 1365
    goto :goto_3
.end method

.method private updateTextButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 3
    .parameter "buttonId"
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    .line 3192
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3193
    .local v0, button:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 3195
    :goto_0
    return-void

    .line 3194
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateTextButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 4
    .parameter "buttonId"
    .parameter "activityName"
    .parameter "fallbackDrawableId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3160
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3161
    .local v0, button:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 3170
    :goto_0
    return-object v2

    .line 3162
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/launcher2/Launcher;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3165
    .local v1, toolbarIcon:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 3166
    invoke-virtual {v0, p3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 3169
    :cond_1
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3170
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    goto :goto_0
.end method

.method private updateVoiceSearchIcon()V
    .locals 3

    .prologue
    const v2, 0x7f080013

    .line 3222
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3224
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3225
    if-eqz v0, :cond_1

    .line 3226
    const v1, 0x7f02006c

    invoke-direct {p0, v2, v0, v1}, Lcom/android/launcher2/Launcher;->updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3232
    :cond_0
    :goto_0
    return-void

    .line 3229
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateVoiceSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 1
    .parameter

    .prologue
    .line 3235
    const v0, 0x7f080013

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/Launcher;->updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    .line 3236
    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 468
    const/4 v1, 0x0

    .line 470
    .local v1, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 471
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 472
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 473
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 474
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 481
    if-eqz v2, :cond_2

    .line 483
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 489
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 484
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 486
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0

    .line 475
    :catch_1
    move-exception v3

    .line 481
    :goto_1
    if-eqz v1, :cond_0

    .line 483
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 484
    :catch_2
    move-exception v3

    goto :goto_0

    .line 477
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 479
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 481
    if-eqz v1, :cond_0

    .line 483
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 484
    :catch_4
    move-exception v3

    goto :goto_0

    .line 481
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_1

    .line 483
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 486
    :cond_1
    :goto_4
    throw v3

    .line 484
    :catch_5
    move-exception v4

    goto :goto_4

    .line 481
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 477
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_6
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 475
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0
.end method


# virtual methods
.method addAppWidgetFromDrop(Lcom/android/launcher2/PendingAddWidgetInfo;I[I)V
    .locals 3
    .parameter "info"
    .parameter "screen"
    .parameter "position"

    .prologue
    .line 1733
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 1734
    iput p2, p0, Lcom/android/launcher2/Launcher;->mAddScreen:I

    .line 1735
    iput-object p3, p0, Lcom/android/launcher2/Launcher;->mAddDropPosition:[I

    .line 1736
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 1737
    .local v0, appWidgetId:I
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 1738
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/Launcher;->addAppWidgetImpl(ILcom/android/launcher2/PendingAddWidgetInfo;)V

    .line 1739
    return-void
.end method

.method addAppWidgetFromPick(Landroid/content/Intent;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 1747
    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1750
    .local v0, appWidgetId:I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->addAppWidgetImpl(ILcom/android/launcher2/PendingAddWidgetInfo;)V

    .line 1751
    return-void
.end method

.method addAppWidgetImpl(ILcom/android/launcher2/PendingAddWidgetInfo;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 1756
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v1, :cond_4

    .line 1758
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1759
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1760
    const-string v0, "appWidgetId"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1761
    if-eqz p2, :cond_0

    .line 1762
    iget-object v0, p2, Lcom/android/launcher2/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/launcher2/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1763
    const-string v0, "com.android.launcher.extra.widget.CONFIGURATION_DATA_MIME_TYPE"

    iget-object v2, p2, Lcom/android/launcher2/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1767
    iget-object v2, p2, Lcom/android/launcher2/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    .line 1768
    iget-object v0, p2, Lcom/android/launcher2/PendingAddWidgetInfo;->configurationData:Landroid/os/Parcelable;

    check-cast v0, Landroid/content/ClipData;

    .line 1769
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 1770
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1771
    invoke-virtual {v3, v4}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1772
    invoke-virtual {v0, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 1773
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1774
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 1775
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1776
    const-string v4, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    .line 1778
    if-eqz v3, :cond_1

    .line 1779
    const-string v0, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1791
    :cond_0
    :goto_1
    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 1796
    :goto_2
    return-void

    .line 1780
    :cond_1
    if-eqz v0, :cond_2

    .line 1781
    const-string v2, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 1782
    :cond_2
    if-eqz v2, :cond_0

    .line 1783
    const-string v0, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_1

    .line 1770
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1794
    :cond_4
    iget v0, p0, Lcom/android/launcher2/Launcher;->mAddScreen:I

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/Launcher;->completeAddAppWidget(II)V

    goto :goto_2
.end method

.method addExternalItemToScreen(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;)V
    .locals 1
    .parameter "itemInfo"
    .parameter "layout"

    .prologue
    .line 3127
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Workspace;->addExternalItemToScreen(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3128
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    .line 3132
    :goto_0
    return-void

    .line 3130
    :cond_0
    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->animateDrop()V

    goto :goto_0
.end method

.method addFolder(III)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x1

    .line 1854
    new-instance v11, Lcom/android/launcher2/UserFolderInfo;

    invoke-direct {v11}, Lcom/android/launcher2/UserFolderInfo;-><init>()V

    .line 1855
    const v0, 0x7f0e0004

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v11, Lcom/android/launcher2/UserFolderInfo;->title:Ljava/lang/CharSequence;

    .line 1857
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1858
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    move v3, v2

    move v4, p2

    move v5, p3

    .line 1859
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1860
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    .line 1875
    :goto_0
    return-void

    .line 1865
    :cond_0
    const-wide/16 v5, -0x64

    aget v8, v1, v10

    aget v9, v1, v2

    move-object v3, p0

    move-object v4, v11

    move v7, p1

    invoke-static/range {v3 .. v10}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V

    .line 1868
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    iget-wide v3, v11, Lcom/android/launcher2/UserFolderInfo;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1871
    const v3, 0x7f030012

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-static {v3, p0, v0, v11, v4}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/UserFolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;

    move-result-object v4

    .line 1874
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    aget v6, v1, v10

    aget v7, v1, v2

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v10

    move v5, p1

    move v8, v2

    move v9, v2

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_0
.end method

.method addLiveFolder(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 1843
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1844
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1846
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1847
    iget v0, p0, Lcom/android/launcher2/Launcher;->mAddScreen:I

    iget v1, p0, Lcom/android/launcher2/Launcher;->mAddIntersectCellX:I

    iget v2, p0, Lcom/android/launcher2/Launcher;->mAddIntersectCellY:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->addFolder(III)V

    .line 1851
    :goto_0
    return-void

    .line 1849
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method addLiveFolderFromDrop(Landroid/content/ComponentName;I[I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1831
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 1832
    iput p2, p0, Lcom/android/launcher2/Launcher;->mAddScreen:I

    .line 1833
    iput-object p3, p0, Lcom/android/launcher2/Launcher;->mAddDropPosition:[I

    .line 1835
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1836
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1838
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->addLiveFolder(Landroid/content/Intent;)V

    .line 1839
    return-void
.end method

.method addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .parameter "hostView"
    .parameter "appWidgetInfo"

    .prologue
    .line 1400
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1407
    :cond_0
    :goto_0
    return-void

    .line 1401
    :cond_1
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1402
    .local v0, v:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_0

    .line 1403
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    check-cast v0, Landroid/widget/Advanceable;

    .end local v0           #v:Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 1405
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    goto :goto_0
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3625
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    invoke-interface {v0, p1}, Lcom/android/launcher2/AllAppsView;->setApps(Ljava/util/ArrayList;)V

    .line 3626
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    if-eqz v0, :cond_0

    .line 3627
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CustomizePagedView;->setApps(Ljava/util/ArrayList;)V

    .line 3629
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateIconsAffectedByPackageManagerChanges()V

    .line 3630
    return-void
.end method

.method public bindAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V
    .locals 12
    .parameter "item"

    .prologue
    .line 3521
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3523
    const-wide/16 v10, 0x0

    .line 3527
    .local v10, start:J
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3529
    .local v0, workspace:Lcom/android/launcher2/Workspace;
    iget v8, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    .line 3530
    .local v8, appWidgetId:I
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v8}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    .line 3535
    .local v9, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v1, p0, v8, v9}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 3537
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v8, v9}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 3538
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 3540
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v2, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->screen:I

    iget v3, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellX:I

    iget v4, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellY:I

    iget v5, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    iget v6, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 3543
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v1, v9}, Lcom/android/launcher2/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 3545
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->requestLayout()V

    .line 3547
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3553
    return-void
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3638
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3639
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->removeDialog(I)V

    .line 3640
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    invoke-interface {v0, p1}, Lcom/android/launcher2/AllAppsView;->addApps(Ljava/util/ArrayList;)V

    .line 3641
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    if-eqz v0, :cond_0

    .line 3642
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CustomizePagedView;->addApps(Ljava/util/ArrayList;)V

    .line 3644
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateIconsAffectedByPackageManagerChanges()V

    .line 3645
    return-void
.end method

.method public bindAppsRemoved(Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter
    .parameter "permanent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3673
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->removeDialog(I)V

    .line 3674
    if-eqz p2, :cond_0

    .line 3675
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/ArrayList;)V

    .line 3677
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    invoke-interface {v0, p1}, Lcom/android/launcher2/AllAppsView;->removeApps(Ljava/util/ArrayList;)V

    .line 3678
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    if-eqz v0, :cond_1

    .line 3679
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CustomizePagedView;->removeApps(Ljava/util/ArrayList;)V

    .line 3681
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateIconsAffectedByPackageManagerChanges()V

    .line 3682
    return-void
.end method

.method public bindAppsUpdated(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3653
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3654
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->removeDialog(I)V

    .line 3655
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 3656
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->updateShortcuts(Ljava/util/ArrayList;)V

    .line 3658
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    if-eqz v0, :cond_1

    .line 3659
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    invoke-interface {v0, p1}, Lcom/android/launcher2/AllAppsView;->updateApps(Ljava/util/ArrayList;)V

    .line 3661
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    if-eqz v0, :cond_2

    .line 3662
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CustomizePagedView;->updateApps(Ljava/util/ArrayList;)V

    .line 3664
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateIconsAffectedByPackageManagerChanges()V

    .line 3665
    return-void
.end method

.method public bindFolders(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3510
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3511
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3512
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3513
    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 3471
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3473
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move v9, p2

    .line 3475
    :goto_0
    if-ge v9, p3, :cond_0

    .line 3476
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    move-object v5, v0

    .line 3477
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3478
    iget v2, v5, Lcom/android/launcher2/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 3475
    :goto_1
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_0

    .line 3481
    :pswitch_0
    move-object v0, v5

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v7, v0

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->createShortcut(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v2

    .line 3482
    iget v3, v5, Lcom/android/launcher2/ItemInfo;->screen:I

    iget v4, v5, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v5, v5, Lcom/android/launcher2/ItemInfo;->cellY:I

    move v7, v6

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_1

    .line 3486
    :pswitch_1
    const v3, 0x7f030012

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v0, v5

    check-cast v0, Lcom/android/launcher2/UserFolderInfo;

    move-object v7, v0

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-static {v3, p0, v2, v7, v4}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/UserFolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;

    move-result-object v2

    .line 3489
    iget v3, v5, Lcom/android/launcher2/ItemInfo;->screen:I

    iget v4, v5, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v5, v5, Lcom/android/launcher2/ItemInfo;->cellY:I

    move v7, v6

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_1

    .line 3493
    :pswitch_2
    const v3, 0x7f030019

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v0, v5

    check-cast v0, Lcom/android/launcher2/LiveFolderInfo;

    move-object v7, v0

    invoke-static {v3, p0, v2, v7}, Lcom/android/launcher2/LiveFolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/LiveFolderInfo;)Lcom/android/launcher2/LiveFolderIcon;

    move-result-object v2

    .line 3497
    iget v3, v5, Lcom/android/launcher2/ItemInfo;->screen:I

    iget v4, v5, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v5, v5, Lcom/android/launcher2/ItemInfo;->cellY:I

    move v7, v6

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_1

    .line 3503
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->requestLayout()V

    .line 3504
    return-void

    .line 3478
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bindPackagesUpdated()V
    .locals 1

    .prologue
    .line 3689
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    if-eqz v0, :cond_0

    .line 3690
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/CustomizePagedView;->update()V

    .line 3692
    :cond_0
    return-void
.end method

.method closeAllApps(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    const/4 v2, 0x0

    .line 3079
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->ALL_APPS_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_1

    .line 3080
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 3081
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3082
    sget-object v0, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/Launcher;->cameraZoomIn(Lcom/android/launcher2/Launcher$State;Z)V

    .line 3086
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 3087
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3089
    :cond_1
    return-void

    .line 3084
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/launcher2/AllAppsView;->zoom(FZ)V

    goto :goto_0
.end method

.method closeFolder(Lcom/android/launcher2/Folder;)V
    .locals 5
    .parameter "folder"

    .prologue
    .line 2026
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 2027
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2028
    .local v2, parent:Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 2029
    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/CellLayout;

    move-object v1, v0

    .line 2030
    .local v1, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayout;->removeViewWithoutMarkingCells(Landroid/view/View;)V

    .line 2031
    instance-of v3, p1, Lcom/android/launcher2/DropTarget;

    if-eqz v3, :cond_0

    .line 2033
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/DropTarget;

    move-object v3, v0

    invoke-virtual {v4, v3}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 2036
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->onClose()V

    .line 2037
    return-void
.end method

.method closeSystemDialogs()V
    .locals 1

    .prologue
    .line 1435
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 1438
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1445
    :goto_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->dismissDialog(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1452
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 1453
    return-void

    .line 1440
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1447
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method completeAddApplication(Landroid/content/Intent;III)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1154
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1155
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    move v3, v2

    move v4, p3

    move v5, p4

    .line 1157
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1158
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    .line 1173
    :goto_0
    return-void

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p0}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v8

    .line 1164
    if-eqz v8, :cond_1

    .line 1165
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/high16 v3, 0x1020

    invoke-virtual {v8, v0, v3}, Lcom/android/launcher2/ShortcutInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 1167
    const-wide/16 v3, -0x1

    iput-wide v3, v8, Lcom/android/launcher2/ShortcutInfo;->container:J

    .line 1168
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x0

    aget v3, v1, v3

    aget v4, v1, v2

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v5

    iget v6, p0, Lcom/android/launcher2/Launcher;->mAddIntersectCellX:I

    iget v7, p0, Lcom/android/launcher2/Launcher;->mAddIntersectCellY:I

    move-object v1, v8

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/Workspace;->addApplicationShortcut(Lcom/android/launcher2/ShortcutInfo;IIIZII)V

    goto :goto_0

    .line 1171
    :cond_1
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find ActivityInfo for selected application: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;
    .locals 3
    .parameter "layoutResId"
    .parameter "parent"
    .parameter "info"

    .prologue
    .line 1140
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BubbleTextView;

    .line 1141
    .local v0, favorite:Lcom/android/launcher2/BubbleTextView;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v0, p3, v1}, Lcom/android/launcher2/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/IconCache;)V

    .line 1142
    invoke-virtual {v0, p0}, Lcom/android/launcher2/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    return-object v0
.end method

.method createShortcut(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 1126
    const v1, 0x7f030007

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1980
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1981
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1998
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    :sswitch_0
    move v0, v2

    .line 1983
    goto :goto_1

    .line 1985
    :sswitch_1
    const-string v0, "debug.launcher2.dumpstate"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1986
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->dumpState()V

    move v0, v2

    .line 1987
    goto :goto_1

    .line 1991
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1992
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 1994
    goto :goto_1

    .line 1981
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch

    .line 1992
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 376
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 379
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 380
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_1

    .line 381
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    const v1, 0x7f0e0030

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_0

    .line 383
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    const v1, 0x7f0e0031

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 3741
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3742
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3743
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestoring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedInstanceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3747
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDesktopItems.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sFolders.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->dumpState()V

    .line 3750
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    invoke-interface {v0}, Lcom/android/launcher2/AllAppsView;->dumpState()V

    .line 3751
    const-string v0, "Launcher"

    const-string v1, "END launcher2 dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    return-void
.end method

.method enterSpringLoadedDragMode(Lcom/android/launcher2/CellLayout;)V
    .locals 3
    .parameter "layout"

    .prologue
    const/4 v2, 0x1

    .line 3013
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->enterSpringLoadedDragMode(Lcom/android/launcher2/CellLayout;)V

    .line 3014
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_1

    .line 3015
    sget-object v0, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/launcher2/Launcher;->cameraZoomIn(Lcom/android/launcher2/Launcher$State;ZZ)V

    .line 3016
    sget-object v0, Lcom/android/launcher2/Launcher$State;->ALL_APPS_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 3023
    :cond_0
    :goto_0
    return-void

    .line 3017
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_0

    .line 3018
    sget-object v0, Lcom/android/launcher2/Launcher$State;->CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/launcher2/Launcher;->cameraZoomIn(Lcom/android/launcher2/Launcher$State;ZZ)V

    .line 3019
    sget-object v0, Lcom/android/launcher2/Launcher$State;->CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    goto :goto_0
.end method

.method exitSpringLoadedDragMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3026
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->ALL_APPS_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_1

    .line 3027
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v1, Lcom/android/launcher2/Workspace$ShrinkState;->BOTTOM_VISIBLE:Lcom/android/launcher2/Workspace$ShrinkState;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->exitSpringLoadedDragMode(Lcom/android/launcher2/Workspace$ShrinkState;)V

    .line 3028
    sget-object v0, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/Launcher;->cameraZoomOut(Lcom/android/launcher2/Launcher$State;Z)V

    .line 3029
    sget-object v0, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 3037
    :cond_0
    :goto_0
    return-void

    .line 3030
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_0

    .line 3031
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v1, Lcom/android/launcher2/Workspace$ShrinkState;->TOP:Lcom/android/launcher2/Workspace$ShrinkState;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->exitSpringLoadedDragMode(Lcom/android/launcher2/Workspace$ShrinkState;)V

    .line 3032
    sget-object v0, Lcom/android/launcher2/Launcher$State;->CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/Launcher;->cameraZoomOut(Lcom/android/launcher2/Launcher$State;Z)V

    .line 3033
    sget-object v0, Lcom/android/launcher2/Launcher$State;->CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    goto :goto_0
.end method

.method public finishBindingItems()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 3561
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3563
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 3564
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3565
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3568
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v1, "launcher.user_folder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 3569
    if-eqz v1, :cond_3

    .line 3570
    array-length v2, v1

    move v3, v6

    :goto_0
    if-ge v3, v2, :cond_2

    aget-wide v4, v1, v3

    .line 3571
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderInfo;

    .line 3572
    if-eqz v0, :cond_1

    .line 3573
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->openFolder(Lcom/android/launcher2/FolderInfo;)V

    .line 3570
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 3576
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 3577
    if-eqz v0, :cond_3

    .line 3578
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->requestFocus()Z

    .line 3582
    :cond_3
    iput-object v7, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 3585
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    .line 3586
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v0}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 3587
    iput-object v7, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 3592
    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_6

    .line 3593
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    move v1, v6

    .line 3594
    :goto_1
    if-ge v1, v0, :cond_6

    .line 3595
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 3594
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3599
    :cond_6
    iput-boolean v6, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    move v1, v6

    .line 3603
    :goto_2
    sget-object v0, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 3604
    sget-object v0, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher$PendingAddArguments;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->completeAdd(Lcom/android/launcher2/Launcher$PendingAddArguments;)V

    .line 3603
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 3606
    :cond_7
    sget-object v0, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3607
    return-void
.end method

.method public getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 3422
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 3423
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    .line 3425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method getCustomizationDrawer()Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeCustomizationDrawer:Lcom/android/launcher2/CustomizeTrayTabHost;

    return-object v0
.end method

.method public getModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method getWorkspace()Lcom/android/launcher2/Workspace;
    .locals 1

    .prologue
    .line 2460
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method hideCustomizationDrawer(Z)V
    .locals 2
    .parameter "animated"

    .prologue
    .line 3117
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_1

    .line 3118
    :cond_0
    sget-object v0, Lcom/android/launcher2/Launcher$State;->CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/Launcher;->cameraZoomIn(Lcom/android/launcher2/Launcher$State;Z)V

    .line 3120
    :cond_1
    return-void
.end method

.method public isAllAppsVisible()Z
    .locals 2

    .prologue
    .line 2613
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCustomizeState()Z
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_0

    .line 287
    const/4 v0, 0x1

    .line 289
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 1704
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchHotSeat(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_1

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1101
    :cond_1
    const/4 v0, -0x1

    .line 1102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08002c

    if-ne v1, v2, :cond_3

    .line 1103
    const/4 v0, 0x0

    .line 1109
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->loadHotseats()V

    .line 1110
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseats:[Landroid/content/Intent;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseats:[Landroid/content/Intent;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1111
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseats:[Landroid/content/Intent;

    aget-object v0, v1, v0

    const-string v1, "hotseat"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1104
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08002d

    if-ne v1, v2, :cond_2

    .line 1105
    const/4 v0, 0x1

    goto :goto_1
.end method

.method lockAllApps()V
    .locals 0

    .prologue
    .line 3093
    return-void
.end method

.method public lockScreenOrientation()V
    .locals 1

    .prologue
    .line 3726
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->mapConfigurationOriActivityInfoOri(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    .line 3728
    return-void
.end method

.method public nextScreen(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->scrollRight()V

    .line 1095
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 680
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 688
    if-ne p2, v3, :cond_2

    iget v2, p0, Lcom/android/launcher2/Launcher;->mAddScreen:I

    if-eq v2, v3, :cond_2

    .line 689
    new-instance v1, Lcom/android/launcher2/Launcher$PendingAddArguments;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/launcher2/Launcher$PendingAddArguments;-><init>(Lcom/android/launcher2/Launcher$1;)V

    .line 690
    .local v1, args:Lcom/android/launcher2/Launcher$PendingAddArguments;
    iput p1, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->requestCode:I

    .line 691
    iput-object p3, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    .line 692
    iget v2, p0, Lcom/android/launcher2/Launcher;->mAddScreen:I

    iput v2, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    .line 693
    iget v2, p0, Lcom/android/launcher2/Launcher;->mAddIntersectCellX:I

    iput v2, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellX:I

    .line 694
    iget v2, p0, Lcom/android/launcher2/Launcher;->mAddIntersectCellY:I

    iput v2, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellY:I

    .line 697
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 698
    sget-object v2, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    .end local v1           #args:Lcom/android/launcher2/Launcher$PendingAddArguments;
    :cond_0
    :goto_0
    return-void

    .line 700
    .restart local v1       #args:Lcom/android/launcher2/Launcher$PendingAddArguments;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->completeAdd(Lcom/android/launcher2/Launcher$PendingAddArguments;)V

    goto :goto_0

    .line 702
    .end local v1           #args:Lcom/android/launcher2/Launcher$PendingAddArguments;
    :cond_2
    const/16 v2, 0x9

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    :cond_3
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 706
    const-string v2, "appWidgetId"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 707
    .local v0, appWidgetId:I
    if-eq v0, v3, :cond_0

    .line 708
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1311
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 1314
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1315
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1316
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1317
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1319
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 1320
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 1321
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_1

    .line 2004
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 2016
    :goto_0
    return-void

    .line 2005
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2006
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    goto :goto_0

    .line 2007
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2008
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPreviousView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->dismissPreview(Landroid/view/View;)V

    .line 2009
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mNextView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->dismissPreview(Landroid/view/View;)V

    goto :goto_0

    .line 2011
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 2014
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->showOutlinesTemporarily()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 2065
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2066
    .local v4, tag:Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v5, :cond_1

    .line 2068
    move-object v0, v4

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v5, v0

    iget-object v1, v5, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2069
    .local v1, intent:Landroid/content/Intent;
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 2070
    .local v2, pos:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2071
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v2, v8

    aget v7, v2, v11

    aget v8, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v9, v2, v11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2073
    invoke-virtual {p0, v1, v4}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v3

    .line 2075
    .local v3, success:Z
    if-eqz v3, :cond_0

    instance-of v5, p1, Lcom/android/launcher2/BubbleTextView;

    if-eqz v5, :cond_0

    .line 2076
    check-cast p1, Lcom/android/launcher2/BubbleTextView;

    .end local p1
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    .line 2077
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {v5, v11}, Lcom/android/launcher2/BubbleTextView;->setStayPressed(Z)V

    .line 2088
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pos:[I
    .end local v3           #success:Z
    .end local v4           #tag:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 2079
    .restart local v4       #tag:Ljava/lang/Object;
    .restart local p1
    :cond_1
    instance-of v5, v4, Lcom/android/launcher2/FolderInfo;

    if-eqz v5, :cond_2

    .line 2080
    check-cast v4, Lcom/android/launcher2/FolderInfo;

    .end local v4           #tag:Ljava/lang/Object;
    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->handleFolderClick(Lcom/android/launcher2/FolderInfo;)V

    goto :goto_0

    .line 2081
    .restart local v4       #tag:Ljava/lang/Object;
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHandleView:Lcom/android/launcher2/HandleView;

    if-ne p1, v5, :cond_0

    .line 2082
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v6, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    if-ne v5, v6, :cond_3

    .line 2083
    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    goto :goto_0

    .line 2085
    :cond_3
    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    goto :goto_0
.end method

.method public onClickAllAppsButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    .line 2141
    return-void
.end method

.method public onClickAppMarketButton(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2145
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    const-string v1, "app market"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 2147
    :cond_0
    return-void
.end method

.method public onClickConfigureButton(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 2130
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->addItems()V

    .line 2131
    return-void
.end method

.method public onClickSearchButton(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2103
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/launcher2/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2105
    const v0, 0x7f040004

    const v1, 0x7f040006

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->overridePendingTransition(II)V

    .line 2106
    return-void
.end method

.method public onClickVoiceButton(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 2114
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startVoiceSearch()V

    .line 2115
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x400

    .line 295
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 297
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isInPlaceRotationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 300
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 304
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 305
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 306
    new-instance v2, Lcom/android/launcher2/DragController;

    invoke-direct {v2, p0}, Lcom/android/launcher2/DragController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 307
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 309
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 310
    new-instance v2, Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 311
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 318
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->loadHotseats()V

    .line 319
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkForLocaleChange()V

    .line 320
    const v2, 0x7f030015

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    .line 321
    const v2, 0x7f08002e

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CustomizeTrayTabHost;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeCustomizationDrawer:Lcom/android/launcher2/CustomizeTrayTabHost;

    .line 322
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeCustomizationDrawer:Lcom/android/launcher2/CustomizeTrayTabHost;

    if-eqz v2, :cond_1

    .line 324
    const v2, 0x7f080019

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CustomizePagedView;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    .line 328
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setupViews()V

    .line 330
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->registerContentObservers()V

    .line 332
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->lockAllApps()V

    .line 334
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 335
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 338
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    if-eqz v2, :cond_2

    .line 339
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mCustomizePagedView:Lcom/android/launcher2/CustomizePagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/CustomizePagedView;->update()V

    .line 346
    :cond_2
    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v2, :cond_3

    .line 347
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 351
    :cond_3
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 352
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 354
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 355
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 359
    sget-object v2, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/launcher2/Launcher;->sAppMarketIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez v2, :cond_5

    .line 360
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateIconsAffectedByPackageManagerChanges()V

    .line 362
    :cond_5
    sget-object v2, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_6

    .line 363
    sget-object v2, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->updateGlobalSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 365
    :cond_6
    sget-object v2, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_7

    .line 366
    sget-object v2, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->updateVoiceSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 368
    :cond_7
    sget-object v2, Lcom/android/launcher2/Launcher;->sAppMarketIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_8

    .line 369
    sget-object v2, Lcom/android/launcher2/Launcher;->sAppMarketIcon:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 372
    :cond_8
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 2469
    packed-switch p1, :pswitch_data_0

    .line 2476
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2471
    :pswitch_0
    new-instance v0, Lcom/android/launcher2/Launcher$CreateShortcut;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$CreateShortcut;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher$CreateShortcut;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2473
    :pswitch_1
    new-instance v0, Lcom/android/launcher2/Launcher$RenameFolder;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$RenameFolder;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher$RenameFolder;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2469
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1612
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 1642
    :goto_0
    return v0

    .line 1616
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1618
    const v0, 0x7f0e0035

    invoke-interface {p1, v4, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1621
    const/4 v0, 0x3

    const v1, 0x7f0e0036

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080042

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x4d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1624
    const/4 v0, 0x4

    const v1, 0x7f0e0037

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x57

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1627
    const/4 v0, 0x5

    const v1, 0x7f0e0038

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080060

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1630
    const/4 v0, 0x6

    const v1, 0x7f0e0039

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x10802fb

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x4e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1634
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1635
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1638
    const/4 v1, 0x7

    const v2, 0x7f0e003b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080049

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x50

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move v0, v4

    .line 1642
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1545
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1548
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1552
    :goto_0
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 1554
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1556
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 1558
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    .line 1560
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->unbindDesktopItems()V

    .line 1562
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1565
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPreviousView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPreviousView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->dismissPreview(Landroid/view/View;)V

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mNextView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1569
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mNextView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->dismissPreview(Landroid/view/View;)V

    .line 1572
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1574
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1575
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->removeAllViews()V

    .line 1576
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 1577
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 1579
    invoke-static {}, Landroid/animation/ValueAnimator;->clearAllAnimations()V

    .line 1580
    return-void

    .line 1549
    :catch_0
    move-exception v0

    .line 1550
    const-string v1, "Launcher"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1325
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 1326
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 1328
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1330
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 1332
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 1333
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 782
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 783
    .local v1, handled:Z
    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->acceptFilter()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 785
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 787
    .local v0, gotKey:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    move-result v2

    .line 803
    .end local v0           #gotKey:Z
    :goto_0
    return v2

    .line 799
    :cond_0
    const/16 v2, 0x52

    if-ne p1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 800
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 803
    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 808
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    .line 809
    .local v0, handled:Z
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->acceptFilter()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 811
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v1

    .line 812
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 813
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 814
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 815
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 823
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    move-result v2

    .line 832
    .end local v1           #text:Ljava/lang/String;
    :goto_0
    return v2

    .line 828
    :cond_0
    const/16 v2, 0x52

    if-ne p1, v2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 829
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 832
    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2256
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v3, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-eq v2, v3, :cond_0

    move v2, v5

    .line 2323
    :goto_0
    return v2

    .line 2260
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2284
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v5

    .line 2285
    goto :goto_0

    .line 2262
    :sswitch_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v3, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    if-eq v2, v3, :cond_1

    .line 2263
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v5, v4}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    .line 2265
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->showPreviews(Landroid/view/View;)V

    :cond_1
    move v2, v4

    .line 2267
    goto :goto_0

    .line 2269
    :sswitch_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v3, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    if-eq v2, v3, :cond_2

    .line 2270
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v5, v4}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    .line 2272
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->showPreviews(Landroid/view/View;)V

    :cond_2
    move v2, v4

    .line 2274
    goto :goto_0

    .line 2276
    :sswitch_2
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v3, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    if-eq v2, v3, :cond_3

    .line 2277
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v5, v4}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    .line 2279
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->showPreviews(Landroid/view/View;)V

    :cond_3
    move v2, v4

    .line 2281
    goto :goto_0

    .line 2288
    :cond_4
    instance-of v2, p1, Lcom/android/launcher2/CellLayout;

    if-nez v2, :cond_5

    .line 2289
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 2292
    .restart local p1
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 2293
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$CellInfo;

    .line 2295
    .local v1, longClickCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    if-eqz v1, :cond_6

    iget-boolean v2, v1, Lcom/android/launcher2/CellLayout$CellInfo;->valid:Z

    if-nez v2, :cond_7

    :cond_6
    move v2, v4

    .line 2296
    goto :goto_0

    .line 2299
    :cond_7
    iget-object v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2301
    .local v0, itemUnderLongClick:Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->allowLongPress()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v2}, Lcom/android/launcher2/DragController;->isDragging()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2302
    if-nez v0, :cond_a

    .line 2304
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/Workspace;->setAllowLongPress(Z)V

    .line 2305
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v5, v4}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    .line 2307
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2308
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->addItems()V

    :cond_8
    :goto_1
    move v2, v4

    .line 2323
    goto/16 :goto_0

    .line 2310
    :cond_9
    iget v2, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v3, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/Launcher;->showAddDialog(II)V

    goto :goto_1

    .line 2313
    :cond_a
    instance-of v2, v0, Lcom/android/launcher2/Folder;

    if-nez v2, :cond_8

    .line 2315
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v5, v4}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    .line 2317
    iget v2, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iput v2, p0, Lcom/android/launcher2/Launcher;->mAddIntersectCellX:I

    .line 2318
    iget v2, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    iput v2, p0, Lcom/android/launcher2/Launcher;->mAddIntersectCellY:I

    .line 2319
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->startDrag(Lcom/android/launcher2/CellLayout$CellInfo;)V

    goto :goto_1

    .line 2260
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080016 -> :sswitch_2
        0x7f080029 -> :sswitch_0
        0x7f08002a -> :sswitch_1
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v2, 0x40

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1457
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1460
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1462
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeSystemDialogs()V

    .line 1464
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_3

    move v0, v4

    .line 1469
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1470
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Workspace;->unshrink(Z)V

    .line 1473
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 1474
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v2, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1475
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/Workspace;->moveToDefaultScreen(Z)V

    .line 1477
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 1479
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 1480
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1481
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 1483
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1486
    :cond_2
    return-void

    :cond_3
    move v0, v3

    .line 1464
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 1671
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1689
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1673
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->addItems()V

    move v0, v1

    .line 1674
    goto :goto_0

    .line 1676
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->manageApps()V

    move v0, v1

    .line 1677
    goto :goto_0

    .line 1679
    :pswitch_2
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    move v0, v1

    .line 1680
    goto :goto_0

    .line 1682
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    move v0, v1

    .line 1683
    goto :goto_0

    .line 1685
    :pswitch_4
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->showNotifications()V

    move v0, v1

    .line 1686
    goto :goto_0

    .line 1671
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 733
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 735
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPreviousView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPreviousView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->dismissPreview(Landroid/view/View;)V

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mNextView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mNextView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->dismissPreview(Landroid/view/View;)V

    .line 741
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 742
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    .line 743
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2481
    packed-switch p1, :pswitch_data_0

    .line 2493
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2485
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    if-eqz v0, :cond_0

    .line 2486
    const v0, 0x7f080035

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2487
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 2488
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2489
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0

    .line 2481
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1647
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1651
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    invoke-interface {v2}, Lcom/android/launcher2/AllAppsView;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 1666
    :goto_0
    return v2

    .line 1656
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    invoke-interface {v2}, Lcom/android/launcher2/AllAppsView;->isVisible()Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v4

    .line 1657
    .local v1, visible:Z
    :goto_1
    invoke-interface {p1, v4, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1658
    const/4 v2, 0x2

    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1661
    if-eqz v1, :cond_1

    .line 1662
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1663
    .local v0, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->existsEmptyCell()Z

    move-result v2

    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .end local v0           #layout:Lcom/android/launcher2/CellLayout;
    :cond_1
    move v2, v4

    .line 1666
    goto :goto_0

    .end local v1           #visible:Z
    :cond_2
    move v1, v3

    .line 1656
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1492
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 715
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 716
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 717
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v0, :cond_1

    .line 718
    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 719
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0, p0, v2}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 720
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 721
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    if-eqz v0, :cond_2

    .line 724
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/BubbleTextView;->setStayPressed(Z)V

    .line 728
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon()V

    .line 729
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    .line 749
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    invoke-interface {v0}, Lcom/android/launcher2/AllAppsView;->surrender()V

    .line 750
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    .line 1496
    const-string v0, "launcher.current_screen"

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1498
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolders()Ljava/util/ArrayList;

    move-result-object v1

    .line 1499
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1500
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1501
    new-array v3, v2, [J

    .line 1502
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 1503
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v0

    .line 1504
    iget-wide v5, v0, Lcom/android/launcher2/FolderInfo;->id:J

    aput-wide v5, v3, v4

    .line 1502
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 1506
    :cond_0
    const-string v0, "launcher.user_folder"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1511
    :goto_1
    const-string v0, "launcher.state"

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1513
    iget v0, p0, Lcom/android/launcher2/Launcher;->mAddScreen:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    .line 1514
    const-string v0, "launcher.add_screen"

    iget v1, p0, Lcom/android/launcher2/Launcher;->mAddScreen:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1515
    const-string v0, "launcher.add_cellX"

    iget v1, p0, Lcom/android/launcher2/Launcher;->mAddIntersectCellX:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1516
    const-string v0, "launcher.add_cellY"

    iget v1, p0, Lcom/android/launcher2/Launcher;->mAddIntersectCellY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1519
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_2

    .line 1520
    const-string v0, "launcher.rename_folder"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1521
    const-string v0, "launcher.rename_folder_id"

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v1, v1, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1525
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    instance-of v0, v0, Lcom/android/launcher2/AllAppsTabbed;

    if-eqz v0, :cond_3

    .line 1526
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    check-cast v0, Lcom/android/launcher2/AllAppsTabbed;

    .line 1527
    invoke-virtual {v0}, Lcom/android/launcher2/AllAppsTabbed;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 1528
    if-eqz v0, :cond_3

    .line 1529
    const-string v1, "allapps_currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    const-string v0, "allapps_currentPage"

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAllAppsPagedView:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AllAppsPagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1535
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeCustomizationDrawer:Lcom/android/launcher2/CustomizeTrayTabHost;

    if-eqz v0, :cond_4

    .line 1536
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeCustomizationDrawer:Lcom/android/launcher2/CustomizeTrayTabHost;

    invoke-virtual {v0}, Lcom/android/launcher2/CustomizeTrayTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 1537
    if-eqz v0, :cond_4

    .line 1538
    const-string v1, "customize_currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    :cond_4
    return-void

    .line 1508
    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1699
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/launcher2/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1700
    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 2093
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 2094
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 1336
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 1337
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 1338
    return-void

    .line 1336
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onWorkspaceClick(Lcom/android/launcher2/CellLayout;)V
    .locals 1
    .parameter "layout"

    .prologue
    .line 3135
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/Launcher;->showWorkspace(ZLcom/android/launcher2/CellLayout;)V

    .line 3136
    return-void
.end method

.method public openFolder(Lcom/android/launcher2/FolderInfo;)V
    .locals 3
    .parameter "folderInfo"

    .prologue
    .line 2236
    instance-of v1, p1, Lcom/android/launcher2/UserFolderInfo;

    if-eqz v1, :cond_1

    .line 2237
    invoke-static {p0}, Lcom/android/launcher2/UserFolder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/UserFolder;

    move-result-object v0

    .line 2244
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 2245
    invoke-virtual {v0, p0}, Lcom/android/launcher2/Folder;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 2247
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderInfo;)V

    .line 2248
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 2250
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v2, p1, Lcom/android/launcher2/FolderInfo;->screen:I

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher2/Workspace;->addInFullScreen(Landroid/view/View;I)V

    .line 2252
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->onOpen()V

    .line 2253
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :cond_0
    return-void

    .line 2238
    :cond_1
    instance-of v1, p1, Lcom/android/launcher2/LiveFolderInfo;

    if-eqz v1, :cond_0

    .line 2239
    invoke-static {p0, p1}, Lcom/android/launcher2/LiveFolder;->fromXml(Landroid/content/Context;Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/LiveFolder;

    move-result-object v0

    .restart local v0       #openFolder:Lcom/android/launcher2/Folder;
    goto :goto_0
.end method

.method public previousScreen(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->scrollLeft()V

    .line 1088
    :cond_0
    return-void
.end method

.method processShortcut(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 1810
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1811
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1813
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1814
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1815
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1817
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1818
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1819
    const-string v0, "android.intent.extra.TITLE"

    const v2, 0x7f0e002e

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1820
    const/4 v0, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 1824
    :goto_0
    return-void

    .line 1822
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method processShortcutFromDrop(Landroid/content/ComponentName;I[I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1799
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 1800
    iput p2, p0, Lcom/android/launcher2/Launcher;->mAddScreen:I

    .line 1801
    iput-object p3, p0, Lcom/android/launcher2/Launcher;->mAddDropPosition:[I

    .line 1803
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1804
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1805
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->processShortcut(Landroid/content/Intent;)V

    .line 1806
    return-void
.end method

.method processWallpaper(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1827
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1828
    return-void
.end method

.method public removeAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V
    .locals 1
    .parameter "launcherInfo"

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1418
    iget-object v0, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->removeWidgetToAutoAdvance(Landroid/view/View;)V

    .line 1419
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1420
    return-void
.end method

.method removeFolder(Lcom/android/launcher2/FolderInfo;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 1878
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    return-void
.end method

.method removeWidgetToAutoAdvance(Landroid/view/View;)V
    .locals 1
    .parameter "hostView"

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 1414
    :cond_0
    return-void
.end method

.method setAllAppsPagedView(Lcom/android/launcher2/AllAppsPagedView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 3430
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mAllAppsPagedView:Lcom/android/launcher2/AllAppsPagedView;

    .line 3431
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3409
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3410
    const-string v0, "Launcher"

    const-string v1, "setLoadOnResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    move v0, v2

    .line 3414
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showAllApps(Z)V
    .locals 2
    .parameter "animated"

    .prologue
    .line 2956
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 2981
    :goto_0
    return-void

    .line 2960
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2961
    sget-object v0, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/Launcher;->cameraZoomOut(Lcom/android/launcher2/Launcher$State;Z)V

    .line 2966
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 2967
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2970
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeleteZone;->setVisibility(I)V

    .line 2973
    sget-object v0, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 2976
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    .line 2977
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 2980
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 2963
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAllAppsGrid:Lcom/android/launcher2/AllAppsView;

    const/high16 v1, 0x3f80

    invoke-interface {v0, v1, p1}, Lcom/android/launcher2/AllAppsView;->zoom(FZ)V

    goto :goto_1
.end method

.method showOutOfSpaceMessage()V
    .locals 2

    .prologue
    .line 1423
    const v0, 0x7f0e0029

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1424
    return-void
.end method

.method showRenameDialog(Lcom/android/launcher2/FolderInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2496
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    .line 2497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 2498
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showDialog(I)V

    .line 2499
    return-void
.end method

.method showWorkspace(Z)V
    .locals 1
    .parameter "animated"

    .prologue
    .line 2984
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->showWorkspace(ZLcom/android/launcher2/CellLayout;)V

    .line 2985
    return-void
.end method

.method showWorkspace(ZLcom/android/launcher2/CellLayout;)V
    .locals 2
    .parameter "animated"
    .parameter "layout"

    .prologue
    .line 2988
    if-eqz p2, :cond_1

    .line 2991
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/Workspace;->unshrink(Lcom/android/launcher2/CellLayout;)V

    .line 2995
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->ALL_APPS:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_2

    .line 2996
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->closeAllApps(Z)V

    .line 3002
    :cond_0
    :goto_1
    sget-object v0, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 3005
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    .line 3006
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 3009
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3010
    return-void

    .line 2993
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->unshrink(Z)V

    goto :goto_0

    .line 2997
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_0

    .line 2998
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->hideCustomizationDrawer(Z)V

    goto :goto_1
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 1584
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 1585
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1586
    return-void
.end method

.method startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0e0008

    const/4 v1, 0x0

    .line 2191
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2200
    :goto_0
    return-void

    .line 2192
    :catch_0
    move-exception v0

    .line 2193
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2194
    :catch_1
    move-exception v0

    .line 2195
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2196
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const v1, 0x7f0e0008

    const/4 v4, 0x0

    .line 2172
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2174
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2175
    const/4 v0, 0x1

    .line 2186
    :goto_0
    return v0

    .line 2176
    :catch_0
    move-exception v0

    .line 2177
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2178
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch. tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move v0, v4

    .line 2186
    goto :goto_0

    .line 2179
    :catch_1
    move-exception v0

    .line 2180
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2181
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method startApplicationDetailsActivity(Landroid/content/ComponentName;)V
    .locals 5
    .parameter

    .prologue
    .line 2150
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2151
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2153
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 2154
    return-void
.end method

.method startApplicationUninstallActivity(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 5
    .parameter

    .prologue
    .line 2157
    iget v0, p1, Lcom/android/launcher2/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2160
    const v0, 0x7f0e004c

    .line 2161
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2169
    :goto_0
    return-void

    .line 2163
    :cond_0
    iget-object v0, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2164
    iget-object v1, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 2165
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    const-string v4, "package"

    invoke-static {v4, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2167
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startBinding()V
    .locals 4

    .prologue
    .line 3439
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3440
    .local v3, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 3441
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3443
    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 3444
    .local v2, layoutParent:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    .line 3441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3461
    .end local v2           #layoutParent:Lcom/android/launcher2/CellLayout;
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->unbindDesktopItems()V

    .line 3462
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1592
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 1594
    if-nez p1, :cond_1

    .line 1596
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object v0

    .line 1597
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    move-object v1, v0

    .line 1599
    :goto_0
    if-nez p3, :cond_0

    .line 1600
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1601
    const-string v2, "source"

    const-string v3, "launcher-search"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    .line 1604
    :goto_1
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1606
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 1608
    return-void

    :cond_0
    move-object v4, p3

    goto :goto_1

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method public unlockScreenOrientation()V
    .locals 4

    .prologue
    .line 3730
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/Launcher$21;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$21;-><init>(Lcom/android/launcher2/Launcher;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3735
    return-void
.end method

.method public zoomed(F)V
    .locals 2
    .parameter "zoom"

    .prologue
    .line 2619
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2620
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 2622
    :cond_0
    return-void
.end method
