.class public Lcom/google/android/music/TabbedLists;
.super Landroid/app/ActivityGroup;
.source "TabbedLists.java"

# interfaces
.implements Lcom/google/android/music/Workspace$ScreenSwitchListener;
.implements Lcom/google/android/music/TopBar$MenuCustomizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/TabbedLists$TabbedNoContentListener;,
        Lcom/google/android/music/TabbedLists$TabbedAlbumChangeListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAB_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "TabbedLists"

.field private static mActiveTab:I


# instance fields
.field private mActivityManager:Landroid/app/LocalActivityManager;

.field private mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mAppState:Lcom/google/android/music/activitymanagement/AppState;

.field mContentViewContainer:Landroid/view/ViewGroup;

.field private mMenuCustomizers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/TopBar$MenuCustomizer;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNoContentListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/TabbedLists$TabbedNoContentListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRepAlbumChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/TabbedLists$TabbedAlbumChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollView:Lcom/google/android/music/Workspace;

.field private mTabScroller:Lcom/google/android/music/TabRow;

.field private mTabToActivityManagerView:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "TabbedLists"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/TabbedLists;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/ActivityGroup;-><init>(Z)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/TabbedLists;->mTabToActivityManagerView:Lcom/google/common/collect/BiMap;

    .line 74
    return-void
.end method

.method public static addMenuCustomizer(Landroid/app/Activity;Lcom/google/android/music/TopBar$MenuCustomizer;)V
    .locals 5
    .parameter "activity"
    .parameter "customizer"

    .prologue
    .line 325
    const-string v2, "TabbedLists"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addMenuCustomizer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v1, 0x0

    .line 328
    .local v1, tabbedListActivity:Lcom/google/android/music/TabbedLists;
    :cond_0
    if-eqz p0, :cond_1

    instance-of v2, p0, Lcom/google/android/music/TabbedLists;

    if-eqz v2, :cond_1

    .line 329
    move-object v0, p0

    check-cast v0, Lcom/google/android/music/TabbedLists;

    move-object v1, v0

    .line 331
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_0

    .line 333
    :cond_2
    if-nez v1, :cond_3

    .line 334
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can only register background adapters to TabbedLists if the activity is in a tabbed list"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 337
    :cond_3
    iget-object v2, v1, Lcom/google/android/music/TabbedLists;->mMenuCustomizers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method private addSubActivity(Ljava/lang/Class;)V
    .locals 5
    .parameter "target"

    .prologue
    .line 179
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, activityId:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/music/TabbedLists;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v3, v0, v1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v2

    .line 182
    .local v2, win:Landroid/view/Window;
    iget-object v3, p0, Lcom/google/android/music/TabbedLists;->mContentViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    return-void
.end method

.method public static getNoContentListener(Landroid/app/Activity;)Lcom/google/android/music/NoContentListener;
    .locals 5
    .parameter "activity"

    .prologue
    .line 237
    const/4 v2, 0x0

    .line 239
    .local v2, tabbedListActivity:Lcom/google/android/music/TabbedLists;
    :cond_0
    if-eqz p0, :cond_1

    instance-of v3, p0, Lcom/google/android/music/TabbedLists;

    if-eqz v3, :cond_1

    .line 240
    move-object v0, p0

    check-cast v0, Lcom/google/android/music/TabbedLists;

    move-object v2, v0

    .line 242
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_0

    .line 244
    :cond_2
    if-nez v2, :cond_3

    .line 245
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Can only register background adapters to TabbedLists if the activity is in a tabbed list"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    :cond_3
    new-instance v1, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;

    iget-object v3, v2, Lcom/google/android/music/TabbedLists;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-direct {v1, v3}, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;-><init>(Lcom/google/android/music/NoContentListener;)V

    .line 250
    .local v1, listener:Lcom/google/android/music/TabbedLists$TabbedNoContentListener;
    iget-object v3, v2, Lcom/google/android/music/TabbedLists;->mNoContentListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-object v1
.end method

