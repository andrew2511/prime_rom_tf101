.class public Lcom/splashtop/remote/DesktopActivity;
.super Landroid/app/Activity;
.source "DesktopActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/splashtop/remote/DesktopActivity$WaitConnectThread;
    }
.end annotation


# static fields
.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "IRISView"

.field public static bHintChecked:Z


# instance fields
.field private bUserTracking:Z

.field private hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

.field public indexcreate:I

.field public indexflip:I

.field public isBreak:Z

.field mHandler:Landroid/os/Handler;

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field protected mReceiver:Landroid/content/BroadcastReceiver;

.field private mScaleChanged:Z

.field private mShowFrameRateText:Z

.field private mSoftkeyboard:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

.field private mSurface:Lcom/splashtop/remote/DesktopView;

.field private mTextView:Landroid/widget/TextView;

.field mhotKeyLayout:Landroid/widget/LinearLayout;

.field private final timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/splashtop/remote/DesktopActivity;->bUserTracking:Z

    .line 58
    iput v1, p0, Lcom/splashtop/remote/DesktopActivity;->indexflip:I

    .line 59
    iput v1, p0, Lcom/splashtop/remote/DesktopActivity;->indexcreate:I

    .line 66
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/DesktopActivity;->timer:Ljava/util/Timer;

    .line 67
    iput-boolean v1, p0, Lcom/splashtop/remote/DesktopActivity;->mShowFrameRateText:Z

    .line 69
    iput-boolean v1, p0, Lcom/splashtop/remote/DesktopActivity;->mScaleChanged:Z

    .line 73
    iput-boolean v1, p0, Lcom/splashtop/remote/DesktopActivity;->isBreak:Z

    .line 75
    new-instance v0, Lcom/splashtop/remote/DesktopActivity$1;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/DesktopActivity$1;-><init>(Lcom/splashtop/remote/DesktopActivity;)V

    iput-object v0, p0, Lcom/splashtop/remote/DesktopActivity;->mHandler:Landroid/os/Handler;

    .line 337
    new-instance v0, Lcom/splashtop/remote/DesktopActivity$5;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/DesktopActivity$5;-><init>(Lcom/splashtop/remote/DesktopActivity;)V

    iput-object v0, p0, Lcom/splashtop/remote/DesktopActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/splashtop/remote/DesktopActivity;)Lcom/splashtop/remote/DesktopView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity;->mSurface:Lcom/splashtop/remote/DesktopView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/splashtop/remote/DesktopActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/splashtop/remote/DesktopActivity;)Lcom/splashtop/remote/softkeyboard/Softkeyboard;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity;->mSoftkeyboard:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/splashtop/remote/DesktopActivity;->isBreak:Z

    .line 259
    const/16 v0, 0xcb

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/DesktopActivity;->setResult(I)V

    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 261
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 296
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 304
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity;->mSoftkeyboard:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    invoke-virtual {v0}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->hide()V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity;->mSurface:Lcom/splashtop/remote/DesktopView;

    invoke-virtual {v0, p1}, Lcom/splashtop/remote/DesktopView;->setConfig(Landroid/content/res/Configuration;)V

    .line 309
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity;->mSoftkeyboard:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    invoke-virtual {v0, p1}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->onRotateScreen(Landroid/content/res/Configuration;)V

    .line 310
    sget-boolean v0, Lcom/splashtop/remote/DesktopActivity;->bHintChecked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    invoke-virtual {v0}, Lcom/splashtop/remote/dialog/GestureHintDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    invoke-virtual {v0}, Lcom/splashtop/remote/dialog/GestureHintDialog;->dismiss()V

    .line 312
    new-instance v0, Lcom/splashtop/remote/dialog/GestureHintDialog;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/dialog/GestureHintDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/splashtop/remote/DesktopActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    .line 313
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    invoke-virtual {v0}, Lcom/splashtop/remote/dialog/GestureHintDialog;->show()V

    .line 315
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/DesktopActivity;->requestWindowFeature(I)Z

    .line 104
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 105
    .local v20, settings:Landroid/content/SharedPreferences;
    const-string v4, "USRTRACK"

    const/4 v5, 0x1

    move-object/from16 v0, v20

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/splashtop/remote/DesktopActivity;->bUserTracking:Z

    .line 107
    const-string v4, "AUTOLOCK"

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 108
    .local v10, bAutoLock:Z
    if-nez v10, :cond_0

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/splashtop/remote/DesktopActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 111
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/splashtop/remote/DesktopActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 113
    invoke-static {}, Lcom/splashtop/remote/JNILib;->nativeGetServerInfo()Lcom/splashtop/remote/bean/ServerInfoBean;

    move-result-object v14

    .line 114
    .local v14, info:Lcom/splashtop/remote/bean/ServerInfoBean;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v18, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "SERVER_VERSION"

    invoke-virtual {v14}, Lcom/splashtop/remote/bean/ServerInfoBean;->getVersion()I

    move-result v5

    invoke-static {v5}, Lcom/splashtop/remote/net/NetworkHelper;->intToIp(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v4, "SERVER_TYPE"

    invoke-virtual {v14}, Lcom/splashtop/remote/bean/ServerInfoBean;->getType()I

    move-result v5

    invoke-static {v5}, Lcom/splashtop/remote/utils/Common;->getServerType(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/splashtop/remote/DesktopActivity;->bUserTracking:Z

    move v4, v0

    if-eqz v4, :cond_1

    .line 124
    const-string v4, "TRYAUTH-SERVER_VERSION"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 127
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/splashtop/remote/DesktopActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 128
    .local v15, intent:Landroid/content/Intent;
    invoke-virtual {v15}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 129
    .local v11, bundle:Landroid/os/Bundle;
    const-string v4, "server_name"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 130
    .local v19, server_name:Ljava/lang/String;
    const-string v4, "DVMTest"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/splashtop/remote/DesktopActivity;->mShowFrameRateText:Z

    .line 131
    new-instance v4, Landroid/widget/RelativeLayout;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/splashtop/remote/DesktopActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/DesktopActivity;->setContentView(Landroid/view/View;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/splashtop/remote/DesktopActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 136
    .local v12, config:Landroid/content/res/Configuration;
    :try_start_0
    new-instance v4, Lcom/splashtop/remote/DesktopView;

    invoke-virtual {v14}, Lcom/splashtop/remote/bean/ServerInfoBean;->getWidth()I

    move-result v5

    invoke-virtual {v14}, Lcom/splashtop/remote/bean/ServerInfoBean;->getHeight()I

    move-result v6

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/splashtop/remote/DesktopView;-><init>(Landroid/content/Context;II)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/splashtop/remote/DesktopActivity;->mSurface:Lcom/splashtop/remote/DesktopView;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mSurface:Lcom/splashtop/remote/DesktopView;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mSurface:Lcom/splashtop/remote/DesktopView;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/splashtop/remote/DesktopView;->setLongClickable(Z)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mSurface:Lcom/splashtop/remote/DesktopView;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/splashtop/remote/DesktopView;->setFocusable(Z)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mSurface:Lcom/splashtop/remote/DesktopView;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/splashtop/remote/DesktopView;->setFocusableInTouchMode(Z)V

    .line 149
    new-instance v21, Lcom/splashtop/remote/touch/TouchSupport;

    const/4 v4, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/splashtop/remote/touch/TouchSupport;-><init>(Landroid/content/Context;I)V

    .line 150
    .local v21, touchSupport:Lcom/splashtop/remote/touch/TouchSupport;
    invoke-virtual/range {v21 .. v21}, Lcom/splashtop/remote/touch/TouchSupport;->getmZoomControl()Lcom/splashtop/remote/zoom/DynamicZoomControl;

    move-result-object v22

    .line 151
    .local v22, zoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mSurface:Lcom/splashtop/remote/DesktopView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/DesktopView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mSurface:Lcom/splashtop/remote/DesktopView;

    move-object v4, v0

    invoke-virtual/range {v22 .. v22}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->getZoomState()Lcom/splashtop/remote/zoom/ZoomState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/splashtop/remote/DesktopView;->setZoomState(Lcom/splashtop/remote/zoom/ZoomState;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mSurface:Lcom/splashtop/remote/DesktopView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/DesktopView;->setZoomControl(Lcom/splashtop/remote/zoom/DynamicZoomControl;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mSurface:Lcom/splashtop/remote/DesktopView;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/splashtop/remote/DesktopView;->getAspectQuotient()Lcom/splashtop/remote/zoom/AspectQuotient;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->setAspectQuotient(Lcom/splashtop/remote/zoom/AspectQuotient;)V

    .line 158
    new-instance v4, Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/splashtop/remote/DesktopActivity;->mSoftkeyboard:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mSoftkeyboard:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    move-object v4, v0

    invoke-virtual {v14}, Lcom/splashtop/remote/bean/ServerInfoBean;->getType()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->enableHotkey(ILandroid/view/View;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mSoftkeyboard:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    move-object v4, v0

    new-instance v5, Lcom/splashtop/remote/DesktopActivity$2;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/splashtop/remote/DesktopActivity$2;-><init>(Lcom/splashtop/remote/DesktopActivity;)V

    invoke-virtual {v4, v5}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->setOnClickCallback(Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mSurface:Lcom/splashtop/remote/DesktopView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mSoftkeyboard:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/splashtop/remote/DesktopView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mSurface:Lcom/splashtop/remote/DesktopView;

    move-object v4, v0

    new-instance v5, Lcom/splashtop/remote/DesktopActivity$3;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/splashtop/remote/DesktopActivity$3;-><init>(Lcom/splashtop/remote/DesktopActivity;)V

    invoke-virtual {v4, v5}, Lcom/splashtop/remote/DesktopView;->setOnKeyDownListener(Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;)V

    .line 181
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    move-object/from16 v0, v16

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 182
    .local v16, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 183
    const/16 v4, 0xc

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mSoftkeyboard:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/splashtop/remote/DesktopActivity;->mShowFrameRateText:Z

    move v4, v0

    if-eqz v4, :cond_2

    .line 188
    new-instance v4, Landroid/widget/TextView;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/splashtop/remote/DesktopActivity;->mTextView:Landroid/widget/TextView;

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mTextView:Landroid/widget/TextView;

    move-object v4, v0

    const/high16 v5, 0x7f06

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mTextView:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mTextView:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 192
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    move-object/from16 v0, v17

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 193
    .local v17, lp_text:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x9

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 194
    const/16 v4, 0xc

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mTextView:Landroid/widget/TextView;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->timer:Ljava/util/Timer;

    move-object v4, v0

    new-instance v5, Lcom/splashtop/remote/DesktopActivity$4;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/splashtop/remote/DesktopActivity$4;-><init>(Lcom/splashtop/remote/DesktopActivity;)V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3e8

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 204
    .end local v17           #lp_text:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mSurface:Lcom/splashtop/remote/DesktopView;

    move-object v4, v0

    invoke-virtual {v4, v12}, Lcom/splashtop/remote/DesktopView;->setConfig(Landroid/content/res/Configuration;)V

    .line 206
    const-string v4, "HINTCHECK"

    const/4 v5, 0x1

    move-object/from16 v0, v20

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/splashtop/remote/DesktopActivity;->bHintChecked:Z

    .line 207
    sget-boolean v4, Lcom/splashtop/remote/DesktopActivity;->bHintChecked:Z

    if-eqz v4, :cond_3

    .line 208
    new-instance v4, Lcom/splashtop/remote/dialog/GestureHintDialog;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/splashtop/remote/dialog/GestureHintDialog;-><init>(Landroid/content/Context;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/splashtop/remote/DesktopActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/splashtop/remote/dialog/GestureHintDialog;->show()V

    .line 211
    :cond_3
    new-instance v4, Lcom/splashtop/remote/DesktopActivity$WaitConnectThread;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/splashtop/remote/DesktopActivity$WaitConnectThread;-><init>(Lcom/splashtop/remote/DesktopActivity;)V

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/os/Handler;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopActivity;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/splashtop/remote/DesktopActivity$WaitConnectThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    .end local v16           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v21           #touchSupport:Lcom/splashtop/remote/touch/TouchSupport;
    .end local v22           #zoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v4

    move-object v13, v4

    .line 138
    .local v13, ex:Ljava/lang/OutOfMemoryError;
    const-string v4, "IRISView"

    const-string v5, "DesktopActivity::onCreate DesktopView create out of memory"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v4, 0x2

    const v5, 0x7f070047

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/DesktopActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/splashtop/remote/utils/MessageBox;->show(ILandroid/content/Context;Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/splashtop/remote/DesktopActivity;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/splashtop/remote/DesktopActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 320
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f030010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 321
    const/4 v1, 0x0

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 244
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    invoke-virtual {v0}, Lcom/splashtop/remote/dialog/GestureHintDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    invoke-virtual {v0}, Lcom/splashtop/remote/dialog/GestureHintDialog;->dismiss()V

    .line 247
    :cond_0
    iget-boolean v0, p0, Lcom/splashtop/remote/DesktopActivity;->mShowFrameRateText:Z

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/splashtop/remote/DesktopActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 251
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/splashtop/remote/DesktopActivity;->setResult(ILandroid/content/Intent;)V

    .line 252
    invoke-virtual {p0}, Lcom/splashtop/remote/DesktopActivity;->finish()V

    .line 254
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 326
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 334
    :goto_0
    return v1

    .line 328
    :pswitch_0
    iget-boolean v0, p0, Lcom/splashtop/remote/DesktopActivity;->mScaleChanged:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/splashtop/remote/DesktopActivity;->mScaleChanged:Z

    .line 329
    iget-boolean v0, p0, Lcom/splashtop/remote/DesktopActivity;->mScaleChanged:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_2
    invoke-static {v0}, Lcom/splashtop/remote/JNILib;->nativeChangeScreenMode(I)V

    goto :goto_0

    .line 328
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 329
    goto :goto_2

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x7f09002e
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 219
    iget-boolean v1, p0, Lcom/splashtop/remote/DesktopActivity;->bUserTracking:Z

    if-eqz v1, :cond_0

    .line 221
    invoke-static {}, Lcom/splashtop/remote/utils/Common;->getFlurryKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 224
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "LICENSE_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v1, "SHOW_HOTKEY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v1, "HIDE_HOTKEY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/splashtop/remote/DesktopActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/splashtop/remote/DesktopActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 234
    iget-boolean v0, p0, Lcom/splashtop/remote/DesktopActivity;->bUserTracking:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/DesktopActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    return-void
.end method
