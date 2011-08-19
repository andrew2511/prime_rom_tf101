.class public Lcom/splashtop/remote/DesktopGLActivity;
.super Landroid/app/Activity;
.source "DesktopGLActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/splashtop/remote/DesktopGLActivity$WaitConnectThread;
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

.field private mShowFrameRateText:Z

.field private mSoftkeyboard:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

.field private mSurface:Lcom/splashtop/remote/DesktopGLView;

.field private mTextView:Landroid/widget/TextView;

.field private final timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->bUserTracking:Z

    .line 54
    iput v1, p0, Lcom/splashtop/remote/DesktopGLActivity;->indexflip:I

    .line 55
    iput v1, p0, Lcom/splashtop/remote/DesktopGLActivity;->indexcreate:I

    .line 59
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->timer:Ljava/util/Timer;

    .line 60
    iput-boolean v1, p0, Lcom/splashtop/remote/DesktopGLActivity;->mShowFrameRateText:Z

    .line 66
    iput-boolean v1, p0, Lcom/splashtop/remote/DesktopGLActivity;->isBreak:Z

    .line 68
    new-instance v0, Lcom/splashtop/remote/DesktopGLActivity$1;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/DesktopGLActivity$1;-><init>(Lcom/splashtop/remote/DesktopGLActivity;)V

    iput-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->mHandler:Landroid/os/Handler;

    .line 318
    new-instance v0, Lcom/splashtop/remote/DesktopGLActivity$5;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/DesktopGLActivity$5;-><init>(Lcom/splashtop/remote/DesktopGLActivity;)V

    iput-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/splashtop/remote/DesktopGLActivity;)Lcom/splashtop/remote/DesktopGLView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->mSurface:Lcom/splashtop/remote/DesktopGLView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/splashtop/remote/DesktopGLActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/splashtop/remote/DesktopGLActivity;)Lcom/splashtop/remote/softkeyboard/Softkeyboard;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->mSoftkeyboard:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->isBreak:Z

    .line 314
    const/16 v0, 0xcb

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/DesktopGLActivity;->setResult(I)V

    .line 315
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 316
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 239
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 247
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->mSoftkeyboard:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    invoke-virtual {v0}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->hide()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->mSoftkeyboard:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    invoke-virtual {v0, p1}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->onRotateScreen(Landroid/content/res/Configuration;)V

    .line 252
    sget-boolean v0, Lcom/splashtop/remote/DesktopGLActivity;->bHintChecked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    invoke-virtual {v0}, Lcom/splashtop/remote/dialog/GestureHintDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    invoke-virtual {v0}, Lcom/splashtop/remote/dialog/GestureHintDialog;->dismiss()V

    .line 254
    new-instance v0, Lcom/splashtop/remote/dialog/GestureHintDialog;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/dialog/GestureHintDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    .line 255
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    invoke-virtual {v0}, Lcom/splashtop/remote/dialog/GestureHintDialog;->show()V

    .line 257
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/DesktopGLActivity;->requestWindowFeature(I)Z

    .line 96
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 97
    .local v19, settings:Landroid/content/SharedPreferences;
    const-string v4, "USRTRACK"

    const/4 v5, 0x1

    move-object/from16 v0, v19

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/splashtop/remote/DesktopGLActivity;->bUserTracking:Z

    .line 99
    const-string v4, "AUTOLOCK"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 100
    .local v10, bAutoLock:Z
    if-nez v10, :cond_0

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/splashtop/remote/DesktopGLActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 103
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/splashtop/remote/DesktopGLActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 105
    invoke-static {}, Lcom/splashtop/remote/JNILib;->nativeGetServerInfo()Lcom/splashtop/remote/bean/ServerInfoBean;

    move-result-object v13

    .line 106
    .local v13, info:Lcom/splashtop/remote/bean/ServerInfoBean;
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v17, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "SERVER_VERSION"

    invoke-virtual {v13}, Lcom/splashtop/remote/bean/ServerInfoBean;->getVersion()I

    move-result v5

    invoke-static {v5}, Lcom/splashtop/remote/net/NetworkHelper;->intToIp(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v4, "SERVER_TYPE"

    invoke-virtual {v13}, Lcom/splashtop/remote/bean/ServerInfoBean;->getType()I

    move-result v5

    invoke-static {v5}, Lcom/splashtop/remote/utils/Common;->getServerType(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->bUserTracking:Z

    move v4, v0

    if-eqz v4, :cond_1

    .line 116
    const-string v4, "TRYAUTH-SERVER_VERSION"

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 119
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/splashtop/remote/DesktopGLActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 120
    .local v14, intent:Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 121
    .local v11, bundle:Landroid/os/Bundle;
    const-string v4, "server_name"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 122
    .local v18, server_name:Ljava/lang/String;
    const-string v4, "DVMTest"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/splashtop/remote/DesktopGLActivity;->mShowFrameRateText:Z

    .line 123
    new-instance v4, Lcom/splashtop/remote/DesktopGLView;

    invoke-virtual {v13}, Lcom/splashtop/remote/bean/ServerInfoBean;->getWidth()I

    move-result v5

    invoke-virtual {v13}, Lcom/splashtop/remote/bean/ServerInfoBean;->getHeight()I

    move-result v6

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/splashtop/remote/DesktopGLView;-><init>(Landroid/content/Context;II)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/splashtop/remote/DesktopGLActivity;->mSurface:Lcom/splashtop/remote/DesktopGLView;

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mSurface:Lcom/splashtop/remote/DesktopGLView;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/splashtop/remote/DesktopGLView;->setLongClickable(Z)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mSurface:Lcom/splashtop/remote/DesktopGLView;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/splashtop/remote/DesktopGLView;->setFocusable(Z)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mSurface:Lcom/splashtop/remote/DesktopGLView;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/splashtop/remote/DesktopGLView;->setFocusableInTouchMode(Z)V

    .line 128
    new-instance v4, Landroid/widget/RelativeLayout;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/splashtop/remote/DesktopGLActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mSurface:Lcom/splashtop/remote/DesktopGLView;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/DesktopGLActivity;->setContentView(Landroid/view/View;)V

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/splashtop/remote/DesktopGLActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 133
    .local v12, config:Landroid/content/res/Configuration;
    new-instance v20, Lcom/splashtop/remote/touch/TouchSupport;

    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/splashtop/remote/touch/TouchSupport;-><init>(Landroid/content/Context;I)V

    .line 134
    .local v20, touchSupport:Lcom/splashtop/remote/touch/TouchSupport;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mSurface:Lcom/splashtop/remote/DesktopGLView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/DesktopGLView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    new-instance v4, Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/splashtop/remote/DesktopGLActivity;->mSoftkeyboard:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mSoftkeyboard:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    move-object v4, v0

    invoke-virtual {v13}, Lcom/splashtop/remote/bean/ServerInfoBean;->getType()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->enableHotkey(ILandroid/view/View;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mSoftkeyboard:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    move-object v4, v0

    new-instance v5, Lcom/splashtop/remote/DesktopGLActivity$2;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/splashtop/remote/DesktopGLActivity$2;-><init>(Lcom/splashtop/remote/DesktopGLActivity;)V

    invoke-virtual {v4, v5}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->setOnClickCallback(Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mSurface:Lcom/splashtop/remote/DesktopGLView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mSoftkeyboard:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/splashtop/remote/DesktopGLView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mSurface:Lcom/splashtop/remote/DesktopGLView;

    move-object v4, v0

    new-instance v5, Lcom/splashtop/remote/DesktopGLActivity$3;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/splashtop/remote/DesktopGLActivity$3;-><init>(Lcom/splashtop/remote/DesktopGLActivity;)V

    invoke-virtual {v4, v5}, Lcom/splashtop/remote/DesktopGLView;->setOnKeyDownListener(Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;)V

    .line 160
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v15, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 161
    .local v15, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v15, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 162
    const/16 v4, 0xc

    invoke-virtual {v15, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mSoftkeyboard:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v4, v5, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mShowFrameRateText:Z

    move v4, v0

    if-eqz v4, :cond_2

    .line 177
    new-instance v4, Landroid/widget/TextView;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/splashtop/remote/DesktopGLActivity;->mTextView:Landroid/widget/TextView;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mTextView:Landroid/widget/TextView;

    move-object v4, v0

    const/high16 v5, 0x7f06

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mTextView:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    move-object/from16 v0, v16

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 183
    .local v16, lp_text:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x9

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 184
    const/16 v4, 0xc

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mTextView:Landroid/widget/TextView;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->timer:Ljava/util/Timer;

    move-object v4, v0

    new-instance v5, Lcom/splashtop/remote/DesktopGLActivity$4;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/splashtop/remote/DesktopGLActivity$4;-><init>(Lcom/splashtop/remote/DesktopGLActivity;)V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3e8

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 193
    .end local v16           #lp_text:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const-string v4, "HINTCHECK"

    const/4 v5, 0x1

    move-object/from16 v0, v19

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/splashtop/remote/DesktopGLActivity;->bHintChecked:Z

    .line 194
    sget-boolean v4, Lcom/splashtop/remote/DesktopGLActivity;->bHintChecked:Z

    if-eqz v4, :cond_3

    .line 195
    new-instance v4, Lcom/splashtop/remote/dialog/GestureHintDialog;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/splashtop/remote/dialog/GestureHintDialog;-><init>(Landroid/content/Context;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/splashtop/remote/DesktopGLActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/splashtop/remote/dialog/GestureHintDialog;->show()V

    .line 198
    :cond_3
    new-instance v4, Lcom/splashtop/remote/DesktopGLActivity$WaitConnectThread;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/splashtop/remote/DesktopGLActivity$WaitConnectThread;-><init>(Lcom/splashtop/remote/DesktopGLActivity;)V

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/os/Handler;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/splashtop/remote/DesktopGLActivity$WaitConnectThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 199
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/splashtop/remote/DesktopGLActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 204
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f030010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 205
    const/4 v1, 0x0

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 298
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 299
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    invoke-virtual {v0}, Lcom/splashtop/remote/dialog/GestureHintDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->hintsDialog:Lcom/splashtop/remote/dialog/GestureHintDialog;

    invoke-virtual {v0}, Lcom/splashtop/remote/dialog/GestureHintDialog;->dismiss()V

    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->mShowFrameRateText:Z

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/splashtop/remote/DesktopGLActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 306
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/splashtop/remote/DesktopGLActivity;->setResult(ILandroid/content/Intent;)V

    .line 307
    invoke-virtual {p0}, Lcom/splashtop/remote/DesktopGLActivity;->finish()V

    .line 309
    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 287
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->mSurface:Lcom/splashtop/remote/DesktopGLView;

    invoke-virtual {v0}, Lcom/splashtop/remote/DesktopGLView;->onPause()V

    .line 288
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 293
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->mSurface:Lcom/splashtop/remote/DesktopGLView;

    invoke-virtual {v0}, Lcom/splashtop/remote/DesktopGLView;->onResume()V

    .line 294
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 262
    iget-boolean v1, p0, Lcom/splashtop/remote/DesktopGLActivity;->bUserTracking:Z

    if-eqz v1, :cond_0

    .line 264
    invoke-static {}, Lcom/splashtop/remote/utils/Common;->getFlurryKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 266
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 267
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "LICENSE_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v1, "SHOW_HOTKEY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v1, "HIDE_HOTKEY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/splashtop/remote/DesktopGLActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/splashtop/remote/DesktopGLActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 277
    iget-boolean v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->bUserTracking:Z

    if-eqz v0, :cond_0

    .line 279
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/DesktopGLActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 282
    return-void
.end method