.method public static getRepresentativeAlbumChangeListener(Landroid/app/Activity;)Lcom/google/android/music/RepresentativeAlbumChangeListener;
    .locals 5
    .parameter "activity"

    .prologue
    .line 219
    const/4 v2, 0x0

    .line 221
    .local v2, tabbedListActivity:Lcom/google/android/music/TabbedLists;
    :cond_0
    if-eqz p0, :cond_1

    instance-of v3, p0, Lcom/google/android/music/TabbedLists;

    if-eqz v3, :cond_1

    .line 222
    move-object v0, p0

    check-cast v0, Lcom/google/android/music/TabbedLists;

    move-object v2, v0

    .line 224
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_0

    .line 226
    :cond_2
    if-nez v2, :cond_3

    .line 227
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Can only register background adapters to TabbedLists if the activity is in a tabbed list"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    :cond_3
    new-instance v1, Lcom/google/android/music/TabbedLists$TabbedAlbumChangeListener;

    iget-object v3, v2, Lcom/google/android/music/TabbedLists;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-direct {v1, v3}, Lcom/google/android/music/TabbedLists$TabbedAlbumChangeListener;-><init>(Lcom/google/android/music/RepresentativeAlbumChangeListener;)V

    .line 232
    .local v1, listener:Lcom/google/android/music/TabbedLists$TabbedAlbumChangeListener;
    iget-object v3, v2, Lcom/google/android/music/TabbedLists;->mRepAlbumChangeListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    return-object v1
.end method

.method public static isInTab(Landroid/app/Activity;)Z
    .locals 2
    .parameter "activity"

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 209
    .local v0, parent:Landroid/app/Activity;
    :cond_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/music/TabbedLists;

    if-eqz v1, :cond_1

    .line 210
    const/4 v1, 0x1

    .line 214
    :goto_0
    return v1

    .line 212
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 214
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 366
    iget-object v2, p0, Lcom/google/android/music/TabbedLists;->mMenuCustomizers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/TopBar$MenuCustomizer;

    .line 367
    .local v1, menuCustomizer:Lcom/google/android/music/TopBar$MenuCustomizer;
    invoke-interface {v1, p1}, Lcom/google/android/music/TopBar$MenuCustomizer;->createOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V

    goto :goto_0

    .line 369
    .end local v1           #menuCustomizer:Lcom/google/android/music/TopBar$MenuCustomizer;
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 191
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_0

    const v2, 0x7f0f0081

    invoke-virtual {p0, v2}, Lcom/google/android/music/TabbedLists;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    iget-object v3, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    invoke-virtual {v3}, Lcom/google/android/music/Workspace;->getCurrentScreen()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    .line 194
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 196
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 200
    .end local v1           #v:Landroid/view/View;
    :cond_0
    if-nez v0, :cond_1

    .line 201
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 203
    :cond_1
    return v0
.end method

