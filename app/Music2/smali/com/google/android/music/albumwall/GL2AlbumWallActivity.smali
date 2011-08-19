.class public Lcom/google/android/music/albumwall/GL2AlbumWallActivity;
.super Landroid/app/Activity;
.source "GL2AlbumWallActivity.java"

# interfaces
.implements Lcom/google/android/music/TopBar$MenuCustomizer;
.implements Lcom/google/android/music/BottomBarChangeListener;
.implements Lcom/google/android/music/RetrievableResultActivity;


# static fields
.field public static final EXTRA_ALBUM_ARTIST_ID:Ljava/lang/String; = "albumArtistId"

.field public static final EXTRA_DISPLAY_MODE:Ljava/lang/String; = "displayMode"

.field public static final EXTRA_SORTABLE_ALBUM_ARTIST_NAME:Ljava/lang/String; = "sortableAlbumArtistName"

.field public static final MODE_ALBUMS:I = 0x0

.field public static final MODE_ARTISTS:I = 0x2

.field public static final MODE_GENRES:I = 0x3

.field public static final MODE_PLAYLISTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GL2AlbumWallActivity"


# instance fields
.field private mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

.field private mActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mAppState:Lcom/google/android/music/activitymanagement/AppState;

.field private mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

.field private mMode:I

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

.field private mResultCode:I

.field private mResultIntent:Landroid/content/Intent;

.field private mView:Lcom/google/android/music/albumwall/AlbumWallView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static final isClusteredMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 217
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isToggleAvailable(I)Z
    .locals 3
    .parameter "mode"

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, modeAvailable:I
    packed-switch p1, :pswitch_data_0

    .line 209
    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 193
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 195
    goto :goto_0

    .line 197
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 199
    goto :goto_0

    .line 201
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 203
    goto :goto_0

    .line 205
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    .line 209
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public createOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 222
    return-void
.end method