.method findCurrentMenuCustomizer()Lcom/google/android/music/TopBar$MenuCustomizer;
    .locals 5

    .prologue
    .line 354
    iget-object v2, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    if-eqz v2, :cond_0

    .line 355
    iget-object v2, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    invoke-virtual {v2}, Lcom/google/android/music/Workspace;->getCurrentScreen()I

    move-result v1

    .line 356
    .local v1, i:I
    iget-object v2, p0, Lcom/google/android/music/TabbedLists;->mMenuCustomizers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/TopBar$MenuCustomizer;

    .line 357
    .local v0, customizer:Lcom/google/android/music/TopBar$MenuCustomizer;
    const-string v2, "TabbedLists"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " customizer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    .line 360
    .end local v0           #customizer:Lcom/google/android/music/TopBar$MenuCustomizer;
    .end local v1           #i:I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 78
    sget-boolean v6, Lcom/google/android/music/TabbedLists;->LOGV:Z

    if-eqz v6, :cond_0

    const-string v6, "TabbedLists"

    const-string v7, "onCreate()..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-static {p0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/TabbedLists;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 82
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v6, v10}, Lcom/google/android/music/activitymanagement/AppState;->setUseFullScreen(Z)V

    .line 83
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v6}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v0

    .line 85
    .local v0, actionBarController:Lcom/google/android/music/TopBar$ActionBarController;
    invoke-virtual {v0, p0}, Lcom/google/android/music/TopBar$ActionBarController;->setMenuCustomizer(Lcom/google/android/music/TopBar$MenuCustomizer;)V

    .line 86
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v6}, Lcom/google/android/music/activitymanagement/AppState;->getActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/TabbedLists;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 87
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/TabbedLists;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 89
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/google/android/music/TabbedLists;->mRepAlbumChangeListeners:Ljava/util/List;

    .line 90
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/google/android/music/TabbedLists;->mNoContentListeners:Ljava/util/List;

    .line 91
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/google/android/music/TabbedLists;->mMenuCustomizers:Ljava/util/List;

    .line 93
    const v6, 0x7f04002e

    invoke-virtual {p0, v6}, Lcom/google/android/music/TabbedLists;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/TabbedLists;->mActivityManager:Landroid/app/LocalActivityManager;

    .line 95
    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 96
    .local v1, currentWindow:Landroid/view/Window;
    if-eqz v1, :cond_1

    .line 97
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_1
    const v6, 0x7f0f0081

    invoke-virtual {p0, v6}, Lcom/google/android/music/TabbedLists;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/TabRow;

    iput-object v6, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Lcom/google/android/music/TabRow;

    .line 101
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Lcom/google/android/music/TabRow;

    const v7, 0x7f0c0058

    invoke-virtual {v6, v7}, Lcom/google/android/music/TabRow;->addTab(I)V

    .line 102
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Lcom/google/android/music/TabRow;

    const v7, 0x7f0c0053

    invoke-virtual {v6, v7}, Lcom/google/android/music/TabRow;->addTab(I)V

    .line 103
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Lcom/google/android/music/TabRow;

    const v7, 0x7f0c0054

    invoke-virtual {v6, v7}, Lcom/google/android/music/TabRow;->addTab(I)V

    .line 104
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Lcom/google/android/music/TabRow;

    const v7, 0x7f0c0056

    invoke-virtual {v6, v7}, Lcom/google/android/music/TabRow;->addTab(I)V

    .line 105
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Lcom/google/android/music/TabRow;

    const v7, 0x7f0c0057

    invoke-virtual {v6, v7}, Lcom/google/android/music/TabRow;->addTab(I)V

    .line 106
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Lcom/google/android/music/TabRow;

    const v7, 0x7f0c0055

    invoke-virtual {v6, v7}, Lcom/google/android/music/TabRow;->addTab(I)V

    .line 107
    const v6, 0x7f0f0082

    invoke-virtual {p0, v6}, Lcom/google/android/music/TabbedLists;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/Workspace;

    iput-object v6, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    .line 108
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    invoke-virtual {v6, p0}, Lcom/google/android/music/Workspace;->setScreenSwitchListener(Lcom/google/android/music/Workspace$ScreenSwitchListener;)V

    .line 109
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    iput-object v6, p0, Lcom/google/android/music/TabbedLists;->mContentViewContainer:Landroid/view/ViewGroup;

    .line 111
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    iget-object v7, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Lcom/google/android/music/TabRow;

    invoke-virtual {v6, v7}, Lcom/google/android/music/Workspace;->setTabHolder(Lcom/google/android/music/TabRow;)V

    .line 113
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->builder()Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v2

    .line 115
    .local v2, mapBuilder:Lcom/google/common/collect/ImmutableBiMap$Builder;,"Lcom/google/common/collect/ImmutableBiMap$Builder<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 116
    .local v4, tabIndex:I
    const-class v6, Lcom/google/android/music/RecentBrowserActivity;

    invoke-direct {p0, v6}, Lcom/google/android/music/TabbedLists;->addSubActivity(Ljava/lang/Class;)V

    .line 117
    add-int/lit8 v5, v4, 0x1

    .end local v4           #tabIndex:I
    .local v5, tabIndex:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 119
    const-class v6, Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-direct {p0, v6}, Lcom/google/android/music/TabbedLists;->addSubActivity(Ljava/lang/Class;)V

    .line 120
    add-int/lit8 v4, v5, 0x1

    .end local v5           #tabIndex:I
    .restart local v4       #tabIndex:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 122
    const-class v6, Lcom/google/android/music/AlbumBrowserActivity;

    invoke-direct {p0, v6}, Lcom/google/android/music/TabbedLists;->addSubActivity(Ljava/lang/Class;)V

    .line 123
    add-int/lit8 v5, v4, 0x1

    .end local v4           #tabIndex:I
    .restart local v5       #tabIndex:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 125
    const-class v6, Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {p0, v6}, Lcom/google/android/music/TabbedLists;->addSubActivity(Ljava/lang/Class;)V

    .line 126
    add-int/lit8 v4, v5, 0x1

    .end local v5           #tabIndex:I
    .restart local v4       #tabIndex:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 128
    const-class v6, Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-direct {p0, v6}, Lcom/google/android/music/TabbedLists;->addSubActivity(Ljava/lang/Class;)V

    .line 129
    add-int/lit8 v5, v4, 0x1

    .end local v4           #tabIndex:I
    .restart local v5       #tabIndex:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 131
    const-class v6, Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-direct {p0, v6}, Lcom/google/android/music/TabbedLists;->addSubActivity(Ljava/lang/Class;)V

    .line 132
    add-int/lit8 v4, v5, 0x1

    .end local v5           #tabIndex:I
    .restart local v4       #tabIndex:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 134
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mRepAlbumChangeListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v6, v8, :cond_2

    .line 135
    const-string v6, "TabbedLists"

    const-string v7, "RepAlbumChangeListener not registered"

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_2
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mNoContentListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v6, v8, :cond_3

    .line 138
    const-string v6, "TabbedLists"

    const-string v7, "noContentListener not registered"

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_3
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mMenuCustomizers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v6, v8, :cond_4

    .line 141
    const-string v6, "TabbedLists"

    const-string v7, "menuCustomizer not registered"

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_4
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/TabbedLists;->mTabToActivityManagerView:Lcom/google/common/collect/BiMap;

    .line 145
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    invoke-virtual {v6, v9}, Lcom/google/android/music/Workspace;->setHorizontalFadingEdgeEnabled(Z)V

    .line 146
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    const v7, 0x7f0201ba

    invoke-virtual {v6, v7}, Lcom/google/android/music/Workspace;->setSeparator(I)V

    .line 148
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mTabToActivityManagerView:Lcom/google/common/collect/BiMap;

    invoke-interface {v6}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/TabbedLists;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v7}, Lcom/google/android/music/jumper/MusicPreferences;->getTopLevelDisplayMode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 150
    .local v3, requestedTabIndex:Ljava/lang/Integer;
    if-eqz v3, :cond_5

    .line 151
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    .line 153
    :cond_5
    sget v6, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    if-ltz v6, :cond_6

    sget v6, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    iget-object v7, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    invoke-virtual {v7}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v7

    if-lt v6, v7, :cond_7

    .line 154
    :cond_6
    sput v9, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    .line 157
    :cond_7
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Lcom/google/android/music/TabRow;

    sget v7, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    invoke-virtual {v6, v7}, Lcom/google/android/music/TabRow;->setCurrentTab(I)V

    .line 158
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    sget v7, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    invoke-virtual {v6, v7}, Lcom/google/android/music/Workspace;->setCurrentScreen(I)V

    .line 159
    iget-object v6, p0, Lcom/google/android/music/TabbedLists;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v6}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/music/TopBar$ActionBarController;->hideTopBar()V

    .line 160
    return-void