.method public final getMode()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mResultCode:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public onBottomBarChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 328
    iget-object v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iget-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onManageMusicModeStateChanged(Lcom/google/android/music/OfflineMusicManager;)V

    .line 331
    iget-object v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v0

    .line 332
    .local v0, t:Lcom/google/android/opengl/glview/Transformer;
    if-eqz v0, :cond_0

    .line 333
    iget-object v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getBottomBarHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v3, v3, v1}, Lcom/google/android/opengl/glview/Transformer;->setMargins(FFFF)V

    .line 334
    iget-object v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestFullLayout()V

    .line 336
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "icicle"

    .prologue
    .line 66
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 69
    .local v14, intent:Landroid/content/Intent;
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 70
    if-eqz p1, :cond_4

    .line 71
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 75
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    move v4, v0

    invoke-static {v4}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isClusteredMode(I)Z

    move-result v15

    .line 76
    .local v15, isClustered:Z
    new-instance v13, Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v0, v13

    move-object/from16 v1, p0

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;-><init>(Landroid/content/Context;Z)V

    .line 78
    .local v13, config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    const/16 v19, 0x0

    .line 79
    .local v19, surfacePixelFormat:I
    invoke-static {}, Lcom/google/android/music/utils/AlbumArtUtils;->getPreferredConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_0

    .line 80
    const/16 v19, 0x2

    .line 82
    :cond_0
    new-instance v4, Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallView;-><init>(Landroid/content/Context;I)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    .line 83
    new-instance v4, Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    move-object v5, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;-><init>(Landroid/content/Context;Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallConfig;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/android/music/albumwall/AlbumWallView;->setRenderer(Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/music/albumwall/AlbumWallView;->setRenderMode(I)V

    .line 87
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 89
    new-instance v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    move-object v7, v0

    invoke-static/range {p0 .. p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object v9, v0

    move-object/from16 v6, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;-><init>(ILcom/google/android/music/albumwall/GL2AlbumWallActivity;Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/activitymanagement/AppState;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    move-object v4, v0

    const-string v5, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->setCreatingShortcut(Z)V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/android/music/albumwall/AlbumWallView;->setCallback(Lcom/google/android/music/albumwall/AlbumWallCallback;)V

    .line 96
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/music/activitymanagement/AppState;->setUseSystemBackground(Z)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/music/activitymanagement/AppState;->setUseFullScreen(Z)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/music/TopBar$ActionBarController;->setMenuCustomizer(Lcom/google/android/music/TopBar$MenuCustomizer;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    move v5, v0

    invoke-virtual {v4, v5}, Lcom/google/android/music/jumper/MusicPreferences;->getShowLabels(I)Z

    move-result v17

    .line 103
    .local v17, showLabels:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setLabelsVisible(Z)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v4

    if-nez v4, :cond_1

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/music/activitymanagement/AppState;->setManageMusicBarEnabled(Z)V

    .line 112
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isTopLevel(Lcom/google/android/music/activitymanagement/AppState;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/music/TopBar$ActionBarController;->hideTitle()V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/music/TopBar$ActionBarController;->showDisplayModes()V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/music/TopBar$ActionBarController;->showTopBar()V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isToggleAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/music/TopBar$ActionBarController;->showToggleButton()V

    .line 124
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/music/TopBar$ActionBarController;->showNewPlaylistButton()V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/music/activitymanagement/AppState;->setPlaylistsFound(Z)V

    .line 133
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 134
    const-string v4, "albumArtistId"

    const-wide/16 v5, -0x1

    invoke-virtual {v14, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .line 135
    .local v11, artistId:J
    const-string v4, "sortableAlbumArtistName"

    invoke-virtual {v14, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 136
    .local v18, sortableAlbumArtistName:Ljava/lang/String;
    const-wide/16 v4, -0x1

    cmp-long v4, v11, v4

    if-eqz v4, :cond_3

    .line 138
    new-instance v16, Lcom/google/android/music/albumwall/MusicPile;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/music/albumwall/MusicPile;-><init>()V

    .line 139
    .local v16, pile:Lcom/google/android/music/albumwall/MusicPile;
    move-object/from16 v0, v16

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicPile;->setId(J)V

    .line 140
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    move v4, v0

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicPile;->setMode(I)V

    .line 141
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicPile;->setSortKey(Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getAlbumArtistIndexForPile(Lcom/google/android/music/albumwall/MusicPile;)I

    move-result v10

    .line 143
    .local v10, albumIndex:I
    if-ltz v10, :cond_3

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setExpandAlbumForIndex(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)V

    .line 149
    .end local v10           #albumIndex:I
    .end local v11           #artistId:J
    .end local v16           #pile:Lcom/google/android/music/albumwall/MusicPile;
    .end local v18           #sortableAlbumArtistName:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->setContentView(Landroid/view/View;)V

    .line 150
    return-void

    .line 73
    .end local v13           #config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    .end local v15           #isClustered:Z
    .end local v17           #showLabels:Z
    .end local v19           #surfacePixelFormat:I
    :cond_4
    const-string v4, "displayMode"

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    goto/16 :goto_0

    .line 121
    .restart local v13       #config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    .restart local v15       #isClustered:Z
    .restart local v17       #showLabels:Z
    .restart local v19       #surfacePixelFormat:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/music/TopBar$ActionBarController;->hideToggleButton()V

    goto/16 :goto_1

    .line 129
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/music/TopBar$ActionBarController;->hideNewPlaylistButton()V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/AppState;->asyncCheckForMusic(Landroid/content/Context;)V

    goto/16 :goto_2
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "id"
    .parameter "info"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 267
    const/4 v1, 0x0

    .line 268
    .local v1, dialog:Landroid/app/AlertDialog;
    const/16 v5, 0x64

    if-ne p1, v5, :cond_3

    .line 269
    if-eqz p2, :cond_2

    .line 270
    const-string v5, "songlist"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, songList:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 273
    new-instance v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;

    invoke-direct {v0, p0, v4}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;-><init>(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;Ljava/lang/String;)V

    .line 293
    .local v0, callback:Lcom/google/android/music/CreatePlaylist$Callback;
    new-instance v1, Lcom/google/android/music/CreatePlaylist;

    .end local v1           #dialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getParent()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v0}, Lcom/google/android/music/CreatePlaylist;-><init>(Landroid/content/Context;ZLcom/google/android/music/CreatePlaylist$Callback;)V

    .line 301
    .end local v0           #callback:Lcom/google/android/music/CreatePlaylist$Callback;
    .end local v4           #songList:Ljava/lang/String;
    .restart local v1       #dialog:Landroid/app/AlertDialog;
    :goto_0
    new-instance v5, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$2;

    invoke-direct {v5, p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$2;-><init>(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 323
    :cond_0
    :goto_1
    return-object v1

    .line 295
    .restart local v4       #songList:Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/google/android/music/CreatePlaylist;

    .end local v1           #dialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getParent()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5, v6, v7}, Lcom/google/android/music/CreatePlaylist;-><init>(Landroid/content/Context;ZLcom/google/android/music/CreatePlaylist$Callback;)V

    .restart local v1       #dialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 298
    .end local v4           #songList:Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/google/android/music/CreatePlaylist;

    .end local v1           #dialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getParent()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5, v6, v7}, Lcom/google/android/music/CreatePlaylist;-><init>(Landroid/content/Context;ZLcom/google/android/music/CreatePlaylist$Callback;)V

    .restart local v1       #dialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 310
    :cond_3
    const/16 v5, 0x65

    if-ne p1, v5, :cond_0

    .line 311
    const-string v5, "playlistId"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 312
    .local v2, playlistId:J
    new-instance v1, Lcom/google/android/music/RenamePlaylist;

    .end local v1           #dialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getParent()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5, v2, v3}, Lcom/google/android/music/RenamePlaylist;-><init>(Landroid/content/Context;J)V

    .line 313
    .restart local v1       #dialog:Landroid/app/AlertDialog;
    new-instance v5, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$3;

    invoke-direct {v5, p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$3;-><init>(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    iget-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getLabelsVisible()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->setShowLabels(IZ)V

    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 180
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->onDestroy()V

    .line 181
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onDestroy()V

    .line 182
    return-void
.end method

.method public onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 245
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 259
    const-string v0, "GL2AlbumWallActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMusicMenuItemSelected: unexpected item id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    return v3

    .line 247
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startManageMusicMode()V

    goto :goto_0

    .line 250
    :sswitch_1
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->showDialog(I)V

    goto :goto_0

    .line 253
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->setLabelsVisible(Z)V

    goto :goto_0

    .line 256
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0, v3}, Lcom/google/android/music/albumwall/AlbumWallView;->setLabelsVisible(Z)V

    goto :goto_0

    .line 245
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x14 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 154
    invoke-static {p0, p1}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;Landroid/content/Intent;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 155
    const-string v0, "displayMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    .line 156
    const-string v0, "GL2AlbumWallActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->setMode(I)V

    .line 158
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->setCreatingShortcut(Z)V

    .line 159
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 164
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->onPause()V

    .line 166
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "displayMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    .line 187
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->setAllowOpenningItem(Z)V

    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 172
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->onResume()V

    .line 174
    return-void
.end method

.method public prepareOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 225
    iget-object v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallView;->getLabelsVisible()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    if-nez v1, :cond_0

    .line 226
    const/16 v1, 0x19

    invoke-virtual {p1, v1}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 227
    .local v0, item:Lcom/google/android/music/menu/MusicMenuItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 229
    .end local v0           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallView;->getLabelsVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    if-nez v1, :cond_1

    .line 230
    const/16 v1, 0x18

    invoke-virtual {p1, v1}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 231
    .restart local v0       #item:Lcom/google/android/music/menu/MusicMenuItem;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 233
    .end local v0           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_1
    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 234
    :cond_2
    const/16 v1, 0x14

    invoke-virtual {p1, v1}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 235
    .restart local v0       #item:Lcom/google/android/music/menu/MusicMenuItem;
    if-eqz v0, :cond_3

    .line 236
    invoke-virtual {v0, v3}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 238
    .end local v0           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_3
    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    if-ne v1, v3, :cond_4

    .line 239
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 240
    .restart local v0       #item:Lcom/google/android/music/menu/MusicMenuItem;
    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 242
    .end local v0           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_4
    return-void
.end method

.method public setResultData(ILandroid/content/Intent;)V
    .locals 0
    .parameter "code"
    .parameter "data"

    .prologue
    .line 354
    iput p1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mResultCode:I

    .line 355
    iput-object p2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mResultIntent:Landroid/content/Intent;

    .line 356
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->finish()V

    .line 357
    return-void
.end method

.method public wasStartedForResult()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isCreatingShortcut()Z

    move-result v0

    return v0
.end method