.end method

.method public onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->findCurrentMenuCustomizer()Lcom/google/android/music/TopBar$MenuCustomizer;

    move-result-object v0

    .line 381
    .local v0, customizer:Lcom/google/android/music/TopBar$MenuCustomizer;
    if-eqz v0, :cond_0

    .line 382
    invoke-interface {v0, p1}, Lcom/google/android/music/TopBar$MenuCustomizer;->onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z

    move-result v1

    .line 384
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    invoke-virtual {v0}, Lcom/google/android/music/Workspace;->getCurrentScreen()I

    move-result v0

    sput v0, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    .line 173
    const-string v0, "activetab"

    sget v1, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    invoke-static {p0, v0, v1}, Lcom/google/android/music/MusicUtils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    .line 175
    :cond_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 176
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 164
    sget-boolean v0, Lcom/google/android/music/TabbedLists;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "TabbedLists"

    const-string v1, "onResume()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 166
    const-string v0, "activetab"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/music/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    .line 167
    return-void
.end method

.method public onScreenSwitch(Landroid/view/View;I)V
    .locals 6
    .parameter "newScreen"
    .parameter "newScreenIndex"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 341
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mTabToActivityManagerView:Lcom/google/common/collect/BiMap;

    if-eqz v1, :cond_0

    .line 343
    iget-object v2, p0, Lcom/google/android/music/TabbedLists;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mTabToActivityManagerView:Lcom/google/common/collect/BiMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setTopLevelDisplayMode(I)V

    .line 345
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mRepAlbumChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mRepAlbumChangeListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/TabbedLists$TabbedAlbumChangeListener;

    if-ne v0, p2, :cond_1

    move v2, v5

    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/music/TabbedLists$TabbedAlbumChangeListener;->setActive(Z)V

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 346
    goto :goto_1

    .line 348
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mNoContentListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 349
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mNoContentListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;

    if-ne v0, p2, :cond_3

    move v2, v5

    :goto_3
    invoke-virtual {v1, v2}, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->setActive(Z)V

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v2, v4

    .line 349
    goto :goto_3

    .line 351
    :cond_4
    return-void
.end method

.method public prepareOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 372
    const-string v1, "TabbedLists"

    const-string v2, "customizeMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->findCurrentMenuCustomizer()Lcom/google/android/music/TopBar$MenuCustomizer;

    move-result-object v0

    .line 374
    .local v0, customizer:Lcom/google/android/music/TopBar$MenuCustomizer;
    if-eqz v0, :cond_0

    .line 375
    invoke-interface {v0, p1}, Lcom/google/android/music/TopBar$MenuCustomizer;->prepareOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V

    .line 377
    :cond_0
    return-void
.end method
